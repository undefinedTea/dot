#!/usr/bin/env bash

xrandr --output eDP-1 --mode 2560x1440 --rate 60 &
xrandr --output DP-5 --auto --mode 3440x1440 --rate 120 &

feh --no-fehbg --bg-fill /home/thomas_janhonen/asset/desktop.jpg &

picom --fading &

while true; do
  #>/dev/null 2>&1 redirect error and success
  dwm >/dev/null 2>&1
done
eval $(ssh-agent) dwm
