; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_catmullrom.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_catmullrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_catmullrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_catmullrom(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, -2.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %60

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, -1.000000e+00
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fadd double 5.000000e+00, %13
  %15 = fmul double %12, %14
  %16 = fadd double 8.000000e+00, %15
  %17 = fmul double %11, %16
  %18 = fadd double 4.000000e+00, %17
  %19 = fmul double 5.000000e-01, %18
  store double %19, double* %2, align 8
  br label %60

20:                                               ; preds = %7
  %21 = load double, double* %3, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = load double, double* %3, align 8
  %26 = fmul double %24, %25
  %27 = load double, double* %3, align 8
  %28 = fmul double 3.000000e+00, %27
  %29 = fsub double -5.000000e+00, %28
  %30 = fmul double %26, %29
  %31 = fadd double 2.000000e+00, %30
  %32 = fmul double 5.000000e-01, %31
  store double %32, double* %2, align 8
  br label %60

33:                                               ; preds = %20
  %34 = load double, double* %3, align 8
  %35 = fcmp olt double %34, 1.000000e+00
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load double, double* %3, align 8
  %38 = load double, double* %3, align 8
  %39 = fmul double %37, %38
  %40 = load double, double* %3, align 8
  %41 = fmul double 3.000000e+00, %40
  %42 = fadd double -5.000000e+00, %41
  %43 = fmul double %39, %42
  %44 = fadd double 2.000000e+00, %43
  %45 = fmul double 5.000000e-01, %44
  store double %45, double* %2, align 8
  br label %60

46:                                               ; preds = %33
  %47 = load double, double* %3, align 8
  %48 = fcmp olt double %47, 2.000000e+00
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load double, double* %3, align 8
  %51 = load double, double* %3, align 8
  %52 = load double, double* %3, align 8
  %53 = fsub double 5.000000e+00, %52
  %54 = fmul double %51, %53
  %55 = fadd double -8.000000e+00, %54
  %56 = fmul double %50, %55
  %57 = fadd double 4.000000e+00, %56
  %58 = fmul double 5.000000e-01, %57
  store double %58, double* %2, align 8
  br label %60

59:                                               ; preds = %46
  store double 0.000000e+00, double* %2, align 8
  br label %60

60:                                               ; preds = %59, %49, %36, %23, %10, %6
  %61 = load double, double* %2, align 8
  ret double %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
