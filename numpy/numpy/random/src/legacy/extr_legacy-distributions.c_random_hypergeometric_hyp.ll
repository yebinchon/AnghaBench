; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_random_hypergeometric_hyp.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_random_hypergeometric_hyp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double, double, double)* @random_hypergeometric_hyp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @random_hypergeometric_hyp(i32* %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %6, align 8
  %17 = fadd double %15, %16
  %18 = load double, double* %8, align 8
  %19 = fsub double %17, %18
  store double %19, double* %9, align 8
  %20 = load double, double* %7, align 8
  %21 = load double, double* %6, align 8
  %22 = call i64 @MIN(double %20, double %21)
  %23 = sitofp i64 %22 to double
  store double %23, double* %12, align 8
  %24 = load double, double* %12, align 8
  store double %24, double* %14, align 8
  %25 = load double, double* %8, align 8
  store double %25, double* %10, align 8
  br label %26

26:                                               ; preds = %48, %4
  %27 = load double, double* %14, align 8
  %28 = fcmp ogt double %27, 0.000000e+00
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call double @next_double(i32* %30)
  store double %31, double* %13, align 8
  %32 = load double, double* %13, align 8
  %33 = load double, double* %14, align 8
  %34 = load double, double* %9, align 8
  %35 = load double, double* %10, align 8
  %36 = fadd double %34, %35
  %37 = fdiv double %33, %36
  %38 = fadd double %32, %37
  %39 = call i64 @floor(double %38)
  %40 = sitofp i64 %39 to double
  %41 = load double, double* %14, align 8
  %42 = fsub double %41, %40
  store double %42, double* %14, align 8
  %43 = load double, double* %10, align 8
  %44 = fadd double %43, -1.000000e+00
  store double %44, double* %10, align 8
  %45 = load double, double* %10, align 8
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %49

48:                                               ; preds = %29
  br label %26

49:                                               ; preds = %47, %26
  %50 = load double, double* %12, align 8
  %51 = load double, double* %14, align 8
  %52 = fsub double %50, %51
  store double %52, double* %11, align 8
  %53 = load double, double* %6, align 8
  %54 = load double, double* %7, align 8
  %55 = fcmp ogt double %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load double, double* %8, align 8
  %58 = load double, double* %11, align 8
  %59 = fsub double %57, %58
  store double %59, double* %11, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load double, double* %11, align 8
  ret double %61
}

declare dso_local i64 @MIN(double, double) #1

declare dso_local double @next_double(i32*) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
