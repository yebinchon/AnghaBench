; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { %struct.netdev*, i64 }

@netdev_found = common dso_local global i64 0, align 8
@netdev_added = common dso_local global i64 0, align 8
@netdev_root = common dso_local global %struct.netdev* null, align 8
@netdev_last_used = common dso_local global %struct.netdev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @netdev_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_cleanup() #0 {
  %1 = alloca %struct.netdev*, align 8
  %2 = alloca %struct.netdev*, align 8
  %3 = alloca %struct.netdev*, align 8
  %4 = load i64, i64* @netdev_found, align 8
  %5 = load i64, i64* @netdev_added, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %64

11:                                               ; preds = %0
  store i64 0, i64* @netdev_added, align 8
  %12 = load %struct.netdev*, %struct.netdev** @netdev_root, align 8
  store %struct.netdev* %12, %struct.netdev** %1, align 8
  store %struct.netdev* null, %struct.netdev** %2, align 8
  br label %13

13:                                               ; preds = %63, %11
  %14 = load %struct.netdev*, %struct.netdev** %1, align 8
  %15 = icmp ne %struct.netdev* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load %struct.netdev*, %struct.netdev** %1, align 8
  %18 = getelementptr inbounds %struct.netdev, %struct.netdev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %16
  %26 = load %struct.netdev*, %struct.netdev** @netdev_last_used, align 8
  %27 = load %struct.netdev*, %struct.netdev** %1, align 8
  %28 = icmp eq %struct.netdev* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load %struct.netdev*, %struct.netdev** %2, align 8
  store %struct.netdev* %30, %struct.netdev** @netdev_last_used, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.netdev*, %struct.netdev** %1, align 8
  store %struct.netdev* %32, %struct.netdev** %3, align 8
  %33 = load %struct.netdev*, %struct.netdev** %1, align 8
  %34 = load %struct.netdev*, %struct.netdev** @netdev_root, align 8
  %35 = icmp eq %struct.netdev* %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.netdev*, %struct.netdev** %2, align 8
  %38 = icmp ne %struct.netdev* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.netdev*, %struct.netdev** %1, align 8
  %41 = getelementptr inbounds %struct.netdev, %struct.netdev* %40, i32 0, i32 0
  %42 = load %struct.netdev*, %struct.netdev** %41, align 8
  store %struct.netdev* %42, %struct.netdev** %1, align 8
  store %struct.netdev* %42, %struct.netdev** @netdev_root, align 8
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.netdev*, %struct.netdev** %1, align 8
  %45 = getelementptr inbounds %struct.netdev, %struct.netdev* %44, i32 0, i32 0
  %46 = load %struct.netdev*, %struct.netdev** %45, align 8
  store %struct.netdev* %46, %struct.netdev** %1, align 8
  %47 = load %struct.netdev*, %struct.netdev** %2, align 8
  %48 = getelementptr inbounds %struct.netdev, %struct.netdev* %47, i32 0, i32 0
  store %struct.netdev* %46, %struct.netdev** %48, align 8
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.netdev*, %struct.netdev** %3, align 8
  %51 = getelementptr inbounds %struct.netdev, %struct.netdev* %50, i32 0, i32 0
  store %struct.netdev* null, %struct.netdev** %51, align 8
  %52 = load %struct.netdev*, %struct.netdev** %3, align 8
  %53 = call i32 @netdev_free(%struct.netdev* %52)
  br label %63

54:                                               ; preds = %16
  %55 = load i64, i64* @netdev_added, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* @netdev_added, align 8
  %57 = load %struct.netdev*, %struct.netdev** %1, align 8
  store %struct.netdev* %57, %struct.netdev** %2, align 8
  %58 = load %struct.netdev*, %struct.netdev** %1, align 8
  %59 = getelementptr inbounds %struct.netdev, %struct.netdev* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.netdev*, %struct.netdev** %1, align 8
  %61 = getelementptr inbounds %struct.netdev, %struct.netdev* %60, i32 0, i32 0
  %62 = load %struct.netdev*, %struct.netdev** %61, align 8
  store %struct.netdev* %62, %struct.netdev** %1, align 8
  br label %63

63:                                               ; preds = %54, %49
  br label %13

64:                                               ; preds = %10, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_free(%struct.netdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
