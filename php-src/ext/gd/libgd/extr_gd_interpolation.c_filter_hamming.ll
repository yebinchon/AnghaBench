; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_hamming.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_hamming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_hamming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_hamming(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, -1.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %34

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = fmul double -2.000000e+00, %11
  %13 = fsub double %12, 3.000000e+00
  %14 = fmul double 0x3FED70A3E0000000, %13
  %15 = load double, double* %3, align 8
  %16 = fmul double %14, %15
  %17 = load double, double* %3, align 8
  %18 = fmul double %16, %17
  %19 = fadd double %18, 1.000000e+00
  store double %19, double* %2, align 8
  br label %34

20:                                               ; preds = %7
  %21 = load double, double* %3, align 8
  %22 = fcmp olt double %21, 1.000000e+00
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = fmul double 2.000000e+00, %24
  %26 = fsub double %25, 3.000000e+00
  %27 = fmul double 0x3FED70A3E0000000, %26
  %28 = load double, double* %3, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* %3, align 8
  %31 = fmul double %29, %30
  %32 = fadd double %31, 1.000000e+00
  store double %32, double* %2, align 8
  br label %34

33:                                               ; preds = %20
  store double 0.000000e+00, double* %2, align 8
  br label %34

34:                                               ; preds = %33, %23, %10, %6
  %35 = load double, double* %2, align 8
  ret double %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
