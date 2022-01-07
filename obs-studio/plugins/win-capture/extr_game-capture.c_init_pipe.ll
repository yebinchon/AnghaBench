; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_pipe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@PIPE_NAME = common dso_local global i8* null, align 8
@pipe_log = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"init_pipe: failed to start pipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pipe(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca [64 x i8], align 16
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %6 = load i8*, i8** @PIPE_NAME, align 8
  %7 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %8 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %9)
  %11 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %12 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %11, i32 0, i32 0
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* @pipe_log, align 4
  %15 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %16 = call i32 @ipc_pipe_server_start(i32* %12, i8* %13, i32 %14, %struct.game_capture* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @ipc_pipe_server_start(i32*, i8*, i32, %struct.game_capture*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
