; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline64.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @spline64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @spline64(i32* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = fcmp olt double %6, 1.000000e+00
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load double, double* %5, align 8
  %10 = fmul double 0x3FF31F3831F3831F, %9
  %11 = fsub double %10, 0x40018D7FC7B7891A
  %12 = load double, double* %5, align 8
  %13 = fmul double %11, %12
  %14 = fsub double %13, 0x3F50E28A11C3ABED
  %15 = load double, double* %5, align 8
  %16 = fmul double %14, %15
  %17 = fadd double %16, 1.000000e+00
  store double %17, double* %3, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load double, double* %5, align 8
  %20 = fcmp olt double %19, 2.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load double, double* %5, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = fmul double 0xBFE2BB512BB512BB, %23
  %25 = fadd double %24, 0x3FF629553750D1A8
  %26 = load double, double* %5, align 8
  %27 = fsub double %26, 1.000000e+00
  %28 = fmul double %25, %27
  %29 = fsub double %28, 0x3FE9975942EC9094
  %30 = load double, double* %5, align 8
  %31 = fsub double %30, 1.000000e+00
  %32 = fmul double %29, %31
  store double %32, double* %3, align 8
  br label %60

33:                                               ; preds = %18
  %34 = load double, double* %5, align 8
  %35 = fcmp olt double %34, 3.000000e+00
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load double, double* %5, align 8
  %38 = fsub double %37, 2.000000e+00
  %39 = fmul double 0x3FC2BB512BB512BB, %38
  %40 = fsub double %39, 0x3FD629553750D1A8
  %41 = load double, double* %5, align 8
  %42 = fsub double %41, 2.000000e+00
  %43 = fmul double %40, %42
  %44 = fadd double %43, 0x3FC9975942EC9094
  %45 = load double, double* %5, align 8
  %46 = fsub double %45, 2.000000e+00
  %47 = fmul double %44, %46
  store double %47, double* %3, align 8
  br label %60

48:                                               ; preds = %33
  %49 = load double, double* %5, align 8
  %50 = fsub double %49, 3.000000e+00
  %51 = fmul double 0xBF98F9C18F9C18FA, %50
  %52 = fadd double %51, 0x3FAD8C719F166CDF
  %53 = load double, double* %5, align 8
  %54 = fsub double %53, 3.000000e+00
  %55 = fmul double %52, %54
  %56 = fsub double %55, 0x3FA10F90D7486062
  %57 = load double, double* %5, align 8
  %58 = fsub double %57, 3.000000e+00
  %59 = fmul double %56, %58
  store double %59, double* %3, align 8
  br label %60

60:                                               ; preds = %48, %36, %21, %8
  %61 = load double, double* %3, align 8
  ret double %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
