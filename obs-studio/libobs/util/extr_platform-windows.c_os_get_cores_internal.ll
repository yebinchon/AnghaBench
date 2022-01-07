; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_get_cores_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_get_cores_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@core_count_initialized = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@RelationProcessorCore = common dso_local global i64 0, align 8
@physical_cores = common dso_local global i32 0, align 4
@logical_cores = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @os_get_cores_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_get_cores_internal() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @core_count_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %61

10:                                               ; preds = %0
  store i32 1, i32* @core_count_initialized, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = call i64 @GetLogicalProcessorInformation(%struct.TYPE_5__* %11, i32* %3)
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %61

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.TYPE_5__* @malloc(i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %1, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = call i64 @GetLogicalProcessorInformation(%struct.TYPE_5__* %20, i32* %3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 16
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %54, %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RelationProcessorCore, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @physical_cores, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @physical_cores, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @num_logical_cores(i32 %45)
  %47 = load i32, i32* @logical_cores, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @logical_cores, align 4
  br label %51

51:                                               ; preds = %39, %33
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 1
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %2, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %17
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %60 = call i32 @free(%struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %58, %16, %9
  ret void
}

declare dso_local i64 @GetLogicalProcessorInformation(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @num_logical_cores(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
