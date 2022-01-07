; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_free_cgroup_network_interfaces.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_free_cgroup_network_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.cgroup_network_interface* }
%struct.cgroup_network_interface = type { i64, i64, %struct.cgroup_network_interface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @free_cgroup_network_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cgroup_network_interfaces(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca %struct.cgroup_network_interface*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %6 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %5, i32 0, i32 0
  %7 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %6, align 8
  %8 = icmp ne %struct.cgroup_network_interface* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %11 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %10, i32 0, i32 0
  %12 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  store %struct.cgroup_network_interface* %12, %struct.cgroup_network_interface** %3, align 8
  %13 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %14 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %13, i32 0, i32 2
  %15 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %14, align 8
  %16 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %17 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %16, i32 0, i32 0
  store %struct.cgroup_network_interface* %15, %struct.cgroup_network_interface** %17, align 8
  %18 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %19 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @netdev_rename_device_del(i64 %20)
  %22 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %23 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @freez(i8* %25)
  %27 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %28 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @freez(i8* %30)
  %32 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %33 = bitcast %struct.cgroup_network_interface* %32 to i8*
  %34 = call i32 @freez(i8* %33)
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local i32 @netdev_rename_device_del(i64) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
