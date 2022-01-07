; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___sin.c___sin.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___sin.c___sin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global double 0.000000e+00, align 8
@S3 = common dso_local global double 0.000000e+00, align 8
@S4 = common dso_local global double 0.000000e+00, align 8
@S5 = common dso_local global double 0.000000e+00, align 8
@S6 = common dso_local global double 0.000000e+00, align 8
@S1 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__sin(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load double, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = fmul double %12, %13
  store double %14, double* %8, align 8
  %15 = load double, double* %8, align 8
  %16 = load double, double* %8, align 8
  %17 = fmul double %15, %16
  store double %17, double* %11, align 8
  %18 = load double, double* @S2, align 8
  %19 = load double, double* %8, align 8
  %20 = load double, double* @S3, align 8
  %21 = load double, double* %8, align 8
  %22 = load double, double* @S4, align 8
  %23 = fmul double %21, %22
  %24 = fadd double %20, %23
  %25 = fmul double %19, %24
  %26 = fadd double %18, %25
  %27 = load double, double* %8, align 8
  %28 = load double, double* %11, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* @S5, align 8
  %31 = load double, double* %8, align 8
  %32 = load double, double* @S6, align 8
  %33 = fmul double %31, %32
  %34 = fadd double %30, %33
  %35 = fmul double %29, %34
  %36 = fadd double %26, %35
  store double %36, double* %9, align 8
  %37 = load double, double* %8, align 8
  %38 = load double, double* %5, align 8
  %39 = fmul double %37, %38
  store double %39, double* %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %3
  %43 = load double, double* %5, align 8
  %44 = load double, double* %10, align 8
  %45 = load double, double* @S1, align 8
  %46 = load double, double* %8, align 8
  %47 = load double, double* %9, align 8
  %48 = fmul double %46, %47
  %49 = fadd double %45, %48
  %50 = fmul double %44, %49
  %51 = fadd double %43, %50
  store double %51, double* %4, align 8
  br label %69

52:                                               ; preds = %3
  %53 = load double, double* %5, align 8
  %54 = load double, double* %8, align 8
  %55 = load double, double* %6, align 8
  %56 = fmul double 5.000000e-01, %55
  %57 = load double, double* %10, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  %60 = fsub double %56, %59
  %61 = fmul double %54, %60
  %62 = load double, double* %6, align 8
  %63 = fsub double %61, %62
  %64 = load double, double* %10, align 8
  %65 = load double, double* @S1, align 8
  %66 = fmul double %64, %65
  %67 = fsub double %63, %66
  %68 = fsub double %53, %67
  store double %68, double* %4, align 8
  br label %69

69:                                               ; preds = %52, %42
  %70 = load double, double* %4, align 8
  ret double %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
