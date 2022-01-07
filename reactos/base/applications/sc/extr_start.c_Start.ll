; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_start.c_Start.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_start.c_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[SC] OpenService FAILED %lu:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[SC] StartService FAILED %lu:\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Start(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %13 = call i32* @OpenSCManager(i32* null, i32* null, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, ...) @_tprintf(i32 %17, i32 %18)
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %10, align 8
  br label %64

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SERVICE_START, align 4
  %25 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @OpenService(i32* %22, i32 %23, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, ...) @_tprintf(i32 %31, i32 %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %10, align 8
  br label %64

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @StartService(i32* %40, i64 %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, ...) @_tprintf(i32 %46, i32 %47)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %10, align 8
  br label %64

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = call i32* @QueryService(i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* @TRUE, align 8
  %59 = call i32 @PrintService(i32 %56, i32* null, i32* %57, i64 %58)
  %60 = call i32 (...) @GetProcessHeap()
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @HeapFree(i32 %60, i32 0, i32* %61)
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63, %45, %30, %16
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @FALSE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @ReportLastError()
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @CloseServiceHandle(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @CloseServiceHandle(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %10, align 8
  ret i64 %83
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, ...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i32 @StartService(i32*, i64, i32*) #1

declare dso_local i32* @QueryService(i32) #1

declare dso_local i32 @PrintService(i32, i32*, i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
