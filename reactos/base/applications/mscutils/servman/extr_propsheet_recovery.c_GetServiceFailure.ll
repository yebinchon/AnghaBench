; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_GetServiceFailure.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_recovery.c_GetServiceFailure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_CONFIG_FAILURE_ACTIONS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @GetServiceFailure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetServiceFailure(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %10 = call i32* @OpenSCManager(i32* null, i32* null, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %6, align 8
  br label %62

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %23 = call i32* @OpenService(i32* %16, i32 %21, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %6, align 8
  br label %62

28:                                               ; preds = %15
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @SERVICE_CONFIG_FAILURE_ACTIONS, align 4
  %31 = call i32 @QueryServiceConfig2(i32* %29, i32 %30, i32* null, i64 0, i64* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %6, align 8
  br label %62

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %28
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i64, i64* %7, align 8
  %42 = call i32* @HeapAlloc(i32 %40, i32 0, i64 %41)
  store i32* %42, i32** %3, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %47 = call i32 @SetLastError(i32 %46)
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %6, align 8
  br label %62

49:                                               ; preds = %39
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @SERVICE_CONFIG_FAILURE_ACTIONS, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @QueryServiceConfig2(i32* %50, i32 %51, i32* %52, i64 %53, i64* %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %6, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %56, %45, %36, %26, %13
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32*, i32** %3, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, i32* %71)
  br label %73

73:                                               ; preds = %69, %66, %62
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @CloseServiceHandle(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %4, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @CloseServiceHandle(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %6, align 8
  ret i64 %86
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @QueryServiceConfig2(i32*, i32, i32*, i64, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
