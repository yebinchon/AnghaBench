; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_file_changed.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_changed(%struct.stat* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.timespec*, align 8
  store %struct.stat* %0, %struct.stat** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %6 = load %struct.stat*, %struct.stat** %4, align 8
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.timespec*, %struct.timespec** %5, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.stat*, %struct.stat** %4, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.timespec*, %struct.timespec** %5, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br label %23

23:                                               ; preds = %14, %2
  %24 = phi i1 [ false, %2 ], [ %22, %14 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

29:                                               ; preds = %23
  %30 = load %struct.stat*, %struct.stat** %4, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.timespec*, %struct.timespec** %5, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.stat*, %struct.stat** %4, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.timespec*, %struct.timespec** %5, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
