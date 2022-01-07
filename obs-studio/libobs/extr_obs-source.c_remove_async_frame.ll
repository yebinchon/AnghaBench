; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_remove_async_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_remove_async_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.async_frame* }
%struct.async_frame = type { i32, %struct.obs_source_frame* }
%struct.obs_source_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_async_frame(%struct.TYPE_5__* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.async_frame*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %7 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %8 = icmp ne %struct.obs_source_frame* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %11 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %9, %2
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.async_frame*, %struct.async_frame** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %24, i64 %25
  store %struct.async_frame* %26, %struct.async_frame** %6, align 8
  %27 = load %struct.async_frame*, %struct.async_frame** %6, align 8
  %28 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %27, i32 0, i32 1
  %29 = load %struct.obs_source_frame*, %struct.obs_source_frame** %28, align 8
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %31 = icmp eq %struct.obs_source_frame* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.async_frame*, %struct.async_frame** %6, align 8
  %34 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %39

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %13

39:                                               ; preds = %32, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
