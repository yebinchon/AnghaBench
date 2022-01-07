; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_quadric.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_quadric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @quadric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @quadric(i32* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %5, align 8
  %8 = fcmp olt double %7, 7.500000e-01
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load double, double* %5, align 8
  %11 = load double, double* %5, align 8
  %12 = fmul double %10, %11
  %13 = fsub double 7.500000e-01, %12
  store double %13, double* %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load double, double* %5, align 8
  %16 = fcmp olt double %15, 1.500000e+00
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load double, double* %5, align 8
  %19 = fsub double %18, 1.500000e+00
  store double %19, double* %6, align 8
  %20 = load double, double* %6, align 8
  %21 = fmul double 5.000000e-01, %20
  %22 = load double, double* %6, align 8
  %23 = fmul double %21, %22
  store double %23, double* %3, align 8
  br label %26

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  store double 0.000000e+00, double* %3, align 8
  br label %26

26:                                               ; preds = %25, %17, %9
  %27 = load double, double* %3, align 8
  ret double %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
