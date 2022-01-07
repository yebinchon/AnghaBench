; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_double.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i32 }
%struct.obs_data_number = type { i64, double, i64 }

@OBS_DATA_NUM_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.obs_data_item*, %struct.obs_data_number* (%struct.obs_data_item*)*)* @item_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @item_double(%struct.obs_data_item* %0, %struct.obs_data_number* (%struct.obs_data_item*)* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.obs_data_item*, align 8
  %5 = alloca %struct.obs_data_number* (%struct.obs_data_item*)*, align 8
  %6 = alloca %struct.obs_data_number*, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %4, align 8
  store %struct.obs_data_number* (%struct.obs_data_item*)* %1, %struct.obs_data_number* (%struct.obs_data_item*)** %5, align 8
  %7 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %8 = icmp ne %struct.obs_data_item* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.obs_data_number* (%struct.obs_data_item*)*, %struct.obs_data_number* (%struct.obs_data_item*)** %5, align 8
  %11 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %12 = call %struct.obs_data_number* %10(%struct.obs_data_item* %11)
  %13 = icmp ne %struct.obs_data_number* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.obs_data_number* (%struct.obs_data_item*)*, %struct.obs_data_number* (%struct.obs_data_item*)** %5, align 8
  %16 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %17 = call %struct.obs_data_number* %15(%struct.obs_data_item* %16)
  store %struct.obs_data_number* %17, %struct.obs_data_number** %6, align 8
  %18 = load %struct.obs_data_number*, %struct.obs_data_number** %6, align 8
  %19 = getelementptr inbounds %struct.obs_data_number, %struct.obs_data_number* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBS_DATA_NUM_INT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.obs_data_number*, %struct.obs_data_number** %6, align 8
  %25 = getelementptr inbounds %struct.obs_data_number, %struct.obs_data_number* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  br label %32

28:                                               ; preds = %14
  %29 = load %struct.obs_data_number*, %struct.obs_data_number** %6, align 8
  %30 = getelementptr inbounds %struct.obs_data_number, %struct.obs_data_number* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi double [ %27, %23 ], [ %31, %28 ]
  store double %33, double* %3, align 8
  br label %35

34:                                               ; preds = %9, %2
  store double 0.000000e+00, double* %3, align 8
  br label %35

35:                                               ; preds = %34, %32
  %36 = load double, double* %3, align 8
  ret double %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
