; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_generalized_cubic.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_generalized_cubic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_FILTER_GENERALIZED_CUBIC = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_generalized_cubic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_generalized_cubic(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  %7 = load double, double* @DEFAULT_FILTER_GENERALIZED_CUBIC, align 8
  %8 = fneg double %7
  store double %8, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = call i64 @fabs(double %9)
  %11 = sitofp i64 %10 to double
  store double %11, double* %5, align 8
  %12 = load double, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = fmul double %12, %13
  store double %14, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = fcmp olt double %15, 1.000000e+00
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load double, double* %4, align 8
  %19 = fadd double %18, 2.000000e+00
  %20 = load double, double* %6, align 8
  %21 = fmul double %19, %20
  %22 = load double, double* %5, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %4, align 8
  %25 = fadd double %24, 3.000000e+00
  %26 = load double, double* %6, align 8
  %27 = fmul double %25, %26
  %28 = fsub double %23, %27
  %29 = fadd double %28, 1.000000e+00
  store double %29, double* %2, align 8
  br label %53

30:                                               ; preds = %1
  %31 = load double, double* %5, align 8
  %32 = fcmp olt double %31, 2.000000e+00
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load double, double* %4, align 8
  %35 = load double, double* %6, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* %5, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %4, align 8
  %40 = fmul double 5.000000e+00, %39
  %41 = load double, double* %6, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %38, %42
  %44 = load double, double* %4, align 8
  %45 = fmul double 8.000000e+00, %44
  %46 = load double, double* %5, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %43, %47
  %49 = load double, double* %4, align 8
  %50 = fmul double 4.000000e+00, %49
  %51 = fsub double %48, %50
  store double %51, double* %2, align 8
  br label %53

52:                                               ; preds = %30
  store double 0.000000e+00, double* %2, align 8
  br label %53

53:                                               ; preds = %52, %33, %17
  %54 = load double, double* %2, align 8
  ret double %54
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
