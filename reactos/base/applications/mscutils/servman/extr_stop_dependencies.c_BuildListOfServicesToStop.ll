; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_stop_dependencies.c_BuildListOfServicesToStop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_stop_dependencies.c_BuildListOfServicesToStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SERVICE_STOPPED = common dso_local global i64 0, align 8
@SERVICE_STOP_PENDING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @BuildListOfServicesToStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildListOfServicesToStop(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_6__* @TV2_GetDependants(i32 %10, i64* %6)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SERVICE_STOPPED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SERVICE_STOP_PENDING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @AddServiceToList(i32* %38, i32 %43)
  %45 = load i32*, i32** %3, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %28, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %15

51:                                               ; preds = %15
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %51, %2
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_6__* @TV2_GetDependants(i32, i64*) #1

declare dso_local i32 @AddServiceToList(i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
