; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline16.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @spline16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @spline16(i32* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = fcmp olt double %6, 1.000000e+00
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load double, double* %5, align 8
  %10 = fsub double %9, 1.800000e+00
  %11 = load double, double* %5, align 8
  %12 = fmul double %10, %11
  %13 = fsub double %12, 2.000000e-01
  %14 = load double, double* %5, align 8
  %15 = fmul double %13, %14
  %16 = fadd double %15, 1.000000e+00
  store double %16, double* %3, align 8
  br label %29

17:                                               ; preds = %2
  %18 = load double, double* %5, align 8
  %19 = fsub double %18, 1.000000e+00
  %20 = fmul double 0xBFD5555555555555, %19
  %21 = fadd double %20, 8.000000e-01
  %22 = load double, double* %5, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = fmul double %21, %23
  %25 = fsub double %24, 0x3FDDDDDDDDDDDDDE
  %26 = load double, double* %5, align 8
  %27 = fsub double %26, 1.000000e+00
  %28 = fmul double %25, %27
  store double %28, double* %3, align 8
  br label %29

29:                                               ; preds = %17, %8
  %30 = load double, double* %3, align 8
  ret double %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
