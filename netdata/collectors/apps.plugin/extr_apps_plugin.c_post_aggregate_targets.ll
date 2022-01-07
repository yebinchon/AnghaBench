; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_post_aggregate_targets.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_post_aggregate_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i64, i64, %struct.target* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target*)* @post_aggregate_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_aggregate_targets(%struct.target* %0) #0 {
  %2 = alloca %struct.target*, align 8
  %3 = alloca %struct.target*, align 8
  store %struct.target* %0, %struct.target** %2, align 8
  %4 = load %struct.target*, %struct.target** %2, align 8
  store %struct.target* %4, %struct.target** %3, align 8
  br label %5

5:                                                ; preds = %37, %1
  %6 = load %struct.target*, %struct.target** %3, align 8
  %7 = icmp ne %struct.target* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %5
  %9 = load %struct.target*, %struct.target** %3, align 8
  %10 = getelementptr inbounds %struct.target, %struct.target* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.target*, %struct.target** %3, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.target*, %struct.target** %3, align 8
  %20 = getelementptr inbounds %struct.target, %struct.target* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.target*, %struct.target** %3, align 8
  %23 = getelementptr inbounds %struct.target, %struct.target* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18, %13
  %27 = load %struct.target*, %struct.target** %3, align 8
  %28 = getelementptr inbounds %struct.target, %struct.target* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.target*, %struct.target** %3, align 8
  %31 = getelementptr inbounds %struct.target, %struct.target* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %18
  br label %36

33:                                               ; preds = %8
  %34 = load %struct.target*, %struct.target** %3, align 8
  %35 = getelementptr inbounds %struct.target, %struct.target* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %32
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.target*, %struct.target** %3, align 8
  %39 = getelementptr inbounds %struct.target, %struct.target* %38, i32 0, i32 2
  %40 = load %struct.target*, %struct.target** %39, align 8
  store %struct.target* %40, %struct.target** %3, align 8
  br label %5

41:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
