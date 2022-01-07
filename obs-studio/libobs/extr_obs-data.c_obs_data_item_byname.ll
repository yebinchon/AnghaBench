; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_byname.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_data_item* @obs_data_item_byname(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_data_item*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_data_item*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.obs_data_item* null, %struct.obs_data_item** %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.obs_data_item* @get_item(i32* %11, i8* %12)
  store %struct.obs_data_item* %13, %struct.obs_data_item** %6, align 8
  %14 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  %15 = icmp ne %struct.obs_data_item* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  %18 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %17, i32 0, i32 0
  %19 = call i32 @os_atomic_inc_long(i32* %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  store %struct.obs_data_item* %21, %struct.obs_data_item** %3, align 8
  br label %22

22:                                               ; preds = %20, %9
  %23 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  ret %struct.obs_data_item* %23
}

declare dso_local %struct.obs_data_item* @get_item(i32*, i8*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
