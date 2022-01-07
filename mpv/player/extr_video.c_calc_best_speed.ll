; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_calc_best_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_calc_best_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @calc_best_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_best_speed(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %11 = load double, double* %4, align 8
  %12 = load double, double* %3, align 8
  %13 = fdiv double %11, %12
  store double %13, double* %5, align 8
  store double -1.000000e+00, double* %6, align 8
  %14 = load double, double* @INFINITY, align 8
  store double %14, double* %7, align 8
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load double, double* %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %19, %21
  %23 = load double, double* %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %23, %25
  %27 = call double @llvm.rint.f64(double %26)
  %28 = fdiv double %22, %27
  store double %28, double* %9, align 8
  %29 = load double, double* %9, align 8
  %30 = fsub double %29, 1.000000e+00
  %31 = call double @llvm.fabs.f64(double %30)
  store double %31, double* %10, align 8
  %32 = load double, double* %10, align 8
  %33 = load double, double* %7, align 8
  %34 = fcmp olt double %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load double, double* %9, align 8
  store double %36, double* %6, align 8
  %37 = load double, double* %10, align 8
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %35, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load double, double* %6, align 8
  ret double %43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
