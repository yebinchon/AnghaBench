; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineTranslate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineTranslate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineTranslate(double* %0, double %1, double %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double*, double** %4, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  store double 1.000000e+00, double* %8, align 8
  %9 = load double*, double** %4, align 8
  %10 = getelementptr inbounds double, double* %9, i64 1
  store double 0.000000e+00, double* %10, align 8
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 2
  store double 0.000000e+00, double* %12, align 8
  %13 = load double*, double** %4, align 8
  %14 = getelementptr inbounds double, double* %13, i64 3
  store double 1.000000e+00, double* %14, align 8
  %15 = load double, double* %5, align 8
  %16 = load double*, double** %4, align 8
  %17 = getelementptr inbounds double, double* %16, i64 4
  store double %15, double* %17, align 8
  %18 = load double, double* %6, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 5
  store double %18, double* %20, align 8
  %21 = load i32, i32* @GD_TRUE, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
