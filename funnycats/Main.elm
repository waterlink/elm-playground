module Main where

import FunnyCats
import Effects exposing (Never)
import StartApp
import Task

app =
  StartApp.start
    { init = FunnyCats.init "funny cats"
    , update = FunnyCats.update
    , view = FunnyCats.view
    , inputs = []
    }

main = app.html

port tasks : Signal (Task.Task Never ())
port tasks = app.tasks
