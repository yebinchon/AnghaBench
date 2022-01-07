; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i64, i64 }

@netdev_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev*)* @netdev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_free(%struct.netdev* %0) #0 {
  %2 = alloca %struct.netdev*, align 8
  store %struct.netdev* %0, %struct.netdev** %2, align 8
  %3 = load %struct.netdev*, %struct.netdev** %2, align 8
  %4 = call i32 @netdev_charts_release(%struct.netdev* %3)
  %5 = load %struct.netdev*, %struct.netdev** %2, align 8
  %6 = call i32 @netdev_free_chart_strings(%struct.netdev* %5)
  %7 = load %struct.netdev*, %struct.netdev** %2, align 8
  %8 = getelementptr inbounds %struct.netdev, %struct.netdev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @freez(i8* %10)
  %12 = load %struct.netdev*, %struct.netdev** %2, align 8
  %13 = getelementptr inbounds %struct.netdev, %struct.netdev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @freez(i8* %15)
  %17 = load %struct.netdev*, %struct.netdev** %2, align 8
  %18 = bitcast %struct.netdev* %17 to i8*
  %19 = call i32 @freez(i8* %18)
  %20 = load i32, i32* @netdev_added, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @netdev_added, align 4
  ret void
}

declare dso_local i32 @netdev_charts_release(%struct.netdev*) #1

declare dso_local i32 @netdev_free_chart_strings(%struct.netdev*) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
