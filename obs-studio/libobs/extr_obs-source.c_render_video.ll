; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_render_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_render_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i32, %struct.TYPE_16__, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@OBS_SOURCE_TYPE_FILTER = common dso_local global i64 0, align 8
@OBS_SOURCE_VIDEO = common dso_local global i32 0, align 4
@OBS_SOURCE_TYPE_INPUT = common dso_local global i64 0, align 8
@OBS_SOURCE_ASYNC = common dso_local global i32 0, align 4
@GS_DEBUG_COLOR_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @render_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_video(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %3 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @OBS_SOURCE_TYPE_FILTER, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @OBS_SOURCE_VIDEO, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = call i32 @obs_source_skip_video_filter(%struct.TYPE_18__* %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %133

26:                                               ; preds = %9, %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBS_SOURCE_TYPE_INPUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = call i64 @deinterlacing_enabled(%struct.TYPE_18__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %52 = call i32 @deinterlace_update_async_video(%struct.TYPE_18__* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = call i32 @obs_source_update_async_video(%struct.TYPE_18__* %54)
  br label %56

56:                                               ; preds = %53, %41, %33, %26
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %74 = call i32 @obs_source_skip_video_filter(%struct.TYPE_18__* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %133

76:                                               ; preds = %62
  %77 = load i32, i32* @GS_DEBUG_COLOR_SOURCE, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @get_type_format(i64 %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %84 = call i32 @obs_source_get_name(%struct.TYPE_18__* %83)
  %85 = call i32 @GS_DEBUG_MARKER_BEGIN_FORMAT(i32 %77, i32 %82, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %76
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %98 = call i32 @obs_source_render_filters(%struct.TYPE_18__* %97)
  br label %131

99:                                               ; preds = %91, %76
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = call i32 @obs_source_main_render(%struct.TYPE_18__* %106)
  br label %130

108:                                              ; preds = %99
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @obs_source_video_render(i64 %116)
  br label %129

118:                                              ; preds = %108
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %120 = call i64 @deinterlacing_enabled(%struct.TYPE_18__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = call i32 @deinterlace_render(%struct.TYPE_18__* %123)
  br label %128

125:                                              ; preds = %118
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %127 = call i32 @obs_source_render_async_video(%struct.TYPE_18__* %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %105
  br label %131

131:                                              ; preds = %130, %96
  %132 = call i32 (...) @GS_DEBUG_MARKER_END()
  br label %133

133:                                              ; preds = %131, %75, %25
  ret void
}

declare dso_local i32 @obs_source_skip_video_filter(%struct.TYPE_18__*) #1

declare dso_local i64 @deinterlacing_enabled(%struct.TYPE_18__*) #1

declare dso_local i32 @deinterlace_update_async_video(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_update_async_video(%struct.TYPE_18__*) #1

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN_FORMAT(i32, i32, i32) #1

declare dso_local i32 @get_type_format(i64) #1

declare dso_local i32 @obs_source_get_name(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_render_filters(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_main_render(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_video_render(i64) #1

declare dso_local i32 @deinterlace_render(%struct.TYPE_18__*) #1

declare dso_local i32 @obs_source_render_async_video(%struct.TYPE_18__*) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
