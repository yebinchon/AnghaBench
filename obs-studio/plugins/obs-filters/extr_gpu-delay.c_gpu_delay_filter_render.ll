; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_gpu_delay_filter_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gpu-delay.c_gpu_delay_filter_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpu_delay_filter_data = type { i32, %struct.TYPE_3__, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.frame = type { i32 }
%struct.vec4 = type { i32 }

@GS_BLEND_ONE = common dso_local global i32 0, align 4
@GS_BLEND_ZERO = common dso_local global i32 0, align 4
@OBS_SOURCE_CUSTOM_DRAW = common dso_local global i32 0, align 4
@OBS_SOURCE_ASYNC = common dso_local global i32 0, align 4
@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @gpu_delay_filter_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpu_delay_filter_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gpu_delay_filter_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.frame, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vec4, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.gpu_delay_filter_data*
  store %struct.gpu_delay_filter_data* %14, %struct.gpu_delay_filter_data** %5, align 8
  %15 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %16 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @obs_filter_get_target(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %20 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @obs_filter_get_parent(i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %24 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33, %30, %27, %2
  %40 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %41 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @obs_source_skip_video_filter(i32 %42)
  br label %128

44:                                               ; preds = %33
  %45 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %46 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %51 = call i32 @draw_frame(%struct.gpu_delay_filter_data* %50)
  br label %128

52:                                               ; preds = %44
  %53 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %54 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %53, i32 0, i32 1
  %55 = call i32 @circlebuf_pop_front(%struct.TYPE_3__* %54, %struct.frame* %8, i32 4)
  %56 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gs_texrender_reset(i32 %57)
  %59 = call i32 (...) @gs_blend_state_push()
  %60 = load i32, i32* @GS_BLEND_ONE, align 4
  %61 = load i32, i32* @GS_BLEND_ZERO, align 4
  %62 = call i32 @gs_blend_function(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %66 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %69 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @gs_texrender_begin(i32 %64, i64 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %52
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @obs_source_get_output_flags(i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @OBS_SOURCE_CUSTOM_DRAW, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = call i32 @vec4_zero(%struct.vec4* %12)
  %87 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %88 = call i32 @gs_clear(i32 %87, %struct.vec4* %12, float 0.000000e+00, i32 0)
  %89 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %90 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to float
  %93 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %94 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to float
  %97 = call i32 @gs_ortho(float 0.000000e+00, float %92, float 0.000000e+00, float %96, float -1.000000e+02, float 1.000000e+02)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = icmp eq i32* %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %73
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @obs_source_default_render(i32* %108)
  br label %113

110:                                              ; preds = %104, %101, %73
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @obs_source_video_render(i32* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gs_texrender_end(i32 %115)
  br label %117

117:                                              ; preds = %113, %52
  %118 = call i32 (...) @gs_blend_state_pop()
  %119 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %120 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %119, i32 0, i32 1
  %121 = call i32 @circlebuf_push_back(%struct.TYPE_3__* %120, %struct.frame* %8, i32 4)
  %122 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %123 = call i32 @draw_frame(%struct.gpu_delay_filter_data* %122)
  %124 = load %struct.gpu_delay_filter_data*, %struct.gpu_delay_filter_data** %5, align 8
  %125 = getelementptr inbounds %struct.gpu_delay_filter_data, %struct.gpu_delay_filter_data* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @UNUSED_PARAMETER(i32* %126)
  br label %128

128:                                              ; preds = %117, %49, %39
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i32* @obs_filter_get_parent(i32) #1

declare dso_local i32 @obs_source_skip_video_filter(i32) #1

declare dso_local i32 @draw_frame(%struct.gpu_delay_filter_data*) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_3__*, %struct.frame*, i32) #1

declare dso_local i32 @gs_texrender_reset(i32) #1

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function(i32, i32) #1

declare dso_local i64 @gs_texrender_begin(i32, i64, i64) #1

declare dso_local i32 @obs_source_get_output_flags(i32*) #1

declare dso_local i32 @vec4_zero(%struct.vec4*) #1

declare dso_local i32 @gs_clear(i32, %struct.vec4*, float, i32) #1

declare dso_local i32 @gs_ortho(float, float, float, float, float, float) #1

declare dso_local i32 @obs_source_default_render(i32*) #1

declare dso_local i32 @obs_source_video_render(i32*) #1

declare dso_local i32 @gs_texrender_end(i32) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_3__*, %struct.frame*, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
