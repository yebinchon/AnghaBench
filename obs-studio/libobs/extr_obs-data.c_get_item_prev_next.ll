; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item_prev_next.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item_prev_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data = type { %struct.obs_data_item* }
%struct.obs_data_item = type { %struct.obs_data_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_data_item** (%struct.obs_data*, %struct.obs_data_item*)* @get_item_prev_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_data_item** @get_item_prev_next(%struct.obs_data* %0, %struct.obs_data_item* %1) #0 {
  %3 = alloca %struct.obs_data_item**, align 8
  %4 = alloca %struct.obs_data*, align 8
  %5 = alloca %struct.obs_data_item*, align 8
  %6 = alloca %struct.obs_data_item**, align 8
  %7 = alloca %struct.obs_data_item*, align 8
  store %struct.obs_data* %0, %struct.obs_data** %4, align 8
  store %struct.obs_data_item* %1, %struct.obs_data_item** %5, align 8
  %8 = load %struct.obs_data_item*, %struct.obs_data_item** %5, align 8
  %9 = icmp ne %struct.obs_data_item* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.obs_data*, %struct.obs_data** %4, align 8
  %12 = icmp ne %struct.obs_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store %struct.obs_data_item** null, %struct.obs_data_item*** %3, align 8
  br label %36

14:                                               ; preds = %10
  %15 = load %struct.obs_data*, %struct.obs_data** %4, align 8
  %16 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %15, i32 0, i32 0
  store %struct.obs_data_item** %16, %struct.obs_data_item*** %6, align 8
  %17 = load %struct.obs_data*, %struct.obs_data** %4, align 8
  %18 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %17, i32 0, i32 0
  %19 = load %struct.obs_data_item*, %struct.obs_data_item** %18, align 8
  store %struct.obs_data_item* %19, %struct.obs_data_item** %7, align 8
  br label %20

20:                                               ; preds = %29, %14
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %7, align 8
  %22 = icmp ne %struct.obs_data_item* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.obs_data_item*, %struct.obs_data_item** %7, align 8
  %25 = load %struct.obs_data_item*, %struct.obs_data_item** %5, align 8
  %26 = icmp eq %struct.obs_data_item* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load %struct.obs_data_item**, %struct.obs_data_item*** %6, align 8
  store %struct.obs_data_item** %28, %struct.obs_data_item*** %3, align 8
  br label %36

29:                                               ; preds = %23
  %30 = load %struct.obs_data_item*, %struct.obs_data_item** %7, align 8
  %31 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %30, i32 0, i32 0
  store %struct.obs_data_item** %31, %struct.obs_data_item*** %6, align 8
  %32 = load %struct.obs_data_item*, %struct.obs_data_item** %7, align 8
  %33 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %32, i32 0, i32 0
  %34 = load %struct.obs_data_item*, %struct.obs_data_item** %33, align 8
  store %struct.obs_data_item* %34, %struct.obs_data_item** %7, align 8
  br label %20

35:                                               ; preds = %20
  store %struct.obs_data_item** null, %struct.obs_data_item*** %3, align 8
  br label %36

36:                                               ; preds = %35, %27, %13
  %37 = load %struct.obs_data_item**, %struct.obs_data_item*** %3, align 8
  ret %struct.obs_data_item** %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
