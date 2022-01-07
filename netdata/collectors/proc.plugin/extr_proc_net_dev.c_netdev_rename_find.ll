; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_find.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_rename_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_rename = type { i64, i32, %struct.netdev_rename* }

@netdev_rename_root = common dso_local global %struct.netdev_rename* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netdev_rename* (i8*, i64)* @netdev_rename_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netdev_rename* @netdev_rename_find(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.netdev_rename*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netdev_rename*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.netdev_rename*, %struct.netdev_rename** @netdev_rename_root, align 8
  store %struct.netdev_rename* %7, %struct.netdev_rename** %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load %struct.netdev_rename*, %struct.netdev_rename** %6, align 8
  %10 = icmp ne %struct.netdev_rename* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.netdev_rename*, %struct.netdev_rename** %6, align 8
  %13 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.netdev_rename*, %struct.netdev_rename** %6, align 8
  %20 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strcmp(i8* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load %struct.netdev_rename*, %struct.netdev_rename** %6, align 8
  store %struct.netdev_rename* %25, %struct.netdev_rename** %3, align 8
  br label %32

26:                                               ; preds = %17, %11
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.netdev_rename*, %struct.netdev_rename** %6, align 8
  %29 = getelementptr inbounds %struct.netdev_rename, %struct.netdev_rename* %28, i32 0, i32 2
  %30 = load %struct.netdev_rename*, %struct.netdev_rename** %29, align 8
  store %struct.netdev_rename* %30, %struct.netdev_rename** %6, align 8
  br label %8

31:                                               ; preds = %8
  store %struct.netdev_rename* null, %struct.netdev_rename** %3, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.netdev_rename*, %struct.netdev_rename** %3, align 8
  ret %struct.netdev_rename* %33
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
