; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_get_fullscreen_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_get_fullscreen_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_MAXIMIZE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@MONITOR_DEFAULTTONEAREST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @get_fullscreen_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fullscreen_window(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  %8 = call i32 (...) @GetForegroundWindow()
  store i32 %8, i32* %3, align 4
  %9 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %11 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @GetWindowRect(i32 %16, %struct.TYPE_8__* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %82

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @GWL_STYLE, align 4
  %23 = call i64 @GetWindowLongPtr(i32 %21, i32 %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @WS_MAXIMIZE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WS_BORDER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %82

35:                                               ; preds = %29, %20
  %36 = load i32, i32* @MONITOR_DEFAULTTONEAREST, align 4
  %37 = call i32 @MonitorFromRect(%struct.TYPE_8__* %7, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %82

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 48, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @GetMonitorInfo(i32 %43, %struct.TYPE_9__* %4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %82

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @setup_window(%struct.game_capture* %76, i32 %77)
  br label %82

79:                                               ; preds = %68, %61, %54, %47
  %80 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %81 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %14, %19, %34, %40, %46, %79, %75
  ret void
}

declare dso_local i32 @GetForegroundWindow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @MonitorFromRect(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @GetMonitorInfo(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @setup_window(%struct.game_capture*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
