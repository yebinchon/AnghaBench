; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_query.c_EnumServices.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_query.c_EnumServices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SC_ENUM_PROCESS_INFO = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32, i32, i32, i32)* @EnumServices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumServices(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %21 = call i32* @OpenSCManager(i32* null, i32* null, i32 %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = call i32 (...) @ReportLastError()
  store i32 0, i32* %7, align 4
  br label %90

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32**, i32*** %8, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @EnumServicesStatusEx(i32* %30, i32 %31, i32 %32, i32 %33, i32 %36, i32 %37, i32* %15, i32* %17, i32* %16, i32 %38)
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_MORE_DATA, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @ReportLastError()
  store i32 0, i32* %7, align 4
  br label %90

48:                                               ; preds = %42, %29
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %26
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @HeapAlloc(i32 %51, i32 0, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32**, i32*** %8, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32**, i32*** %8, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @SC_ENUM_PROCESS_INFO, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @EnumServicesStatusEx(i32* %60, i32 %61, i32 %62, i32 %63, i32 %66, i32 %67, i32* %15, i32* %17, i32* %16, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @CloseServiceHandle(i32* %72)
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %7, align 4
  br label %90

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %50
  %77 = call i32 (...) @ReportLastError()
  %78 = load i32**, i32*** %8, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load i32**, i32*** %8, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @HeapFree(i32 %82, i32 0, i32* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @CloseServiceHandle(i32* %87)
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %71, %46, %24
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i64 @EnumServicesStatusEx(i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
