; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_mask-filter.c_mask_filter_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { float, float, float, float }
%struct.mask_filter_data = type { i32, i32, i32, i32, i64 }

@__const.mask_filter_render.mul_val = private unnamed_addr constant %struct.vec2 { float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mul_val\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"add_val\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @mask_filter_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_filter_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mask_filter_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vec2, align 4
  %9 = alloca %struct.vec2, align 4
  %10 = alloca %struct.vec2, align 4
  %11 = alloca %struct.vec2, align 4
  %12 = alloca %struct.vec2, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.mask_filter_data*
  store %struct.mask_filter_data* %18, %struct.mask_filter_data** %5, align 8
  %19 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %20 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @obs_filter_get_target(i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = bitcast %struct.vec2* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = bitcast %struct.vec2* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.vec2* @__const.mask_filter_render.mul_val to i8*), i64 16, i1 false)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %29 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32, %27, %2
  %38 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @obs_source_skip_video_filter(i32 %40)
  br label %154

42:                                               ; preds = %32
  %43 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %44 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @obs_source_get_base_width(i32* %48)
  %50 = sitofp i64 %49 to float
  %51 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 2
  store float %50, float* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @obs_source_get_base_height(i32* %52)
  %54 = sitofp i64 %53 to float
  %55 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 3
  store float %54, float* %55, align 4
  %56 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %57 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @gs_texture_get_width(i32 %58)
  %60 = sitofp i64 %59 to float
  %61 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 2
  store float %60, float* %61, align 4
  %62 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @gs_texture_get_height(i32 %64)
  %66 = sitofp i64 %65 to float
  %67 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 3
  store float %66, float* %67, align 4
  %68 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 2
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 3
  %71 = load float, float* %70, align 4
  %72 = fdiv float %69, %71
  store float %72, float* %13, align 4
  %73 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 2
  %74 = load float, float* %73, align 4
  %75 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = fdiv float %74, %76
  store float %77, float* %14, align 4
  %78 = load float, float* %13, align 4
  %79 = load float, float* %14, align 4
  %80 = fcmp olt float %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %47
  %85 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 2
  %86 = load float, float* %85, align 4
  %87 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 2
  %88 = load float, float* %87, align 4
  %89 = fdiv float %86, %88
  br label %96

90:                                               ; preds = %47
  %91 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = getelementptr inbounds %struct.vec2, %struct.vec2* %11, i32 0, i32 3
  %94 = load float, float* %93, align 4
  %95 = fdiv float %92, %94
  br label %96

96:                                               ; preds = %90, %84
  %97 = phi float [ %89, %84 ], [ %95, %90 ]
  store float %97, float* %16, align 4
  %98 = load float, float* %16, align 4
  %99 = call i32 @vec2_mulf(%struct.vec2* %11, %struct.vec2* %11, float %98)
  %100 = call i32 @vec2_div(%struct.vec2* %9, %struct.vec2* %10, %struct.vec2* %11)
  %101 = call i32 @vec2_mulf(%struct.vec2* %10, %struct.vec2* %10, float 5.000000e-01)
  %102 = call i32 @vec2_mulf(%struct.vec2* %12, %struct.vec2* %11, float 5.000000e-01)
  %103 = call i32 @vec2_sub(%struct.vec2* %8, %struct.vec2* %10, %struct.vec2* %12)
  %104 = call i32 @vec2_neg(%struct.vec2* %8, %struct.vec2* %8)
  %105 = call i32 @vec2_div(%struct.vec2* %8, %struct.vec2* %8, %struct.vec2* %11)
  br label %106

106:                                              ; preds = %96, %42
  %107 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %108 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GS_RGBA, align 4
  %111 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %112 = call i32 @obs_source_process_filter_begin(i32 %109, i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %154

115:                                              ; preds = %106
  %116 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %117 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @gs_effect_get_param_by_name(i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %119, i32** %7, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %122 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @gs_effect_set_texture(i32* %120, i32 %123)
  %125 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %126 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32* @gs_effect_get_param_by_name(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %128, i32** %7, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %131 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %130, i32 0, i32 2
  %132 = call i32 @gs_effect_set_vec4(i32* %129, i32* %131)
  %133 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %134 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32* @gs_effect_get_param_by_name(i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %136, i32** %7, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @gs_effect_set_vec2(i32* %137, %struct.vec2* %9)
  %139 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %140 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32* @gs_effect_get_param_by_name(i32 %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @gs_effect_set_vec2(i32* %143, %struct.vec2* %8)
  %145 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %146 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mask_filter_data*, %struct.mask_filter_data** %5, align 8
  %149 = getelementptr inbounds %struct.mask_filter_data, %struct.mask_filter_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @obs_source_process_filter_end(i32 %147, i32 %150, i32 0, i32 0)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @UNUSED_PARAMETER(i32* %152)
  br label %154

154:                                              ; preds = %115, %114, %37
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obs_source_skip_video_filter(i32) #1

declare dso_local i64 @obs_source_get_base_width(i32*) #1

declare dso_local i64 @obs_source_get_base_height(i32*) #1

declare dso_local i64 @gs_texture_get_width(i32) #1

declare dso_local i64 @gs_texture_get_height(i32) #1

declare dso_local i32 @vec2_mulf(%struct.vec2*, %struct.vec2*, float) #1

declare dso_local i32 @vec2_div(%struct.vec2*, %struct.vec2*, %struct.vec2*) #1

declare dso_local i32 @vec2_sub(%struct.vec2*, %struct.vec2*, %struct.vec2*) #1

declare dso_local i32 @vec2_neg(%struct.vec2*, %struct.vec2*) #1

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32) #1

declare dso_local i32 @gs_effect_set_vec4(i32*, i32*) #1

declare dso_local i32 @gs_effect_set_vec2(i32*, %struct.vec2*) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
