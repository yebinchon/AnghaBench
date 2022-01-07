; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_mitchell.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_mitchell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_P0 = common dso_local global double 0.000000e+00, align 8
@KM_P2 = common dso_local global double 0.000000e+00, align 8
@KM_P3 = common dso_local global double 0.000000e+00, align 8
@KM_Q0 = common dso_local global double 0.000000e+00, align 8
@KM_Q1 = common dso_local global double 0.000000e+00, align 8
@KM_Q2 = common dso_local global double 0.000000e+00, align 8
@KM_Q3 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_mitchell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_mitchell(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, -2.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %58

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, -1.000000e+00
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fmul double %13, 0xBFD8E38E20000000
  %15 = fsub double 2.000000e+00, %14
  %16 = fmul double %12, %15
  %17 = fsub double 0xC00AAAAAA0000000, %16
  %18 = fmul double %11, %17
  %19 = fsub double 0x3FFC71C720000000, %18
  store double %19, double* %2, align 8
  br label %58

20:                                               ; preds = %7
  %21 = load double, double* %3, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = load double, double* %3, align 8
  %26 = fmul double %24, %25
  %27 = load double, double* %3, align 8
  %28 = fmul double %27, 0x3FF2AAAAA0000000
  %29 = fsub double -2.000000e+00, %28
  %30 = fmul double %26, %29
  %31 = fadd double 0x3FEC71C720000000, %30
  store double %31, double* %2, align 8
  br label %58

32:                                               ; preds = %20
  %33 = load double, double* %3, align 8
  %34 = fcmp olt double %33, 1.000000e+00
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load double, double* %3, align 8
  %37 = load double, double* %3, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %3, align 8
  %40 = fmul double %39, 0x3FF2AAAAA0000000
  %41 = fadd double -2.000000e+00, %40
  %42 = fmul double %38, %41
  %43 = fadd double 0x3FEC71C720000000, %42
  store double %43, double* %2, align 8
  br label %58

44:                                               ; preds = %32
  %45 = load double, double* %3, align 8
  %46 = fcmp olt double %45, 2.000000e+00
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load double, double* %3, align 8
  %49 = load double, double* %3, align 8
  %50 = load double, double* %3, align 8
  %51 = fmul double %50, 0xBFD8E38E20000000
  %52 = fadd double 2.000000e+00, %51
  %53 = fmul double %49, %52
  %54 = fadd double 0xC00AAAAAA0000000, %53
  %55 = fmul double %48, %54
  %56 = fadd double 0x3FFC71C720000000, %55
  store double %56, double* %2, align 8
  br label %58

57:                                               ; preds = %44
  store double 0.000000e+00, double* %2, align 8
  br label %58

58:                                               ; preds = %57, %47, %35, %23, %10, %6
  %59 = load double, double* %2, align 8
  ret double %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
