; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_asin.c_R.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_asin.c_R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pS0 = common dso_local global double 0.000000e+00, align 8
@pS1 = common dso_local global double 0.000000e+00, align 8
@pS2 = common dso_local global double 0.000000e+00, align 8
@pS3 = common dso_local global double 0.000000e+00, align 8
@pS4 = common dso_local global double 0.000000e+00, align 8
@pS5 = common dso_local global double 0.000000e+00, align 8
@qS1 = common dso_local global double 0.000000e+00, align 8
@qS2 = common dso_local global double 0.000000e+00, align 8
@qS3 = common dso_local global double 0.000000e+00, align 8
@qS4 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @R(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = load double, double* @pS0, align 8
  %7 = load double, double* %2, align 8
  %8 = load double, double* @pS1, align 8
  %9 = load double, double* %2, align 8
  %10 = load double, double* @pS2, align 8
  %11 = load double, double* %2, align 8
  %12 = load double, double* @pS3, align 8
  %13 = load double, double* %2, align 8
  %14 = load double, double* @pS4, align 8
  %15 = load double, double* %2, align 8
  %16 = load double, double* @pS5, align 8
  %17 = fmul double %15, %16
  %18 = fadd double %14, %17
  %19 = fmul double %13, %18
  %20 = fadd double %12, %19
  %21 = fmul double %11, %20
  %22 = fadd double %10, %21
  %23 = fmul double %9, %22
  %24 = fadd double %8, %23
  %25 = fmul double %7, %24
  %26 = fadd double %6, %25
  %27 = fmul double %5, %26
  store double %27, double* %3, align 8
  %28 = load double, double* %2, align 8
  %29 = load double, double* @qS1, align 8
  %30 = load double, double* %2, align 8
  %31 = load double, double* @qS2, align 8
  %32 = load double, double* %2, align 8
  %33 = load double, double* @qS3, align 8
  %34 = load double, double* %2, align 8
  %35 = load double, double* @qS4, align 8
  %36 = fmul double %34, %35
  %37 = fadd double %33, %36
  %38 = fmul double %32, %37
  %39 = fadd double %31, %38
  %40 = fmul double %30, %39
  %41 = fadd double %29, %40
  %42 = fmul double %28, %41
  %43 = fadd double 1.000000e+00, %42
  store double %43, double* %4, align 8
  %44 = load double, double* %3, align 8
  %45 = load double, double* %4, align 8
  %46 = fdiv double %44, %45
  ret double %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
