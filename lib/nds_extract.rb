$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  directors_database.each{|director| result[director[:name]] = director[:movies].reduce(0){|sum, movie| sum + movie[:worldwide_gross]}}
end
