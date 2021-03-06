require_relative 'planet'
require_relative 'solar_system'

# Wave 3 Driver Code
def main
  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, '149.6 mil', 'Only planet known to support life')
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'red', 6.39e23, '227.9 mil', 'Second smallest planet in the solar system')
  solar_system.add_planet(mars)

  venus = Planet.new('Venus', 'red-brown', 4.867e24, '108.2 mil', 'Second brightest object in the night sky')
  solar_system.add_planet(venus)


  options = ["add planet", "planet details", "list planets", "exit"]

  puts "What would you like to do?"
  puts "Please choose from the following options:"
  puts options
  command = gets.chomp.downcase

  while options.include? command
    case command
    when "add planet"
      puts solar_system.new_planet
    when "planet details"
      puts solar_system.planet_details.summary
    when "list planets"
      puts solar_system.list_planets
    when "exit"
      exit
    end

    puts "What would you like to do next?"
    command = gets.chomp.downcase
  end
end

main
# Wave 1 & 2 Driver Code
# def main
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   puts earth.name
#   puts earth.color
#   puts earth.summary
#
#   mars = Planet.new('Mars', 'red', 6.39e23, 227.9, 'Fun fact about Mars')
#   puts mars.name
#   puts mars.color
#   puts mars.summary
#
#   solar_system = SolarSystem.new('Sun')
#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
#   list = solar_system.list_planets
#   puts list
#
#   found_planet = solar_system.find_planet_by_name("Earth")
#   puts found_planet.summary
#
# end
#
# main
