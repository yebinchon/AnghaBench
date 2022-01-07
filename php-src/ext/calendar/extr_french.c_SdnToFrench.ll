; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_french.c_SdnToFrench.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_french.c_SdnToFrench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_VALID = common dso_local global i64 0, align 8
@LAST_VALID = common dso_local global i64 0, align 8
@FRENCH_SDN_OFFSET = common dso_local global i64 0, align 8
@DAYS_PER_4_YEARS = common dso_local global i64 0, align 8
@DAYS_PER_MONTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SdnToFrench(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @FIRST_VALID, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @LAST_VALID, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %4
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  br label %48

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FRENCH_SDN_OFFSET, align 8
  %25 = sub nsw i64 %23, %24
  %26 = mul nsw i64 %25, 4
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @DAYS_PER_4_YEARS, align 8
  %30 = sdiv i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @DAYS_PER_4_YEARS, align 8
  %35 = srem i64 %33, %34
  %36 = sdiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DAYS_PER_MONTH, align 4
  %40 = sdiv i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DAYS_PER_MONTH, align 4
  %45 = srem i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %22, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
