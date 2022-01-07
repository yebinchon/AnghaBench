; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_item_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.obs_data_item*)* @get_item_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_item_array(%struct.obs_data_item* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_data_item*, align 8
  %4 = alloca i32**, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %3, align 8
  %5 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  %6 = icmp ne %struct.obs_data_item* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  %10 = call i64 @get_item_data(%struct.obs_data_item* %9)
  %11 = inttoptr i64 %10 to i32**
  store i32** %11, i32*** %4, align 8
  %12 = load i32**, i32*** %4, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32**, i32*** %4, align 8
  %16 = load i32*, i32** %15, align 8
  br label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32* [ %16, %14 ], [ null, %17 ]
  store i32* %19, i32** %2, align 8
  br label %20

20:                                               ; preds = %18, %7
  %21 = load i32*, i32** %2, align 8
  ret i32* %21
}

declare dso_local i64 @get_item_data(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
