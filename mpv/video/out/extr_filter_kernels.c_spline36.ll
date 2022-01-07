; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline36.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_spline36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double)* @spline36 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @spline36(i32* %0, double %1) #0 {
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
  %10 = fmul double 0x3FF2E8BA2E8BA2E9, %9
  %11 = fsub double %10, 0x400156F76D03ACB5
  %12 = load double, double* %5, align 8
  %13 = fmul double %11, %12
  %14 = fsub double %13, 0x3F8D65AA4224BF15
  %15 = load double, double* %5, align 8
  %16 = fmul double %14, %15
  %17 = fadd double %16, 1.000000e+00
  store double %17, double* %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load double, double* %5, align 8
  %20 = fcmp olt double %19, 2.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load double, double* %5, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = fmul double 0xBFE1745D1745D174, %23
  %25 = fadd double %24, 0x3FF4AB7BB681D65B
  %26 = load double, double* %5, align 8
  %27 = fsub double %26, 1.000000e+00
  %28 = fmul double %25, %27
  %29 = fsub double %28, 0x3FE7E29A55BDDB41
  %30 = load double, double* %5, align 8
  %31 = fsub double %30, 1.000000e+00
  %32 = fmul double %29, %31
  store double %32, double* %3, align 8
  br label %45

33:                                               ; preds = %18
  %34 = load double, double* %5, align 8
  %35 = fsub double %34, 2.000000e+00
  %36 = fmul double 0x3FB745D1745D1746, %35
  %37 = fsub double %36, 0x3FCB8F4F9E027324
  %38 = load double, double* %5, align 8
  %39 = fsub double %38, 2.000000e+00
  %40 = fmul double %37, %39
  %41 = fadd double %40, 0x3FBFD8CDC7A7CF01
  %42 = load double, double* %5, align 8
  %43 = fsub double %42, 2.000000e+00
  %44 = fmul double %41, %43
  store double %44, double* %3, align 8
  br label %45

45:                                               ; preds = %33, %21, %8
  %46 = load double, double* %3, align 8
  ret double %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
