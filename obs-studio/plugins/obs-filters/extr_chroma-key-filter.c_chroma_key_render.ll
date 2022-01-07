; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_chroma-key-filter.c_chroma_key_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chroma_key_filter_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vec2, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vec2 = type { i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @chroma_key_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chroma_key_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.chroma_key_filter_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vec2, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.chroma_key_filter_data*
  store %struct.chroma_key_filter_data* %11, %struct.chroma_key_filter_data** %5, align 8
  %12 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %13 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @obs_filter_get_target(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @obs_source_get_base_width(i32* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @obs_source_get_base_height(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GS_RGBA, align 4
  %24 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %25 = call i32 @obs_source_process_filter_begin(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %103

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = sitofp i64 %29 to float
  %31 = fdiv float 1.000000e+00, %30
  %32 = load i64, i64* %8, align 8
  %33 = sitofp i64 %32 to float
  %34 = fdiv float 1.000000e+00, %33
  %35 = call i32 @vec2_set(%struct.vec2* %9, float %31, float %34)
  %36 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %37 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %36, i32 0, i32 18
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %40 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %39, i32 0, i32 17
  %41 = call i32 @gs_effect_set_vec4(i32 %38, i32* %40)
  %42 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %43 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %46 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gs_effect_set_float(i32 %44, i32 %47)
  %49 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %50 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %53 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gs_effect_set_float(i32 %51, i32 %54)
  %56 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %57 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %60 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gs_effect_set_float(i32 %58, i32 %61)
  %63 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %64 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %67 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %66, i32 0, i32 9
  %68 = call i32 @gs_effect_set_vec2(i32 %65, %struct.vec2* %67)
  %69 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %70 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gs_effect_set_vec2(i32 %71, %struct.vec2* %9)
  %73 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %74 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %77 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gs_effect_set_float(i32 %75, i32 %78)
  %80 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %81 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %84 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gs_effect_set_float(i32 %82, i32 %85)
  %87 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %88 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %91 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @gs_effect_set_float(i32 %89, i32 %92)
  %94 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %95 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.chroma_key_filter_data*, %struct.chroma_key_filter_data** %5, align 8
  %98 = getelementptr inbounds %struct.chroma_key_filter_data, %struct.chroma_key_filter_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @obs_source_process_filter_end(i32 %96, i32 %99, i32 0, i32 0)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @UNUSED_PARAMETER(i32* %101)
  br label %103

103:                                              ; preds = %28, %27
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i64 @obs_source_get_base_width(i32*) #1

declare dso_local i64 @obs_source_get_base_height(i32*) #1

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32 @vec2_set(%struct.vec2*, float, float) #1

declare dso_local i32 @gs_effect_set_vec4(i32, i32*) #1

declare dso_local i32 @gs_effect_set_float(i32, i32) #1

declare dso_local i32 @gs_effect_set_vec2(i32, %struct.vec2*) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
