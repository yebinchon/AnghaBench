; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { %struct.obs_data_item* }
%struct.obs_data = type { %struct.obs_data_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_data_item* (%struct.obs_data*, i8*)* @get_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_data_item* @get_item(%struct.obs_data* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_data_item*, align 8
  %4 = alloca %struct.obs_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_data_item*, align 8
  store %struct.obs_data* %0, %struct.obs_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.obs_data*, %struct.obs_data** %4, align 8
  %8 = icmp ne %struct.obs_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.obs_data_item* null, %struct.obs_data_item** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.obs_data*, %struct.obs_data** %4, align 8
  %12 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %11, i32 0, i32 0
  %13 = load %struct.obs_data_item*, %struct.obs_data_item** %12, align 8
  store %struct.obs_data_item* %13, %struct.obs_data_item** %6, align 8
  br label %14

14:                                               ; preds = %25, %10
  %15 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  %16 = icmp ne %struct.obs_data_item* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  %19 = call i32 @get_item_name(%struct.obs_data_item* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  store %struct.obs_data_item* %24, %struct.obs_data_item** %3, align 8
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  %27 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %26, i32 0, i32 0
  %28 = load %struct.obs_data_item*, %struct.obs_data_item** %27, align 8
  store %struct.obs_data_item* %28, %struct.obs_data_item** %6, align 8
  br label %14

29:                                               ; preds = %14
  store %struct.obs_data_item* null, %struct.obs_data_item** %3, align 8
  br label %30

30:                                               ; preds = %29, %23, %9
  %31 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  ret %struct.obs_data_item* %31
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @get_item_name(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
