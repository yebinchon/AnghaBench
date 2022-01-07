; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_gregor.c_GregorianToSdn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_gregor.c_GregorianToSdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAYS_PER_400_YEARS = common dso_local global i32 0, align 4
@DAYS_PER_4_YEARS = common dso_local global i32 0, align 4
@DAYS_PER_5_MONTHS = common dso_local global i32 0, align 4
@GREGOR_SDN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GregorianToSdn(i32 %0, i32 %1, i32 %2) #0 {
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
  %14 = icmp slt i32 %13, -4714
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
  br label %85

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -4714
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 11
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %85

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 11
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 25
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %85

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 4801
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 4800
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 3
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 9
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, 100
  %66 = load i32, i32* @DAYS_PER_400_YEARS, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sdiv i32 %67, 4
  %69 = load i32, i32* %8, align 4
  %70 = srem i32 %69, 100
  %71 = load i32, i32* @DAYS_PER_4_YEARS, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sdiv i32 %72, 4
  %74 = add nsw i32 %68, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DAYS_PER_5_MONTHS, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %77, 2
  %79 = sdiv i32 %78, 5
  %80 = add nsw i32 %74, %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @GREGOR_SDN_OFFSET, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %63, %41, %34, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
