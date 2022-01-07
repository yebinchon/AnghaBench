; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_events.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i8*, i8*, i8*, i8*, i8* }

@EVENT_CAPTURE_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"init_events: failed to get hook_restart event: %lu\00", align 1
@EVENT_CAPTURE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"init_events: failed to get hook_stop event: %lu\00", align 1
@EVENT_HOOK_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"init_events: failed to get hook_init event: %lu\00", align 1
@EVENT_HOOK_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"init_events: failed to get hook_ready event: %lu\00", align 1
@EVENT_HOOK_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"init_events: failed to get hook_exit event: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_events(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %4 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %5 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %4, i32 0, i32 4
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %10 = load i32, i32* @EVENT_CAPTURE_RESTART, align 4
  %11 = call i8* @open_event_gc(%struct.game_capture* %9, i32 %10)
  %12 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %13 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %15 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 @warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %99

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %24 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %29 = load i32, i32* @EVENT_CAPTURE_STOP, align 4
  %30 = call i8* @open_event_gc(%struct.game_capture* %28, i32 %29)
  %31 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %34 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %2, align 4
  br label %99

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %43 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %48 = load i32, i32* @EVENT_HOOK_INIT, align 4
  %49 = call i8* @open_event_gc(%struct.game_capture* %47, i32 %48)
  %50 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %53 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 0, i32* %2, align 4
  br label %99

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %62 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %67 = load i32, i32* @EVENT_HOOK_READY, align 4
  %68 = call i8* @open_event_gc(%struct.game_capture* %66, i32 %67)
  %69 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %70 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %72 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 0, i32* %2, align 4
  br label %99

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %81 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %79
  %85 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %86 = load i32, i32* @EVENT_HOOK_EXIT, align 4
  %87 = call i8* @open_event_gc(%struct.game_capture* %85, i32 %86)
  %88 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %89 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %91 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  store i32 0, i32* %2, align 4
  br label %99

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %79
  store i32 1, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %94, %75, %56, %37, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @open_event_gc(%struct.game_capture*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
