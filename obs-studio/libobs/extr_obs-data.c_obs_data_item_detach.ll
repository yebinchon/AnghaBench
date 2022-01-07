; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_detach.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { %struct.obs_data_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item*)* @obs_data_item_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_item_detach(%struct.obs_data_item* %0) #0 {
  %2 = alloca %struct.obs_data_item*, align 8
  %3 = alloca %struct.obs_data_item**, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %2, align 8
  %4 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %5 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %8 = call %struct.obs_data_item** @get_item_prev_next(i32 %6, %struct.obs_data_item* %7)
  store %struct.obs_data_item** %8, %struct.obs_data_item*** %3, align 8
  %9 = load %struct.obs_data_item**, %struct.obs_data_item*** %3, align 8
  %10 = icmp ne %struct.obs_data_item** %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %13 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %12, i32 0, i32 0
  %14 = load %struct.obs_data_item*, %struct.obs_data_item** %13, align 8
  %15 = load %struct.obs_data_item**, %struct.obs_data_item*** %3, align 8
  store %struct.obs_data_item* %14, %struct.obs_data_item** %15, align 8
  %16 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %17 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %16, i32 0, i32 0
  store %struct.obs_data_item* null, %struct.obs_data_item** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.obs_data_item** @get_item_prev_next(i32, %struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
