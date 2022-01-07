; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_data_release.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_data_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i64 }

@OBS_DATA_OBJECT = common dso_local global i64 0, align 8
@OBS_DATA_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item*)* @item_data_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @item_data_release(%struct.obs_data_item* %0) #0 {
  %2 = alloca %struct.obs_data_item*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %2, align 8
  %5 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %6 = call i32 @obs_data_item_has_user_value(%struct.obs_data_item* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %11 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBS_DATA_OBJECT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %17 = call i32* @get_item_obj(%struct.obs_data_item* %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @obs_data_release(i32* %18)
  br label %32

20:                                               ; preds = %9
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %22 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBS_DATA_ARRAY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %28 = call i32* @get_item_array(%struct.obs_data_item* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @obs_data_array_release(i32* %29)
  br label %31

31:                                               ; preds = %26, %20
  br label %32

32:                                               ; preds = %8, %31, %15
  ret void
}

declare dso_local i32 @obs_data_item_has_user_value(%struct.obs_data_item*) #1

declare dso_local i32* @get_item_obj(%struct.obs_data_item*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32* @get_item_array(%struct.obs_data_item*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
