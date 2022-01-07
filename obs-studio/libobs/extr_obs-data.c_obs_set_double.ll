; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_set_double.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_set_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_number = type { double, i32 }

@OBS_DATA_NUM_DOUBLE = common dso_local global i32 0, align 4
@OBS_DATA_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i8*, double, i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)*)* @obs_set_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_set_double(i32* %0, i32** %1, i8* %2, double %3, i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)*, align 8
  %11 = alloca %struct.obs_data_number, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store double %3, double* %9, align 8
  store i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)* %4, i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)** %10, align 8
  %12 = load i32, i32* @OBS_DATA_NUM_DOUBLE, align 4
  %13 = getelementptr inbounds %struct.obs_data_number, %struct.obs_data_number* %11, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load double, double* %9, align 8
  %15 = getelementptr inbounds %struct.obs_data_number, %struct.obs_data_number* %11, i32 0, i32 0
  store double %14, double* %15, align 8
  %16 = load i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)*, i32 (i32*, i32**, i8*, %struct.obs_data_number*, i32, i32)** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @OBS_DATA_NUMBER, align 4
  %21 = call i32 %16(i32* %17, i32** %18, i8* %19, %struct.obs_data_number* %11, i32 16, i32 %20)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
