; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_gregor.c_SdnToGregorian.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_gregor.c_SdnToGregorian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i32 0, align 4
@GREGOR_SDN_OFFSET = common dso_local global i32 0, align 4
@DAYS_PER_400_YEARS = common dso_local global i32 0, align 4
@DAYS_PER_4_YEARS = common dso_local global i32 0, align 4
@DAYS_PER_5_MONTHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SdnToGregorian(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LONG_MAX, align 4
  %20 = load i32, i32* @GREGOR_SDN_OFFSET, align 4
  %21 = mul nsw i32 4, %20
  %22 = sub nsw i32 %19, %21
  %23 = sdiv i32 %22, 4
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %4
  br label %88

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GREGOR_SDN_OFFSET, align 4
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 %29, 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @DAYS_PER_400_YEARS, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @DAYS_PER_400_YEARS, align 4
  %37 = srem i32 %35, %36
  %38 = sdiv i32 %37, 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 %39, 3
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 100
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %49 = srem i32 %47, %48
  %50 = sdiv i32 %49, 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %52, 5
  %54 = sub nsw i32 %53, 3
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %60 = srem i32 %58, %59
  %61 = sdiv i32 %60, 5
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %68

65:                                               ; preds = %26
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %11, align 4
  br label %73

68:                                               ; preds = %26
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 9
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 4800
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %92

88:                                               ; preds = %25
  %89 = load i32*, i32** %6, align 8
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
