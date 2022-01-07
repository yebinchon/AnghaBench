; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.gpu_priv* }
%struct.gpu_priv = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32*, i32, i8*)*, i32 (%struct.TYPE_5__*)* }
%struct.vo_frame = type { i32 }
%struct.voctrl_performance_data = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_EVENT_ICC_PROFILE_CHANGED = common dso_local global i32 0, align 4
@VO_EVENT_AMBIENT_LIGHTING_CHANGED = common dso_local global i32 0, align 4
@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@VO_EVENT_EXPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpu_priv*, align 8
  %9 = alloca %struct.vo_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.vo*, %struct.vo** %5, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 1
  %14 = load %struct.gpu_priv*, %struct.gpu_priv** %13, align 8
  store %struct.gpu_priv* %14, %struct.gpu_priv** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %88 [
    i32 129, label %16
    i32 130, label %20
    i32 131, label %24
    i32 135, label %39
    i32 128, label %42
    i32 132, label %52
    i32 134, label %57
    i32 133, label %67
    i32 136, label %74
  ]

16:                                               ; preds = %3
  %17 = load %struct.vo*, %struct.vo** %5, align 8
  %18 = call i32 @resize(%struct.vo* %17)
  %19 = load i32, i32* @VO_TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %149

20:                                               ; preds = %3
  %21 = load %struct.vo*, %struct.vo** %5, align 8
  %22 = getelementptr inbounds %struct.vo, %struct.vo* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @VO_TRUE, align 4
  store i32 %23, i32* %4, align 4
  br label %149

24:                                               ; preds = %3
  %25 = load %struct.vo*, %struct.vo** %5, align 8
  %26 = call %struct.vo_frame* @vo_get_current_vo_frame(%struct.vo* %25)
  store %struct.vo_frame* %26, %struct.vo_frame** %9, align 8
  %27 = load %struct.vo_frame*, %struct.vo_frame** %9, align 8
  %28 = icmp ne %struct.vo_frame* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %31 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vo_frame*, %struct.vo_frame** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @gl_video_screenshot(i32 %32, %struct.vo_frame* %33, i8* %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.vo_frame*, %struct.vo_frame** %9, align 8
  %38 = call i32 @talloc_free(%struct.vo_frame* %37)
  store i32 1, i32* %4, align 4
  br label %149

39:                                               ; preds = %3
  %40 = load %struct.vo*, %struct.vo** %5, align 8
  %41 = call i32 @request_hwdec_api(%struct.vo* %40)
  store i32 1, i32* %4, align 4
  br label %149

42:                                               ; preds = %3
  %43 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %44 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vo*, %struct.vo** %5, align 8
  %47 = call i32 @gl_video_configure_queue(i32 %45, %struct.vo* %46)
  %48 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %49 = call i32 @get_and_update_icc_profile(%struct.gpu_priv* %48)
  %50 = load %struct.vo*, %struct.vo** %5, align 8
  %51 = getelementptr inbounds %struct.vo, %struct.vo* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 1, i32* %4, align 4
  br label %149

52:                                               ; preds = %3
  %53 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %54 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @gl_video_reset(i32 %55)
  store i32 1, i32* %4, align 4
  br label %149

57:                                               ; preds = %3
  %58 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %59 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @gl_video_showing_interpolated_frame(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.vo*, %struct.vo** %5, align 8
  %65 = getelementptr inbounds %struct.vo, %struct.vo* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %57
  store i32 1, i32* %4, align 4
  br label %149

67:                                               ; preds = %3
  %68 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %69 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast i8* %71 to %struct.voctrl_performance_data*
  %73 = call i32 @gl_video_perfdata(i32 %70, %struct.voctrl_performance_data* %72)
  store i32 1, i32* %4, align 4
  br label %149

74:                                               ; preds = %3
  %75 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %76 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %80, align 8
  %82 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %83 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 %81(%struct.TYPE_5__* %84)
  %86 = load %struct.vo*, %struct.vo** %5, align 8
  %87 = call i32 @resize(%struct.vo* %86)
  store i32 1, i32* %4, align 4
  br label %149

88:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %89 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %90 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_5__*, i32*, i32, i8*)*, i32 (%struct.TYPE_5__*, i32*, i32, i8*)** %94, align 8
  %96 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %97 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 %95(%struct.TYPE_5__* %98, i32* %10, i32 %99, i8* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @VO_EVENT_ICC_PROFILE_CHANGED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %88
  %107 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %108 = call i32 @get_and_update_icc_profile(%struct.gpu_priv* %107)
  %109 = load %struct.vo*, %struct.vo** %5, align 8
  %110 = getelementptr inbounds %struct.vo, %struct.vo* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %88
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @VO_EVENT_AMBIENT_LIGHTING_CHANGED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %118 = call i32 @get_and_update_ambient_lighting(%struct.gpu_priv* %117)
  %119 = load %struct.vo*, %struct.vo** %5, align 8
  %120 = getelementptr inbounds %struct.vo, %struct.vo* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %123 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %10, align 4
  %127 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  %128 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load %struct.vo*, %struct.vo** %5, align 8
  %135 = call i32 @resize(%struct.vo* %134)
  br label %136

136:                                              ; preds = %133, %121
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @VO_EVENT_EXPOSE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.vo*, %struct.vo** %5, align 8
  %143 = getelementptr inbounds %struct.vo, %struct.vo* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.vo*, %struct.vo** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @vo_event(%struct.vo* %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %74, %67, %66, %52, %42, %39, %36, %20, %16
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @resize(%struct.vo*) #1

declare dso_local %struct.vo_frame* @vo_get_current_vo_frame(%struct.vo*) #1

declare dso_local i32 @gl_video_screenshot(i32, %struct.vo_frame*, i8*) #1

declare dso_local i32 @talloc_free(%struct.vo_frame*) #1

declare dso_local i32 @request_hwdec_api(%struct.vo*) #1

declare dso_local i32 @gl_video_configure_queue(i32, %struct.vo*) #1

declare dso_local i32 @get_and_update_icc_profile(%struct.gpu_priv*) #1

declare dso_local i32 @gl_video_reset(i32) #1

declare dso_local i32 @gl_video_showing_interpolated_frame(i32) #1

declare dso_local i32 @gl_video_perfdata(i32, %struct.voctrl_performance_data*) #1

declare dso_local i32 @get_and_update_ambient_lighting(%struct.gpu_priv*) #1

declare dso_local i32 @vo_event(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
