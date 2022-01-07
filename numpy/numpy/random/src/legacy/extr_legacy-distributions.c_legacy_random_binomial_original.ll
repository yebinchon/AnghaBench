; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_random_binomial_original.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_random_binomial_original.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double, double, i32*)* @legacy_random_binomial_original to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @legacy_random_binomial_original(i32* %0, double %1, double %2, i32* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load double, double* %7, align 8
  %12 = fcmp ole double %11, 5.000000e-01
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load double, double* %7, align 8
  %15 = load double, double* %8, align 8
  %16 = fmul double %14, %15
  %17 = fcmp ole double %16, 3.000000e+01
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call double @random_binomial_inversion(i32* %19, double %20, double %21, i32* %22)
  store double %23, double* %5, align 8
  br label %53

24:                                               ; preds = %13
  %25 = load i32*, i32** %6, align 8
  %26 = load double, double* %8, align 8
  %27 = load double, double* %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call double @random_binomial_btpe(i32* %25, double %26, double %27, i32* %28)
  store double %29, double* %5, align 8
  br label %53

30:                                               ; preds = %4
  %31 = load double, double* %7, align 8
  %32 = fsub double 1.000000e+00, %31
  store double %32, double* %10, align 8
  %33 = load double, double* %10, align 8
  %34 = load double, double* %8, align 8
  %35 = fmul double %33, %34
  %36 = fcmp ole double %35, 3.000000e+01
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load double, double* %8, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load double, double* %8, align 8
  %41 = load double, double* %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call double @random_binomial_inversion(i32* %39, double %40, double %41, i32* %42)
  %44 = fsub double %38, %43
  store double %44, double* %5, align 8
  br label %53

45:                                               ; preds = %30
  %46 = load double, double* %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load double, double* %8, align 8
  %49 = load double, double* %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call double @random_binomial_btpe(i32* %47, double %48, double %49, i32* %50)
  %52 = fsub double %46, %51
  store double %52, double* %5, align 8
  br label %53

53:                                               ; preds = %45, %37, %24, %18
  %54 = load double, double* %5, align 8
  ret double %54
}

declare dso_local double @random_binomial_inversion(i32*, double, double, i32*) #1

declare dso_local double @random_binomial_btpe(i32*, double, double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
