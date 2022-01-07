; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getifaddrs.c_network_interface_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getifaddrs.c_network_interface_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_network_interface = type { %struct.cgroup_network_interface*, i32, i32, i32, i32, i32 }

@network_interfaces_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_network_interface*)* @network_interface_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @network_interface_free(%struct.cgroup_network_interface* %0) #0 {
  %2 = alloca %struct.cgroup_network_interface*, align 8
  store %struct.cgroup_network_interface* %0, %struct.cgroup_network_interface** %2, align 8
  %3 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %4 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %10 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @rrdset_is_obsolete(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %15 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %21 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rrdset_is_obsolete(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %26 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %32 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rrdset_is_obsolete(i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %37 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %43 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rrdset_is_obsolete(i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %48 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %54 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rrdset_is_obsolete(i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* @network_interfaces_added, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @network_interfaces_added, align 4
  %60 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %61 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %60, i32 0, i32 0
  %62 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %61, align 8
  %63 = call i32 @freez(%struct.cgroup_network_interface* %62)
  %64 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %65 = call i32 @freez(%struct.cgroup_network_interface* %64)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rrdset_is_obsolete(i32) #1

declare dso_local i32 @freez(%struct.cgroup_network_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
