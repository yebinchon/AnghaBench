; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_get_mincount_for_mcv_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mcv.c_get_mincount_for_mcv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double)* @get_mincount_for_mcv_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_mincount_for_mcv_list(i32 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sitofp i32 %10 to double
  store double %11, double* %6, align 8
  %12 = load double, double* %5, align 8
  store double %12, double* %7, align 8
  %13 = load double, double* %6, align 8
  %14 = load double, double* %7, align 8
  %15 = load double, double* %6, align 8
  %16 = fsub double %14, %15
  %17 = fmul double %13, %16
  store double %17, double* %8, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %6, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* %6, align 8
  %22 = fmul double 4.000000e-02, %21
  %23 = load double, double* %7, align 8
  %24 = fsub double %23, 1.000000e+00
  %25 = fmul double %22, %24
  %26 = fadd double %20, %25
  store double %26, double* %9, align 8
  %27 = load double, double* %9, align 8
  %28 = fcmp oeq double %27, 0.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %34

30:                                               ; preds = %2
  %31 = load double, double* %8, align 8
  %32 = load double, double* %9, align 8
  %33 = fdiv double %31, %32
  store double %33, double* %3, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = load double, double* %3, align 8
  ret double %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
