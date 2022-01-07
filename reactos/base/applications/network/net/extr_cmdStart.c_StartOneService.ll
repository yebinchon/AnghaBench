; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStart.c_StartOneService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStart.c_StartOneService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@SERVICES_ACTIVE_DATABASE = common dso_local global i32 0, align 4
@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @StartOneService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartOneService(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32** null, i32*** %7, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @SERVICES_ACTIVE_DATABASE, align 4
  %13 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %14 = call i32* @OpenSCManagerW(i32* null, i32 %12, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i64 (...) @GetLastError()
  store i64 %18, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32**, i32*** %4, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @SERVICE_START, align 4
  %25 = call i32* @OpenServiceW(i32* %20, i32* %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i64 (...) @GetLastError()
  store i64 %29, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

30:                                               ; preds = %19
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32** @HeapAlloc(i32 %31, i32 0, i32 %36)
  store i32** %37, i32*** %7, align 8
  %38 = load i32**, i32*** %7, align 8
  %39 = icmp eq i32** %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i64 (...) @GetLastError()
  store i64 %41, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %72

42:                                               ; preds = %30
  store i32 2, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32**, i32*** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  store i32* %52, i32** %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, 2
  %66 = load i32**, i32*** %7, align 8
  %67 = call i32 @StartServiceW(i32* %62, i64 %65, i32** %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = call i64 (...) @GetLastError()
  store i64 %70, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %40, %28, %17
  %73 = load i32**, i32*** %7, align 8
  %74 = icmp ne i32** %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32**, i32*** %7, align 8
  %78 = ptrtoint i32** %77 to i32
  %79 = call i32 @HeapFree(i32 %76, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32*, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @CloseServiceHandle(i32* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @CloseServiceHandle(i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @StdErr, align 4
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @ConPrintf(i32 %97, i8* bitcast ([12 x i32]* @.str to i8*), i64 %98)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32* @OpenSCManagerW(i32*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @OpenServiceW(i32*, i32*, i32) #1

declare dso_local i32** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @StartServiceW(i32*, i64, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

declare dso_local i32 @ConPrintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
