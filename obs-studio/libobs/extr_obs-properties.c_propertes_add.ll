; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_propertes_add.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_propertes_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_properties = type { %struct.obs_property** }
%struct.obs_property = type { %struct.obs_property* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_properties*, %struct.obs_property*)* @propertes_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propertes_add(%struct.obs_properties* %0, %struct.obs_property* %1) #0 {
  %3 = alloca %struct.obs_properties*, align 8
  %4 = alloca %struct.obs_property*, align 8
  store %struct.obs_properties* %0, %struct.obs_properties** %3, align 8
  store %struct.obs_property* %1, %struct.obs_property** %4, align 8
  %5 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  %6 = load %struct.obs_properties*, %struct.obs_properties** %3, align 8
  %7 = getelementptr inbounds %struct.obs_properties, %struct.obs_properties* %6, i32 0, i32 0
  %8 = load %struct.obs_property**, %struct.obs_property*** %7, align 8
  store %struct.obs_property* %5, %struct.obs_property** %8, align 8
  %9 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  %10 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %9, i32 0, i32 0
  %11 = load %struct.obs_properties*, %struct.obs_properties** %3, align 8
  %12 = getelementptr inbounds %struct.obs_properties, %struct.obs_properties* %11, i32 0, i32 0
  store %struct.obs_property** %10, %struct.obs_property*** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
