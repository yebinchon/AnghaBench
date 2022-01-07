; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_default_range_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_default_range_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_RANGE_INEQ_SEL = common dso_local global double 0.000000e+00, align 8
@DEFAULT_INEQ_SEL = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @default_range_selectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @default_range_selectivity(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 129, label %5
    i32 138, label %6
    i32 140, label %6
    i32 139, label %7
    i32 137, label %7
    i32 132, label %9
    i32 133, label %9
    i32 135, label %9
    i32 136, label %9
    i32 134, label %9
    i32 128, label %9
    i32 131, label %9
    i32 130, label %9
  ]

5:                                                ; preds = %1
  store double 1.000000e-02, double* %2, align 8
  br label %12

6:                                                ; preds = %1, %1
  store double 5.000000e-03, double* %2, align 8
  br label %12

7:                                                ; preds = %1, %1
  %8 = load double, double* @DEFAULT_RANGE_INEQ_SEL, align 8
  store double %8, double* %2, align 8
  br label %12

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %10 = load double, double* @DEFAULT_INEQ_SEL, align 8
  store double %10, double* %2, align 8
  br label %12

11:                                               ; preds = %1
  store double 1.000000e-02, double* %2, align 8
  br label %12

12:                                               ; preds = %11, %9, %7, %6, %5
  %13 = load double, double* %2, align 8
  ret double %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
