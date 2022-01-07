; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_bessel_i0.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_bessel_i0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @bessel_i0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bessel_i0(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  %7 = load double, double* %2, align 8
  %8 = load double, double* %2, align 8
  %9 = fmul double %7, %8
  %10 = fdiv double %9, 4.000000e+00
  store double %10, double* %4, align 8
  %11 = load double, double* %4, align 8
  store double %11, double* %5, align 8
  store i32 2, i32* %6, align 4
  br label %12

12:                                               ; preds = %15, %1
  %13 = load double, double* %5, align 8
  %14 = fcmp ogt double %13, 0x3D719799812DEA11
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load double, double* %5, align 8
  %17 = load double, double* %3, align 8
  %18 = fadd double %17, %16
  store double %18, double* %3, align 8
  %19 = load double, double* %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %19, %23
  %25 = load double, double* %5, align 8
  %26 = fmul double %25, %24
  store double %26, double* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load double, double* %3, align 8
  ret double %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
