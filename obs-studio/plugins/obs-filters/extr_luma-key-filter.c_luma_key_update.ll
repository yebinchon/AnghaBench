; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_luma-key-filter.c_luma_key_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_luma-key-filter.c_luma_key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luma_key_filter_data = type { float, float, float, float }

@SETTING_LUMA_MAX = common dso_local global i32 0, align 4
@SETTING_LUMA_MIN = common dso_local global i32 0, align 4
@SETTING_LUMA_MAX_SMOOTH = common dso_local global i32 0, align 4
@SETTING_LUMA_MIN_SMOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @luma_key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luma_key_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.luma_key_filter_data*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.luma_key_filter_data*
  store %struct.luma_key_filter_data* %11, %struct.luma_key_filter_data** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SETTING_LUMA_MAX, align 4
  %14 = call double @obs_data_get_double(i32* %12, i32 %13)
  store double %14, double* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @SETTING_LUMA_MIN, align 4
  %17 = call double @obs_data_get_double(i32* %15, i32 %16)
  store double %17, double* %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @SETTING_LUMA_MAX_SMOOTH, align 4
  %20 = call double @obs_data_get_double(i32* %18, i32 %19)
  store double %20, double* %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @SETTING_LUMA_MIN_SMOOTH, align 4
  %23 = call double @obs_data_get_double(i32* %21, i32 %22)
  store double %23, double* %9, align 8
  %24 = load double, double* %6, align 8
  %25 = fptrunc double %24 to float
  %26 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %27 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %26, i32 0, i32 0
  store float %25, float* %27, align 4
  %28 = load double, double* %7, align 8
  %29 = fptrunc double %28 to float
  %30 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %31 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %30, i32 0, i32 1
  store float %29, float* %31, align 4
  %32 = load double, double* %8, align 8
  %33 = fptrunc double %32 to float
  %34 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %34, i32 0, i32 2
  store float %33, float* %35, align 4
  %36 = load double, double* %9, align 8
  %37 = fptrunc double %36 to float
  %38 = load %struct.luma_key_filter_data*, %struct.luma_key_filter_data** %5, align 8
  %39 = getelementptr inbounds %struct.luma_key_filter_data, %struct.luma_key_filter_data* %38, i32 0, i32 3
  store float %37, float* %39, align 4
  ret void
}

declare dso_local double @obs_data_get_double(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
