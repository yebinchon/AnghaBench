; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getifaddrs.c_network_interfaces_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_getifaddrs.c_network_interfaces_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_network_interface = type { %struct.cgroup_network_interface*, i64 }

@network_interfaces_found = common dso_local global i64 0, align 8
@network_interfaces_added = common dso_local global i64 0, align 8
@network_interfaces_root = common dso_local global %struct.cgroup_network_interface* null, align 8
@network_interfaces_last_used = common dso_local global %struct.cgroup_network_interface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @network_interfaces_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @network_interfaces_cleanup() #0 {
  %1 = alloca %struct.cgroup_network_interface*, align 8
  %2 = alloca %struct.cgroup_network_interface*, align 8
  %3 = alloca %struct.cgroup_network_interface*, align 8
  %4 = load i64, i64* @network_interfaces_found, align 8
  %5 = load i64, i64* @network_interfaces_added, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %62

11:                                               ; preds = %0
  %12 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** @network_interfaces_root, align 8
  store %struct.cgroup_network_interface* %12, %struct.cgroup_network_interface** %1, align 8
  store %struct.cgroup_network_interface* null, %struct.cgroup_network_interface** %2, align 8
  br label %13

13:                                               ; preds = %61, %11
  %14 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %15 = icmp ne %struct.cgroup_network_interface* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %18 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %16
  %26 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** @network_interfaces_last_used, align 8
  %27 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %28 = icmp eq %struct.cgroup_network_interface* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  store %struct.cgroup_network_interface* %30, %struct.cgroup_network_interface** @network_interfaces_last_used, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  store %struct.cgroup_network_interface* %32, %struct.cgroup_network_interface** %3, align 8
  %33 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %34 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** @network_interfaces_root, align 8
  %35 = icmp eq %struct.cgroup_network_interface* %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %38 = icmp ne %struct.cgroup_network_interface* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %41 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %40, i32 0, i32 0
  %42 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %41, align 8
  store %struct.cgroup_network_interface* %42, %struct.cgroup_network_interface** %1, align 8
  store %struct.cgroup_network_interface* %42, %struct.cgroup_network_interface** @network_interfaces_root, align 8
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %45 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %44, i32 0, i32 0
  %46 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %45, align 8
  store %struct.cgroup_network_interface* %46, %struct.cgroup_network_interface** %1, align 8
  %47 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %2, align 8
  %48 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %47, i32 0, i32 0
  store %struct.cgroup_network_interface* %46, %struct.cgroup_network_interface** %48, align 8
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %51 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %50, i32 0, i32 0
  store %struct.cgroup_network_interface* null, %struct.cgroup_network_interface** %51, align 8
  %52 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %3, align 8
  %53 = call i32 @network_interface_free(%struct.cgroup_network_interface* %52)
  br label %61

54:                                               ; preds = %16
  %55 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  store %struct.cgroup_network_interface* %55, %struct.cgroup_network_interface** %2, align 8
  %56 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %57 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %1, align 8
  %59 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %58, i32 0, i32 0
  %60 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %59, align 8
  store %struct.cgroup_network_interface* %60, %struct.cgroup_network_interface** %1, align 8
  br label %61

61:                                               ; preds = %54, %49
  br label %13

62:                                               ; preds = %10, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @network_interface_free(%struct.cgroup_network_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
