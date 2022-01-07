; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_shtex_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_shtex_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"init_shtex_capture: failed to open shared handle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_shtex_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_shtex_capture(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %4 = call i32 (...) @obs_enter_graphics()
  %5 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %6 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @gs_texture_destroy(i32 %7)
  %9 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %10 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gs_texture_open_shared(i32 %13)
  %15 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %16 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = call i32 (...) @obs_leave_graphics()
  %18 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %19 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @gs_texture_open_shared(i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
