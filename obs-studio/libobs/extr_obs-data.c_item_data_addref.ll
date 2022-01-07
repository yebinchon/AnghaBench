; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_data_addref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_item_data_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i64 }

@OBS_DATA_OBJECT = common dso_local global i64 0, align 8
@OBS_DATA_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item*)* @item_data_addref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @item_data_addref(%struct.obs_data_item* %0) #0 {
  %2 = alloca %struct.obs_data_item*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %2, align 8
  %5 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %6 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OBS_DATA_OBJECT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %12 = call i32* @get_item_obj(%struct.obs_data_item* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @obs_data_addref(i32* %13)
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %17 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OBS_DATA_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %23 = call i32* @get_item_array(%struct.obs_data_item* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @obs_data_array_addref(i32* %24)
  br label %26

26:                                               ; preds = %21, %15
  br label %27

27:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32* @get_item_obj(%struct.obs_data_item*) #1

declare dso_local i32 @obs_data_addref(i32*) #1

declare dso_local i32* @get_item_array(%struct.obs_data_item*) #1

declare dso_local i32 @obs_data_array_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
