; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_GetFileTimeString.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_eventvwr.c_GetFileTimeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_LONGDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 44, i32 32, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetFileTimeString(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @FileTimeToLocalFileTime(i32 %16, i32* %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @FileTimeToSystemTime(i32* %8, i32* %9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %19
  %25 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %26 = load i32, i32* @DATE_LONGDATE, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @GetDateFormatW(i32 %25, i32 %26, i32* %9, i32* null, i32 %27, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @StringCchCopyExW(i32 %43, i64 %44, i8* bitcast ([3 x i32]* @.str to i8*), i32* %13, i64* %12, i32 0)
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @GetTimeFormatW(i32 %47, i32 0, i32* %9, i32* null, i32 %48, i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %35
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @FileTimeToLocalFileTime(i32, i32*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i32, i64) #1

declare dso_local i32 @StringCchCopyExW(i32, i64, i8*, i32*, i64*, i32) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
