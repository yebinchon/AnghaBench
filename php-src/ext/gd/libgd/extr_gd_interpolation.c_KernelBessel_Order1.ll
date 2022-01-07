; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_Order1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_Order1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @KernelBessel_Order1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @KernelBessel_Order1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp oeq double %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %69

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  store double %10, double* %4, align 8
  %11 = load double, double* %3, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load double, double* %3, align 8
  %15 = fneg double %14
  store double %15, double* %3, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load double, double* %3, align 8
  %18 = fcmp olt double %17, 8.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load double, double* %4, align 8
  %21 = load double, double* %3, align 8
  %22 = call double @KernelBessel_J1(double %21)
  %23 = fmul double %20, %22
  store double %23, double* %2, align 8
  br label %69

24:                                               ; preds = %16
  %25 = load double, double* @M_PI, align 8
  %26 = load double, double* %3, align 8
  %27 = fmul double %25, %26
  %28 = fdiv double 2.000000e+00, %27
  %29 = fptrunc double %28 to float
  %30 = call float @sqrt(float %29)
  %31 = fpext float %30 to double
  %32 = load double, double* %3, align 8
  %33 = call float @KernelBessel_P1(double %32)
  %34 = call float @sqrt(float 2.000000e+00)
  %35 = fdiv float 1.000000e+00, %34
  %36 = load double, double* %3, align 8
  %37 = call float @sin(double %36)
  %38 = load double, double* %3, align 8
  %39 = call float @cos(double %38)
  %40 = fsub float %37, %39
  %41 = fmul float %35, %40
  %42 = fmul float %33, %41
  %43 = fpext float %42 to double
  %44 = load double, double* %3, align 8
  %45 = fdiv double 8.000000e+00, %44
  %46 = load double, double* %3, align 8
  %47 = call float @KernelBessel_Q1(double %46)
  %48 = fpext float %47 to double
  %49 = fmul double %45, %48
  %50 = call float @sqrt(float 2.000000e+00)
  %51 = fdiv float -1.000000e+00, %50
  %52 = load double, double* %3, align 8
  %53 = call float @sin(double %52)
  %54 = load double, double* %3, align 8
  %55 = call float @cos(double %54)
  %56 = fadd float %53, %55
  %57 = fmul float %51, %56
  %58 = fpext float %57 to double
  %59 = fmul double %49, %58
  %60 = fsub double %43, %59
  %61 = fmul double %31, %60
  store double %61, double* %5, align 8
  %62 = load double, double* %4, align 8
  %63 = fcmp olt double %62, 0.000000e+00
  br i1 %63, label %64, label %67

64:                                               ; preds = %24
  %65 = load double, double* %5, align 8
  %66 = fneg double %65
  store double %66, double* %5, align 8
  br label %67

67:                                               ; preds = %64, %24
  %68 = load double, double* %5, align 8
  store double %68, double* %2, align 8
  br label %69

69:                                               ; preds = %67, %19, %8
  %70 = load double, double* %2, align 8
  ret double %70
}

declare dso_local double @KernelBessel_J1(double) #1

declare dso_local float @sqrt(float) #1

declare dso_local float @KernelBessel_P1(double) #1

declare dso_local float @sin(double) #1

declare dso_local float @cos(double) #1

declare dso_local float @KernelBessel_Q1(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
