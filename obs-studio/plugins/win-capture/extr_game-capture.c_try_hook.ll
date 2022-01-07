; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_try_hook.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_try_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i64, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAPTURE_MODE_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"error acquiring, failed to get window thread/process ids: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @try_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_hook(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  %3 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %4 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CAPTURE_MODE_ANY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %11 = call i32 @get_fullscreen_window(%struct.game_capture* %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %14 = call i32 @get_selected_window(%struct.game_capture* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %17 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %22 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %25 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %24, i32 0, i32 0
  %26 = call i32 @GetWindowThreadProcessId(i64 %23, i64* %25)
  %27 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %28 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %30 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (...) @GetCurrentProcessId()
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %67

35:                                               ; preds = %20
  %36 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %37 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %42 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %67

46:                                               ; preds = %40, %35
  %47 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %48 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 @warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %55 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %58 = call i32 @init_hook(%struct.game_capture* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %62 = call i32 @stop_capture(%struct.game_capture* %61)
  br label %63

63:                                               ; preds = %60, %56
  br label %67

64:                                               ; preds = %15
  %65 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %66 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %65, i32 0, i32 2
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %34, %45, %51, %64, %63
  ret void
}

declare dso_local i32 @get_fullscreen_window(%struct.game_capture*) #1

declare dso_local i32 @get_selected_window(%struct.game_capture*) #1

declare dso_local i32 @GetWindowThreadProcessId(i64, i64*) #1

declare dso_local i64 @GetCurrentProcessId(...) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @init_hook(%struct.game_capture*) #1

declare dso_local i32 @stop_capture(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
