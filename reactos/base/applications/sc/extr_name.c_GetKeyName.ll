; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sc/extr_name.c_GetKeyName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sc/extr_name.c_GetKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[SC] OpenSCManager FAILED %lu:\0A\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"[SC] GetServiceKeyName FAILED %lu:\0A\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"[SC] HeapAlloc FAILED %lu:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[SC] GetServiceKeyName SUCCESS  Name = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetKeyName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %7 = load i64, i64* @TRUE, align 8
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %9 = call i32* @OpenSCManager(i32* null, i32* null, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = call i32* (...) @GetLastError()
  %15 = call i32 @_tprintf(i32 %13, i32* %14)
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %4, align 8
  br label %65

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @GetServiceKeyName(i32* %18, i32 %19, i32* null, i32* %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32* (...) @GetLastError()
  %28 = call i32 @_tprintf(i32 %26, i32* %27)
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %4, align 8
  br label %65

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %17
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32* @HeapAlloc(i32 %32, i32 0, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %43 = call i32 @SetLastError(i32 %42)
  %44 = call i32 @_T(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32* (...) @GetLastError()
  %46 = call i32 @_tprintf(i32 %44, i32* %45)
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %4, align 8
  br label %65

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @GetServiceKeyName(i32* %51, i32 %52, i32* %53, i32* %5)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32* (...) @GetLastError()
  %59 = call i32 @_tprintf(i32 %57, i32* %58)
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %4, align 8
  br label %65

61:                                               ; preds = %48
  %62 = call i32 @_T(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @_tprintf(i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %56, %41, %25, %12
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (...) @ReportLastError()
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32*, i32** %6, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, i32* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32*, i32** %3, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @CloseServiceHandle(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i32* @OpenSCManager(i32*, i32*, i32) #1

declare dso_local i32 @_tprintf(i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @GetLastError(...) #1

declare dso_local i32 @GetServiceKeyName(i32*, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ReportLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
