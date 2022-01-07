; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_dosdev.c_FindSymbolicLinkEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_dosdev.c_FindSymbolicLinkEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@UNICODE_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FindSymbolicLinkEntry(i64* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %4
  %22 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %22, i64* %5, align 8
  br label %60

23:                                               ; preds = %18
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %29, i64* %5, align 8
  br label %60

30:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  %31 = load i64*, i64** %7, align 8
  store i64* %31, i64** %12, align 8
  br label %32

32:                                               ; preds = %55, %30
  %33 = load i64*, i64** %6, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = call i64 @wcscmp(i64* %33, i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %44, i64* %5, align 8
  br label %60

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %12, align 8
  br label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @UNICODE_NULL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %46, label %55

55:                                               ; preds = %51
  br label %32

56:                                               ; preds = %32
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %56, %43, %28, %21
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @wcscmp(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
