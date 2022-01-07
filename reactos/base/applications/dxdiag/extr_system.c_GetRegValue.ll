; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetRegValue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetRegValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRegValue(i32 %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %21 = call i64 @RegOpenKeyExW(i32 %18, i32* %19, i32 0, i32 %20, i32* %14)
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %7, align 4
  br label %58

26:                                               ; preds = %6
  %27 = load i64, i64* %13, align 8
  store i64 %27, i64* %17, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = call i64 @RegQueryValueExW(i32 %28, i32* %29, i32* null, i64* %16, i32 %31, i64* %17)
  store i64 %32, i64* %15, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @RegCloseKey(i32 %33)
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %7, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 8
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %7, align 4
  br label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = udiv i64 %53, 4
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %49, %44, %38, %24
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
