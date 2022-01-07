; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-grade-filter.c_color_grade_filter_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lut_filter_data = type { i32, i32, i32, i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@OBS_ALLOW_DIRECT_RENDERING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"clut\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"clut_amount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @color_grade_filter_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_grade_filter_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lut_filter_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.lut_filter_data*
  store %struct.lut_filter_data* %9, %struct.lut_filter_data** %5, align 8
  %10 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %11 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @obs_filter_get_target(i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %18 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %23 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21, %16, %2
  %27 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %28 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @obs_source_skip_video_filter(i32 %29)
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %33 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GS_RGBA, align 4
  %36 = load i32, i32* @OBS_ALLOW_DIRECT_RENDERING, align 4
  %37 = call i32 @obs_source_process_filter_begin(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %68

40:                                               ; preds = %31
  %41 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %42 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @gs_effect_get_param_by_name(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %47 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gs_effect_set_texture(i32* %45, i32 %48)
  %50 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %51 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @gs_effect_get_param_by_name(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %56 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gs_effect_set_float(i32* %54, i32 %57)
  %59 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %60 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.lut_filter_data*, %struct.lut_filter_data** %5, align 8
  %63 = getelementptr inbounds %struct.lut_filter_data, %struct.lut_filter_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @obs_source_process_filter_end(i32 %61, i32 %64, i32 0, i32 0)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @UNUSED_PARAMETER(i32* %66)
  br label %68

68:                                               ; preds = %40, %39, %26
  ret void
}

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i32 @obs_source_skip_video_filter(i32) #1

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32) #1

declare dso_local i32 @gs_effect_set_float(i32*, i32) #1

declare dso_local i32 @obs_source_process_filter_end(i32, i32, i32, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
