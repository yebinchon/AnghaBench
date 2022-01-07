; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i32, i32 }
%struct.netdev_rename = type { i32 }

@netdev_pending_renames = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev*)* @netdev_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_rename(%struct.netdev* %0) #0 {
  %2 = alloca %struct.netdev*, align 8
  %3 = alloca %struct.netdev_rename*, align 8
  store %struct.netdev* %0, %struct.netdev** %2, align 8
  %4 = load %struct.netdev*, %struct.netdev** %2, align 8
  %5 = getelementptr inbounds %struct.netdev, %struct.netdev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.netdev*, %struct.netdev** %2, align 8
  %8 = getelementptr inbounds %struct.netdev, %struct.netdev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.netdev_rename* @netdev_rename_find(i32 %6, i32 %9)
  store %struct.netdev_rename* %10, %struct.netdev_rename** %3, align 8
  %11 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %12 = icmp ne %struct.netdev_rename* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.netdev*, %struct.netdev** %2, align 8
  %26 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %27 = call i32 @netdev_rename_cgroup(%struct.netdev* %25, %struct.netdev_rename* %26)
  %28 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* @netdev_pending_renames, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @netdev_pending_renames, align 4
  br label %32

32:                                               ; preds = %24, %19
  ret void
}

declare dso_local %struct.netdev_rename* @netdev_rename_find(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rename_cgroup(%struct.netdev*, %struct.netdev_rename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
