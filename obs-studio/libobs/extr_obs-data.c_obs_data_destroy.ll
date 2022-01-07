; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data = type { i32, %struct.obs_data_item* }
%struct.obs_data_item = type { %struct.obs_data_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data*)* @obs_data_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_destroy(%struct.obs_data* %0) #0 {
  %2 = alloca %struct.obs_data*, align 8
  %3 = alloca %struct.obs_data_item*, align 8
  %4 = alloca %struct.obs_data_item*, align 8
  store %struct.obs_data* %0, %struct.obs_data** %2, align 8
  %5 = load %struct.obs_data*, %struct.obs_data** %2, align 8
  %6 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %5, i32 0, i32 1
  %7 = load %struct.obs_data_item*, %struct.obs_data_item** %6, align 8
  store %struct.obs_data_item* %7, %struct.obs_data_item** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  %10 = icmp ne %struct.obs_data_item* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.obs_data_item*, %struct.obs_data_item** %3, align 8
  %13 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %12, i32 0, i32 0
  %14 = load %struct.obs_data_item*, %struct.obs_data_item** %13, align 8
  store %struct.obs_data_item* %14, %struct.obs_data_item** %4, align 8
  %15 = call i32 @obs_data_item_release(%struct.obs_data_item** %3)
  %16 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  store %struct.obs_data_item* %16, %struct.obs_data_item** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.obs_data*, %struct.obs_data** %2, align 8
  %19 = getelementptr inbounds %struct.obs_data, %struct.obs_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.obs_data*, %struct.obs_data** %2, align 8
  %23 = call i32 @bfree(%struct.obs_data* %22)
  ret void
}

declare dso_local i32 @obs_data_item_release(%struct.obs_data_item**) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @bfree(%struct.obs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
