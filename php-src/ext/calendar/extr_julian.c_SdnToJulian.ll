; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_julian.c_SdnToJulian.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_julian.c_SdnToJulian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i32 0, align 4
@JULIAN_SDN_OFFSET = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i32 0, align 4
@DAYS_PER_4_YEARS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@DAYS_PER_5_MONTHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SdnToJulian(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %96

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LONG_MAX, align 4
  %21 = load i32, i32* @JULIAN_SDN_OFFSET, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sub nsw i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = sdiv i32 %24, 4
  %26 = icmp sgt i32 %19, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LONG_MIN, align 4
  %30 = sdiv i32 %29, 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %18
  br label %96

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 4
  %36 = load i32, i32* @JULIAN_SDN_OFFSET, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sub nsw i32 %37, 1
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %42 = sdiv i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @INT_MAX, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @INT_MIN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %33
  br label %96

52:                                               ; preds = %47
  %53 = load i64, i64* %14, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %57 = srem i32 %55, %56
  %58 = sdiv i32 %57, 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 5
  %62 = sub nsw i32 %61, 3
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %68 = srem i32 %66, %67
  %69 = sdiv i32 %68, 5
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 3
  store i32 %75, i32* %10, align 4
  br label %81

76:                                               ; preds = %52
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 9
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 4800
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %100

96:                                               ; preds = %51, %32, %17
  %97 = load i32*, i32** %6, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
