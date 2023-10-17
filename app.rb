require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:giraffe/:zebra") do
  @num_dice = params.fetch("giraffe").to_i

  @sides = params.fetch("zebra").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
