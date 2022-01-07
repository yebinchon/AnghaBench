; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_bspline.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_bspline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_bspline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_bspline(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %3, align 8
  %11 = load double, double* %3, align 8
  %12 = fcmp ogt double %11, 2.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %72

14:                                               ; preds = %1
  %15 = load double, double* %3, align 8
  %16 = fsub double %15, 1.000000e+00
  store double %16, double* %8, align 8
  %17 = load double, double* %3, align 8
  %18 = fadd double %17, 1.000000e+00
  store double %18, double* %9, align 8
  %19 = load double, double* %3, align 8
  %20 = fadd double %19, 2.000000e+00
  store double %20, double* %10, align 8
  %21 = load double, double* %10, align 8
  %22 = fcmp ole double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store double 0.000000e+00, double* %4, align 8
  br label %30

24:                                               ; preds = %14
  %25 = load double, double* %10, align 8
  %26 = load double, double* %10, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %10, align 8
  %29 = fmul double %27, %28
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load double, double* %9, align 8
  %32 = fcmp ole double %31, 0.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store double 0.000000e+00, double* %5, align 8
  br label %40

34:                                               ; preds = %30
  %35 = load double, double* %9, align 8
  %36 = load double, double* %9, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %9, align 8
  %39 = fmul double %37, %38
  store double %39, double* %5, align 8
  br label %40

40:                                               ; preds = %34, %33
  %41 = load double, double* %3, align 8
  %42 = fcmp ole double %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store double 0.000000e+00, double* %6, align 8
  br label %50

44:                                               ; preds = %40
  %45 = load double, double* %3, align 8
  %46 = load double, double* %3, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %3, align 8
  %49 = fmul double %47, %48
  store double %49, double* %6, align 8
  br label %50

50:                                               ; preds = %44, %43
  %51 = load double, double* %8, align 8
  %52 = fcmp ole double %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store double 0.000000e+00, double* %7, align 8
  br label %60

54:                                               ; preds = %50
  %55 = load double, double* %8, align 8
  %56 = load double, double* %8, align 8
  %57 = fmul double %55, %56
  %58 = load double, double* %8, align 8
  %59 = fmul double %57, %58
  store double %59, double* %7, align 8
  br label %60

60:                                               ; preds = %54, %53
  %61 = load double, double* %4, align 8
  %62 = load double, double* %5, align 8
  %63 = fmul double 4.000000e+00, %62
  %64 = fsub double %61, %63
  %65 = load double, double* %6, align 8
  %66 = fmul double 6.000000e+00, %65
  %67 = fadd double %64, %66
  %68 = load double, double* %7, align 8
  %69 = fmul double 4.000000e+00, %68
  %70 = fsub double %67, %69
  %71 = fmul double 0x3FC5555560000000, %70
  store double %71, double* %2, align 8
  br label %72

72:                                               ; preds = %60, %13
  %73 = load double, double* %2, align 8
  ret double %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
