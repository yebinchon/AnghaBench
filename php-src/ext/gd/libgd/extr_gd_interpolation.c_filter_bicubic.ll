; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_bicubic.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_bicubic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_bicubic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_bicubic(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = call i64 @fabs(double %6)
  %8 = sitofp i64 %7 to double
  store double %8, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = load double, double* %4, align 8
  %11 = fmul double %9, %10
  store double %11, double* %5, align 8
  %12 = load double, double* %4, align 8
  %13 = fcmp olt double %12, 1.000000e+00
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load double, double* %5, align 8
  %16 = fmul double 2.000000e+00, %15
  %17 = fsub double 1.000000e+00, %16
  %18 = load double, double* %5, align 8
  %19 = load double, double* %4, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %2, align 8
  br label %37

22:                                               ; preds = %1
  %23 = load double, double* %4, align 8
  %24 = fcmp olt double %23, 2.000000e+00
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load double, double* %4, align 8
  %27 = fmul double 8.000000e+00, %26
  %28 = fsub double 4.000000e+00, %27
  %29 = load double, double* %5, align 8
  %30 = fmul double 5.000000e+00, %29
  %31 = fadd double %28, %30
  %32 = load double, double* %5, align 8
  %33 = load double, double* %4, align 8
  %34 = fmul double %32, %33
  %35 = fsub double %31, %34
  store double %35, double* %2, align 8
  br label %37

36:                                               ; preds = %22
  store double 0.000000e+00, double* %2, align 8
  br label %37

37:                                               ; preds = %36, %25, %14
  %38 = load double, double* %2, align 8
  ret double %38
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
