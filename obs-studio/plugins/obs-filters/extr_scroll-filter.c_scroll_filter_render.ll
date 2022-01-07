; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scroll_filter_data = type { i32, i32, i32, i32, i32, %struct.vec2, i32, %struct.vec2, i64, i64, i64, i64 }
%struct.vec2 = type { i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_NO_DIRECT_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scroll_filter_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll_filter_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.scroll_filter_data*, align 8
  %6 = alloca %struct.vec2, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.scroll_filter_data*
  store %struct.scroll_filter_data* %13, %struct.scroll_filter_data** %5, align 8
  %14 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %15 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @obs_filter_get_target(i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @obs_source_get_base_width(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i64 @obs_source_get_base_height(i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %23 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %28 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i64 [ %29, %26 ], [ %31, %30 ]
  store i64 %33, i64* %9, align 8
  %34 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %40 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  br label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %41, %38 ], [ %43, %42 ]
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %53 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %52, i32 0, i32 7
  %54 = load i64, i64* %7, align 8
  %55 = sitofp i64 %54 to float
  %56 = fdiv float 1.000000e+00, %55
  %57 = load i64, i64* %8, align 8
  %58 = sitofp i64 %57 to float
  %59 = fdiv float 1.000000e+00, %58
  %60 = call i32 @vec2_set(%struct.vec2* %53, float %56, float %59)
  br label %69

61:                                               ; preds = %48, %44
  %62 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %62, i32 0, i32 7
  %64 = call i32 @vec2_zero(%struct.vec2* %63)
  %65 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %66 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @obs_source_skip_video_filter(i32 %67)
  br label %118

69:                                               ; preds = %51
  %70 = load i64, i64* %9, align 8
  %71 = sitofp i64 %70 to float
  %72 = load i64, i64* %7, align 8
  %73 = sitofp i64 %72 to float
  %74 = fdiv float %71, %73
  %75 = load i64, i64* %10, align 8
  %76 = sitofp i64 %75 to float
  %77 = load i64, i64* %8, align 8
  %78 = sitofp i64 %77 to float
  %79 = fdiv float %76, %78
  %80 = call i32 @vec2_set(%struct.vec2* %6, float %74, float %79)
  %81 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %82 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GS_RGBA, align 4
  %85 = load i32, i32* @OBS_NO_DIRECT_RENDERING, align 4
  %86 = call i32 @obs_source_process_filter_begin(i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %69
  br label %118

89:                                               ; preds = %69
  %90 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %91 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %94 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %93, i32 0, i32 5
  %95 = call i32 @gs_effect_set_vec2(i32 %92, %struct.vec2* %94)
  %96 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %97 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @gs_effect_set_vec2(i32 %98, %struct.vec2* %6)
  %100 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %101 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %104 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @gs_effect_set_next_sampler(i32 %102, i32 %105)
  %107 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %108 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %111 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @obs_source_process_filter_end(i32 %109, i32 %112, i64 %113, i64 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @UNUSED_PARAMETER(i32* %116)
  br label %118

118:                                              ; preds = %89, %88, %61
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i64 @obs_source_get_base_width(i32*) #1

declare dso_local i64 @obs_source_get_base_height(i32*) #1

declare dso_local i32 @vec2_set(%struct.vec2*, float, float) #1

declare dso_local i32 @vec2_zero(%struct.vec2*) #1

declare dso_local i32 @obs_source_skip_video_filter(i32) #1

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32 @gs_effect_set_vec2(i32, %struct.vec2*) #1

declare dso_local i32 @gs_effect_set_next_sampler(i32, i32) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i64, i64) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
