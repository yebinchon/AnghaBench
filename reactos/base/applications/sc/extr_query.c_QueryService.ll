; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_query.c_QueryService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_query.c_QueryService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryService(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %11 = call i32* @OpenSCManager(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @ReportLastError()
  store i32* null, i32** %2, align 8
  br label %79

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %20 = call i32* @OpenService(i32* %17, i32 %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %58

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @QueryServiceStatusEx(i32* %25, i32 %26, i32* null, i64 %27, i64* %8)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  br label %58

36:                                               ; preds = %31
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @HeapAlloc(i32 %37, i32 0, i64 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %58

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @QueryServiceStatusEx(i32* %45, i32 %46, i32* %47, i64 %48, i64* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %58

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @CloseServiceHandle(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @CloseServiceHandle(i32* %55)
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %2, align 8
  br label %79

58:                                               ; preds = %51, %43, %35, %23
  %59 = call i32 (...) @ReportLastError()
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @HeapFree(i32 %63, i32 0, i32* %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @CloseServiceHandle(i32* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @CloseServiceHandle(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32* null, i32** %2, align 8
  br label %79

79:                                               ; preds = %78, %52, %14
  %80 = load i32*, i32** %2, align 8
  ret i32* %80
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32* @OpenService(i32*, i32, i32) #1

declare dso_local i64 @QueryServiceStatusEx(i32*, i32, i32*, i64, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
