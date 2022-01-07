; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @game_capture_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.game_capture*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.game_capture*
  store %struct.game_capture* %5, %struct.game_capture** %3, align 8
  %6 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %7 = call i32 @stop_capture(%struct.game_capture* %6)
  %8 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %14 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @obs_hotkey_pair_unregister(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32 (...) @obs_enter_graphics()
  %19 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 4
  %21 = call i32 @cursor_data_free(i32* %20)
  %22 = call i32 (...) @obs_leave_graphics()
  %23 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %24 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %23, i32 0, i32 3
  %25 = call i32 @dstr_free(i32* %24)
  %26 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %27 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %26, i32 0, i32 2
  %28 = call i32 @dstr_free(i32* %27)
  %29 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %30 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %29, i32 0, i32 1
  %31 = call i32 @dstr_free(i32* %30)
  %32 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %33 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %32, i32 0, i32 0
  %34 = call i32 @free_config(i32* %33)
  %35 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %36 = call i32 @bfree(%struct.game_capture* %35)
  ret void
}

declare dso_local i32 @stop_capture(%struct.game_capture*) #1

declare dso_local i32 @obs_hotkey_pair_unregister(i64) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @cursor_data_free(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @free_config(i32*) #1

declare dso_local i32 @bfree(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
