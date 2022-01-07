; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_sharpness-filter.c_sharpness_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_sharpness-filter.c_sharpness_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sharpness_data = type { float, float, float, i32, i32, i32, i32, i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @sharpness_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpness_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sharpness_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sharpness_data*
  store %struct.sharpness_data* %7, %struct.sharpness_data** %5, align 8
  %8 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %9 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GS_RGBA, align 4
  %12 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %13 = call i32 @obs_source_process_filter_begin(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %18 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @obs_filter_get_target(i32 %19)
  %21 = call i64 @obs_source_get_width(i32 %20)
  %22 = sitofp i64 %21 to float
  %23 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %24 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %23, i32 0, i32 0
  store float %22, float* %24, align 4
  %25 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %26 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @obs_filter_get_target(i32 %27)
  %29 = call i64 @obs_source_get_height(i32 %28)
  %30 = sitofp i64 %29 to float
  %31 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %32 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %31, i32 0, i32 1
  store float %30, float* %32, align 4
  %33 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %34 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %37 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %36, i32 0, i32 2
  %38 = load float, float* %37, align 4
  %39 = call i32 @gs_effect_set_float(i32 %35, float %38)
  %40 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %41 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %44 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = call i32 @gs_effect_set_float(i32 %42, float %45)
  %47 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %48 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %51 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = call i32 @gs_effect_set_float(i32 %49, float %52)
  %54 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %55 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sharpness_data*, %struct.sharpness_data** %5, align 8
  %58 = getelementptr inbounds %struct.sharpness_data, %struct.sharpness_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @obs_source_process_filter_end(i32 %56, i32 %59, i32 0, i32 0)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @UNUSED_PARAMETER(i32* %61)
  br label %63

63:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i64 @obs_source_get_width(i32) #1

declare dso_local i32 @obs_filter_get_target(i32) #1

declare dso_local i64 @obs_source_get_height(i32) #1

declare dso_local i32 @gs_effect_set_float(i32, float) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
