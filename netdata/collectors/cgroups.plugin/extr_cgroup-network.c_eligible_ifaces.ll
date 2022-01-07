; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_eligible_ifaces.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_eligible_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { %struct.iface* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eligible_ifaces(%struct.iface* %0) #0 {
  %2 = alloca %struct.iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iface*, align 8
  store %struct.iface* %0, %struct.iface** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.iface*, %struct.iface** %2, align 8
  store %struct.iface* %5, %struct.iface** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.iface*, %struct.iface** %4, align 8
  %8 = icmp ne %struct.iface* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.iface*, %struct.iface** %4, align 8
  %11 = call i64 @iface_is_eligible(%struct.iface* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.iface*, %struct.iface** %4, align 8
  %19 = getelementptr inbounds %struct.iface, %struct.iface* %18, i32 0, i32 0
  %20 = load %struct.iface*, %struct.iface** %19, align 8
  store %struct.iface* %20, %struct.iface** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @iface_is_eligible(%struct.iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
