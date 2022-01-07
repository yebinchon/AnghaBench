; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_julian.c_JulianToSdn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_julian.c_JulianToSdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAYS_PER_4_YEARS = common dso_local global i32 0, align 4
@DAYS_PER_5_MONTHS = common dso_local global i32 0, align 4
@JULIAN_SDN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JulianToSdn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, -4713
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 12
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 31
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18, %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %74

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -4713
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %74

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 4801
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 4800
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 3
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 9
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %66, 2
  %68 = sdiv i32 %67, 5
  %69 = add nsw i32 %63, %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @JULIAN_SDN_OFFSET, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %59, %37, %27
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
