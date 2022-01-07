; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_hermite.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_hermite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_hermite(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fneg double %8
  br label %12

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi double [ %9, %7 ], [ %11, %10 ]
  store double %13, double* %4, align 8
  %14 = load double, double* %4, align 8
  %15 = fcmp olt double %14, 1.000000e+00
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load double, double* %4, align 8
  %18 = fmul double 2.000000e+00, %17
  %19 = fsub double %18, 3.000000e+00
  %20 = load double, double* %4, align 8
  %21 = fmul double %19, %20
  %22 = load double, double* %4, align 8
  %23 = fmul double %21, %22
  %24 = fadd double %23, 1.000000e+00
  store double %24, double* %2, align 8
  br label %26

25:                                               ; preds = %12
  store double 0.000000e+00, double* %2, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load double, double* %2, align 8
  ret double %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
