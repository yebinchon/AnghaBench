; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetServiceConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %7 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %8 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %15 = call i64 @OpenServiceW(i64 %12, i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @QueryServiceConfigW(i64 %19, i32* null, i32 0, i32* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @HeapAlloc(i32 %27, i32 0, i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @QueryServiceConfigW(i64 %34, i32* %35, i32 %36, i32* %6)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, i32* %41)
  store i32* null, i32** %3, align 8
  br label %43

43:                                               ; preds = %39, %33
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @CloseServiceHandle(i64 %47)
  br label %49

49:                                               ; preds = %46, %11
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @CloseServiceHandle(i64 %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i32 @QueryServiceConfigW(i64, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
