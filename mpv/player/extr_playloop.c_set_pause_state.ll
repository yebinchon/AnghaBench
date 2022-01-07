; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_set_pause_state.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_set_pause_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.MPOpts* }
%struct.MPOpts = type { i32 }

@MPV_EVENT_PAUSE = common dso_local global i32 0, align 4
@MPV_EVENT_UNPAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pause_state(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPOpts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 9
  %10 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  store %struct.MPOpts* %10, %struct.MPOpts** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %12 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %20 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %22 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i1 [ true, %17 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 1, i32* %6, align 4
  %42 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ao_pause(i64 %57)
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ao_resume(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %46, %38
  %66 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %67 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @vo_set_paused(i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %78 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %82 = call i32 @mp_wakeup_core(%struct.MPContext* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %76
  %86 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %87 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %89 = call i64 @get_relative_time(%struct.MPContext* %88)
  %90 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  br label %99

96:                                               ; preds = %76
  %97 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %98 = call i64 @get_relative_time(%struct.MPContext* %97)
  br label %99

99:                                               ; preds = %96, %85
  br label %100

100:                                              ; preds = %99, %30
  %101 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %102 = call i32 @update_core_idle_state(%struct.MPContext* %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %107 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %108 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @MPV_EVENT_PAUSE, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @MPV_EVENT_UNPAUSE, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = call i32 @mp_notify(%struct.MPContext* %106, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %115, %100
  ret void
}

declare dso_local i32 @ao_pause(i64) #1

declare dso_local i32 @ao_resume(i64) #1

declare dso_local i32 @vo_set_paused(i64, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i64 @get_relative_time(%struct.MPContext*) #1

declare dso_local i32 @update_core_idle_state(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
