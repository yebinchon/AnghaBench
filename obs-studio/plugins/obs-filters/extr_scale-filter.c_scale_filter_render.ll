; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scale_filter_data = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"DrawUndistort\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DrawUpscale\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@GS_RGBA = common dso_local global i32 0, align 4
@OBS_NO_DIRECT_RENDERING = common dso_local global i32 0, align 4
@OBS_SCALE_POINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scale_filter_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_filter_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.scale_filter_data*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.scale_filter_data*
  store %struct.scale_filter_data* %8, %struct.scale_filter_data** %5, align 8
  %9 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %10 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %9, i32 0, i32 16
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %16 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  br label %21

21:                                               ; preds = %14, %13
  %22 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %13 ], [ %20, %14 ]
  store i8* %22, i8** %6, align 8
  %23 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %24 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %29 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @obs_source_skip_video_filter(i32 %35)
  br label %115

37:                                               ; preds = %27
  %38 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GS_RGBA, align 4
  %42 = load i32, i32* @OBS_NO_DIRECT_RENDERING, align 4
  %43 = call i32 @obs_source_process_filter_begin(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %115

46:                                               ; preds = %37
  %47 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %48 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %53 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %52, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %56 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %55, i32 0, i32 11
  %57 = call i32 @gs_effect_set_vec2(i64 %54, i32* %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %60 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %65 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %68 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %67, i32 0, i32 9
  %69 = call i32 @gs_effect_set_vec2(i64 %66, i32* %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %72 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %77 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %80 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to float
  %83 = call i32 @gs_effect_set_float(i64 %78, float %82)
  br label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %86 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @OBS_SCALE_POINT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %92 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %95 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @gs_effect_set_next_sampler(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %84
  %99 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %100 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %103 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %106 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %109 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @obs_source_process_filter_tech_end(i32 %101, i32 %104, i32 %107, i32 %110, i8* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @UNUSED_PARAMETER(i32* %113)
  br label %115

115:                                              ; preds = %98, %45, %32
  ret void
}

declare dso_local i32 @obs_source_skip_video_filter(i32) #1

declare dso_local i32 @obs_source_process_filter_begin(i32, i32, i32) #1

declare dso_local i32 @gs_effect_set_vec2(i64, i32*) #1

declare dso_local i32 @gs_effect_set_float(i64, float) #1

declare dso_local i32 @gs_effect_set_next_sampler(i32, i32) #1

declare dso_local i32 @obs_source_process_filter_tech_end(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
