; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmReadString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmReadString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmReadString(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @RegQueryValueExW(i32 %14, i32 %15, i32 0, i64* %10, i32* null, i64* %9)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %4, align 8
  br label %92

22:                                               ; preds = %3
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32* @HeapAlloc(i32 %23, i32 %24, i64 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %30, i64* %4, align 8
  br label %92

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @RegQueryValueExW(i32 %32, i32 %33, i32 0, i64* %10, i32* %34, i64* %9)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, i32* %41)
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %92

44:                                               ; preds = %31
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @REG_EXPAND_SZ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @ExpandEnvironmentStringsW(i32* %49, i32* null, i64 0)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %56 = load i64, i64* %9, align 8
  %57 = mul i64 %56, 4
  %58 = call i32* @HeapAlloc(i32 %54, i32 %55, i64 %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load i64, i64* %9, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i64 @ExpandEnvironmentStringsW(i32* %63, i32* %64, i64 %65)
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %12, align 8
  %70 = load i32**, i32*** %7, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %71, i64* %8, align 8
  br label %77

72:                                               ; preds = %61
  %73 = call i64 (...) @GetLastError()
  store i64 %73, i64* %8, align 8
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @HeapFree(i32 %74, i32 0, i32* %75)
  br label %77

77:                                               ; preds = %72, %68
  br label %80

78:                                               ; preds = %53
  %79 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %77
  br label %83

81:                                               ; preds = %48
  %82 = call i64 (...) @GetLastError()
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @HeapFree(i32 %84, i32 0, i32* %85)
  br label %90

87:                                               ; preds = %44
  %88 = load i32*, i32** %11, align 8
  %89 = load i32**, i32*** %7, align 8
  store i32* %88, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %39, %29, %20
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32, i64*, i32*, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i64 @ExpandEnvironmentStringsW(i32*, i32*, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
