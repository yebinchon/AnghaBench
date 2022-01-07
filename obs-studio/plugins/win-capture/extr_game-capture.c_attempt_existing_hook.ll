; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_attempt_existing_hook.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_attempt_existing_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVENT_CAPTURE_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"existing hook found, signaling process: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @attempt_existing_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attempt_existing_hook(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %4 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %5 = load i32, i32* @EVENT_CAPTURE_RESTART, align 4
  %6 = call i64 @open_event_gc(%struct.game_capture* %4, i32 %5)
  %7 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %8 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %10 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %15 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @SetEvent(i64 %21)
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @open_event_gc(%struct.game_capture*, i32) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @SetEvent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
