; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_render_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_render_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.vec4 = type { i32 }

@GS_DEBUG_COLOR_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Item: %s\00", align 1
@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*)* @render_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_item(%struct.obs_scene_item* %0) #0 {
  %2 = alloca %struct.obs_scene_item*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.vec4, align 4
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %2, align 8
  %10 = load i32, i32* @GS_DEBUG_COLOR_ITEM, align 4
  %11 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %12 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @obs_source_get_name(i32 %13)
  %15 = call i32 @GS_DEBUG_MARKER_BEGIN_FORMAT(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %17 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %99

20:                                               ; preds = %1
  %21 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %22 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @obs_source_get_width(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %26 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @obs_source_get_height(i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %20
  br label %118

35:                                               ; preds = %31
  %36 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @calc_cx(%struct.obs_scene_item* %36, i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @calc_cy(%struct.obs_scene_item* %39, i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %44
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %49 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @gs_texrender_begin(i64 %50, i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %47
  %56 = load i64, i64* %3, align 8
  %57 = sitofp i64 %56 to float
  %58 = load i64, i64* %5, align 8
  %59 = sitofp i64 %58 to float
  %60 = fdiv float %57, %59
  store float %60, float* %7, align 4
  %61 = load i64, i64* %4, align 8
  %62 = sitofp i64 %61 to float
  %63 = load i64, i64* %6, align 8
  %64 = sitofp i64 %63 to float
  %65 = fdiv float %62, %64
  store float %65, float* %8, align 4
  %66 = call i32 @vec4_zero(%struct.vec4* %9)
  %67 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %68 = call i32 @gs_clear(i32 %67, %struct.vec4* %9, float 0.000000e+00, i32 0)
  %69 = load i64, i64* %3, align 8
  %70 = sitofp i64 %69 to float
  %71 = load i64, i64* %4, align 8
  %72 = sitofp i64 %71 to float
  %73 = call i32 @gs_ortho(float 0.000000e+00, float %70, float 0.000000e+00, float %72, float -1.000000e+02, float 1.000000e+02)
  %74 = load float, float* %7, align 4
  %75 = load float, float* %8, align 4
  %76 = call i32 @gs_matrix_scale3f(float %74, float %75, float 1.000000e+00)
  %77 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %78 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to float
  %82 = fneg float %81
  %83 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %84 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to float
  %88 = fneg float %87
  %89 = call i32 @gs_matrix_translate3f(float %82, float %88, float 0.000000e+00)
  %90 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %91 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @obs_source_video_render(i32 %92)
  %94 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %95 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @gs_texrender_end(i64 %96)
  br label %98

98:                                               ; preds = %55, %47, %44, %35
  br label %99

99:                                               ; preds = %98, %1
  %100 = call i32 (...) @gs_matrix_push()
  %101 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %102 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %101, i32 0, i32 2
  %103 = call i32 @gs_matrix_mul(i32* %102)
  %104 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %105 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %110 = call i32 @render_item_texture(%struct.obs_scene_item* %109)
  br label %116

111:                                              ; preds = %99
  %112 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %113 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @obs_source_video_render(i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = call i32 (...) @gs_matrix_pop()
  br label %118

118:                                              ; preds = %116, %34
  %119 = call i32 (...) @GS_DEBUG_MARKER_END()
  ret void
}

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN_FORMAT(i32, i8*, i32) #1

declare dso_local i32 @obs_source_get_name(i32) #1

declare dso_local i64 @obs_source_get_width(i32) #1

declare dso_local i64 @obs_source_get_height(i32) #1

declare dso_local i64 @calc_cx(%struct.obs_scene_item*, i64) #1

declare dso_local i64 @calc_cy(%struct.obs_scene_item*, i64) #1

declare dso_local i64 @gs_texrender_begin(i64, i64, i64) #1

declare dso_local i32 @vec4_zero(%struct.vec4*) #1

declare dso_local i32 @gs_clear(i32, %struct.vec4*, float, i32) #1

declare dso_local i32 @gs_ortho(float, float, float, float, float, float) #1

declare dso_local i32 @gs_matrix_scale3f(float, float, float) #1

declare dso_local i32 @gs_matrix_translate3f(float, float, float) #1

declare dso_local i32 @obs_source_video_render(i32) #1

declare dso_local i32 @gs_texrender_end(i64) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_mul(i32*) #1

declare dso_local i32 @render_item_texture(%struct.obs_scene_item*) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
