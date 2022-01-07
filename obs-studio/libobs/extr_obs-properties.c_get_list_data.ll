; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_get_list_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_get_list_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_data = type { i32 }
%struct.obs_property = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_data* (%struct.obs_property*)* @get_list_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_data* @get_list_data(%struct.obs_property* %0) #0 {
  %2 = alloca %struct.list_data*, align 8
  %3 = alloca %struct.obs_property*, align 8
  store %struct.obs_property* %0, %struct.obs_property** %3, align 8
  %4 = load %struct.obs_property*, %struct.obs_property** %3, align 8
  %5 = icmp ne %struct.obs_property* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.obs_property*, %struct.obs_property** %3, align 8
  %8 = call i32 @is_combo(%struct.obs_property* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  store %struct.list_data* null, %struct.list_data** %2, align 8
  br label %14

11:                                               ; preds = %6
  %12 = load %struct.obs_property*, %struct.obs_property** %3, align 8
  %13 = call %struct.list_data* @get_property_data(%struct.obs_property* %12)
  store %struct.list_data* %13, %struct.list_data** %2, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.list_data*, %struct.list_data** %2, align 8
  ret %struct.list_data* %15
}

declare dso_local i32 @is_combo(%struct.obs_property*) #1

declare dso_local %struct.list_data* @get_property_data(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
