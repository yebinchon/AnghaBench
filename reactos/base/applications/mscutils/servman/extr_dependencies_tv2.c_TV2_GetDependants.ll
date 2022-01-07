; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_GetDependants.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_dependencies_tv2.c_TV2_GetDependants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@SERVICE_ENUMERATE_DEPENDENTS = common dso_local global i32 0, align 4
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_STATE_ALL = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ProcessHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TV2_GetDependants(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %11 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %18 = load i32, i32* @SERVICE_ENUMERATE_DEPENDENTS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @OpenServiceW(i64 %15, i32 %16, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %28 = call i64 @EnumDependentServicesW(i64 %26, i32 %27, i32* null, i32 0, i32* %8, i32* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %25
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_MORE_DATA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @HeapAlloc(i32 %35, i32 0, i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @SERVICE_STATE_ALL, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @EnumDependentServicesW(i64 %42, i32 %43, i32* %44, i32 %45, i32* %8, i32* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @ProcessHeap, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, i32* %53)
  store i32* null, i32** %7, align 8
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %30, %25
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @CloseServiceHandle(i64 %58)
  br label %60

60:                                               ; preds = %57, %14
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @CloseServiceHandle(i64 %61)
  br label %63

63:                                               ; preds = %60, %2
  %64 = load i32*, i32** %7, align 8
  ret i32* %64
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i64 @EnumDependentServicesW(i64, i32, i32*, i32, i32*, i32*) #1

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
