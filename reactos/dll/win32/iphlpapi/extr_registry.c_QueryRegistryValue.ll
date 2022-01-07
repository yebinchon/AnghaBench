; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_NONE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryRegistryValue(i32 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i64*, i64** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @REG_NONE, align 8
  %14 = load i64*, i64** %8, align 8
  store i64 %13, i64* %14, align 8
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i64, i64* @TRUE, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i64*, i64** %8, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = call i64 @RegQueryValueExW(i32 %19, i32 %20, i32* null, i64* %21, i32* %22, i64* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %52

32:                                               ; preds = %28
  br label %43

33:                                               ; preds = %18
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ERROR_MORE_DATA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, i32* %39)
  br label %42

41:                                               ; preds = %33
  br label %52

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %32
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @HeapAlloc(i32 %44, i32 0, i64 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32* null, i32** %5, align 8
  br label %69

51:                                               ; preds = %43
  br label %15

52:                                               ; preds = %41, %31, %15
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 (...) @GetProcessHeap()
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @HeapFree(i32 %60, i32 0, i32* %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i64*, i64** %9, align 8
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* @REG_NONE, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  store i32* null, i32** %10, align 8
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32*, i32** %10, align 8
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %67, %50
  %70 = load i32*, i32** %5, align 8
  ret i32* %70
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
