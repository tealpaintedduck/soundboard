require 'ruby2d'

set title: "Soundboard", background: "red"

new_track_button = Rectangle.new(
  x: 125, y: 250,
  width: 200, height: 150,
  color: 'navy',
  z: 20
)

on :mouse_up do |event|
  return unless event.button == :left

  start_new_track(new_track_button) if new_track_button.contains?(event.x, event.y)
end

def start_new_track(new_track_button)
  new_track_button.remove
end

show
