; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamp_no_overflow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_date.c_date2timestamp_no_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@USECS_PER_DAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @date2timestamp_no_overflow(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = call i64 @DATE_IS_NOBEGIN(double %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load double, double* @DBL_MAX, align 8
  %9 = fneg double %8
  store double %9, double* %3, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load double, double* %2, align 8
  %12 = call i64 @DATE_IS_NOEND(double %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load double, double* @DBL_MAX, align 8
  store double %15, double* %3, align 8
  br label %21

16:                                               ; preds = %10
  %17 = load double, double* %2, align 8
  %18 = load i64, i64* @USECS_PER_DAY, align 8
  %19 = sitofp i64 %18 to double
  %20 = fmul double %17, %19
  store double %20, double* %3, align 8
  br label %21

21:                                               ; preds = %16, %14
  br label %22

22:                                               ; preds = %21, %7
  %23 = load double, double* %3, align 8
  ret double %23
}

declare dso_local i64 @DATE_IS_NOBEGIN(double) #1

declare dso_local i64 @DATE_IS_NOEND(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
