; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_output_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_output_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i64, i64, i32*, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.vec2 = type { i32 }

@VIDEO_FORMAT_RGBA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"DrawAlphaDivide\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@render_output_texture_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"base_dimension\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"base_dimension_i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.obs_core_video*)* @render_output_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @render_output_texture(%struct.obs_core_video* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_core_video*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.vec2, align 4
  %16 = alloca %struct.vec2, align 4
  store %struct.obs_core_video* %0, %struct.obs_core_video** %3, align 8
  %17 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %18 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %21 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @gs_texture_get_width(i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @gs_texture_get_height(i32* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32* @get_scale_effect(%struct.obs_core_video* %27, i64 %28, i64 %29)
  store i32* %30, i32** %8, align 8
  %31 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %32 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIDEO_FORMAT_RGBA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @gs_effect_get_technique(i32* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %9, align 8
  br label %63

40:                                               ; preds = %1
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %43 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %49 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %55 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** %2, align 8
  br label %139

60:                                               ; preds = %52, %46, %40
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @gs_effect_get_technique(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %60, %37
  %64 = load i32, i32* @render_output_texture_name, align 4
  %65 = call i32 @profile_start(i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32* @gs_effect_get_param_by_name(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @gs_effect_get_param_by_name(i32* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @gs_effect_get_param_by_name(i32* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @gs_set_render_target(i32* %72, i32* null)
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @set_render_size(i64 %74, i64 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %63
  %80 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %81 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to float
  %84 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %85 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to float
  %88 = call i32 @vec2_set(%struct.vec2* %15, float %83, float %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @gs_effect_set_vec2(i32* %89, %struct.vec2* %15)
  br label %91

91:                                               ; preds = %79, %63
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %96 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = fdiv float 1.000000e+00, %98
  %100 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %101 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to float
  %104 = fdiv float 1.000000e+00, %103
  %105 = call i32 @vec2_set(%struct.vec2* %16, float %99, float %104)
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @gs_effect_set_vec2(i32* %106, %struct.vec2* %16)
  br label %108

108:                                              ; preds = %94, %91
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @gs_effect_set_texture(i32* %109, i32* %110)
  %112 = call i32 @gs_enable_blending(i32 0)
  %113 = load i32*, i32** %9, align 8
  %114 = call i64 @gs_technique_begin(i32* %113)
  store i64 %114, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %115

115:                                              ; preds = %129, %108
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @gs_technique_begin_pass(i32* %120, i64 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @gs_draw_sprite(i32* %123, i32 0, i64 %124, i64 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @gs_technique_end_pass(i32* %127)
  br label %129

129:                                              ; preds = %119
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %14, align 8
  br label %115

132:                                              ; preds = %115
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @gs_technique_end(i32* %133)
  %135 = call i32 @gs_enable_blending(i32 1)
  %136 = load i32, i32* @render_output_texture_name, align 4
  %137 = call i32 @profile_end(i32 %136)
  %138 = load i32*, i32** %5, align 8
  store i32* %138, i32** %2, align 8
  br label %139

139:                                              ; preds = %132, %58
  %140 = load i32*, i32** %2, align 8
  ret i32* %140
}

declare dso_local i64 @gs_texture_get_width(i32*) #1

declare dso_local i64 @gs_texture_get_height(i32*) #1

declare dso_local i32* @get_scale_effect(%struct.obs_core_video*, i64, i64) #1

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32 @profile_start(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_set_render_target(i32*, i32*) #1

declare dso_local i32 @set_render_size(i64, i64) #1

declare dso_local i32 @vec2_set(%struct.vec2*, float, float) #1

declare dso_local i32 @gs_effect_set_vec2(i32*, %struct.vec2*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_enable_blending(i32) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i32 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i64, i64) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
