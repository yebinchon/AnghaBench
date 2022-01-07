; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_setup_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_setup_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, float, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@EVENT_CAPTURE_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*, i32)* @setup_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_window(%struct.game_capture* %0, i32 %1) #0 {
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 6
  %10 = call i32 @GetWindowThreadProcessId(i32 %7, i64* %9)
  %11 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %12 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %17 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %18 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @open_process(i32 %16, i32 0, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @is_app(i64 %24)
  %26 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %27 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %29 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @get_app_sid(i64 %33)
  %35 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %36 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %23
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @CloseHandle(i64 %38)
  br label %40

40:                                               ; preds = %37, %15
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %43 = load i32, i32* @EVENT_CAPTURE_RESTART, align 4
  %44 = call i64 @open_event_gc(%struct.game_capture* %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %49 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %54 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %59 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call float @hook_rate_to_float(i32 %61)
  %63 = fmul float 3.000000e+00, %62
  %64 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %65 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %64, i32 0, i32 1
  store float %63, float* %65, align 4
  %66 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %67 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %72

68:                                               ; preds = %52
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %71 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %57
  ret void
}

declare dso_local i32 @GetWindowThreadProcessId(i32, i64*) #1

declare dso_local i64 @open_process(i32, i32, i64) #1

declare dso_local i32 @is_app(i64) #1

declare dso_local i32 @get_app_sid(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @open_event_gc(%struct.game_capture*, i32) #1

declare dso_local float @hook_rate_to_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
