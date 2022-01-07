; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scroll-filter.c_scroll_filter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scroll_filter_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { float, float }
%struct.TYPE_3__ = type { float, float }
%struct.gs_sampler_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"limit_cx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"limit_cy\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"speed_x\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"speed_y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@GS_ADDRESS_WRAP = common dso_local global i32 0, align 4
@GS_ADDRESS_BORDER = common dso_local global i32 0, align 4
@GS_FILTER_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scroll_filter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll_filter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.scroll_filter_data*, align 8
  %6 = alloca %struct.gs_sampler_info, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.scroll_filter_data*
  store %struct.scroll_filter_data* %8, %struct.scroll_filter_data** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @obs_data_get_bool(i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %12 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @obs_data_get_bool(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %16 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @obs_data_get_int(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %21 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @obs_data_get_int(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %26 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @obs_data_get_double(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %29 = sitofp i64 %28 to float
  %30 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %31 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store float %29, float* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @obs_data_get_double(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %35 = sitofp i64 %34 to float
  %36 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %37 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store float %35, float* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @obs_data_get_bool(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %41 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %42 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %6, i32 0, i32 0
  %44 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %45 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @GS_ADDRESS_WRAP, align 4
  br label %52

50:                                               ; preds = %2
  %51 = load i32, i32* @GS_ADDRESS_BORDER, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %43, align 4
  %54 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %6, i32 0, i32 1
  %55 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %56 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @GS_ADDRESS_WRAP, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @GS_ADDRESS_BORDER, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %54, align 4
  %65 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %6, i32 0, i32 2
  %66 = load i32, i32* @GS_FILTER_LINEAR, align 4
  store i32 %66, i32* %65, align 4
  %67 = call i32 (...) @obs_enter_graphics()
  %68 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %69 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @gs_samplerstate_destroy(i32 %70)
  %72 = call i32 @gs_samplerstate_create(%struct.gs_sampler_info* %6)
  %73 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %74 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = call i32 (...) @obs_leave_graphics()
  %76 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %77 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load float, float* %78, align 8
  %80 = fcmp oeq float %79, 0.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %83 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store float 0.000000e+00, float* %84, align 8
  br label %85

85:                                               ; preds = %81, %63
  %86 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %87 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = fcmp oeq float %89, 0.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.scroll_filter_data*, %struct.scroll_filter_data** %5, align 8
  %93 = getelementptr inbounds %struct.scroll_filter_data, %struct.scroll_filter_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store float 0.000000e+00, float* %94, align 4
  br label %95

95:                                               ; preds = %91, %85
  ret void
}

declare dso_local i8* @obs_data_get_bool(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @obs_data_get_double(i32*, i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_samplerstate_destroy(i32) #1

declare dso_local i32 @gs_samplerstate_create(%struct.gs_sampler_info*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
