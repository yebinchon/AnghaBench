; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_wald.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_wald.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @legacy_wald(i32* %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %12 = load double, double* %6, align 8
  %13 = load double, double* %7, align 8
  %14 = fmul double 2.000000e+00, %13
  %15 = fdiv double %12, %14
  store double %15, double* %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call double @legacy_gauss(i32* %16)
  store double %17, double* %10, align 8
  %18 = load double, double* %6, align 8
  %19 = load double, double* %10, align 8
  %20 = fmul double %18, %19
  %21 = load double, double* %10, align 8
  %22 = fmul double %20, %21
  store double %22, double* %10, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %11, align 8
  %25 = load double, double* %10, align 8
  %26 = load double, double* %7, align 8
  %27 = fmul double 4.000000e+00, %26
  %28 = load double, double* %10, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* %10, align 8
  %31 = load double, double* %10, align 8
  %32 = fmul double %30, %31
  %33 = fadd double %29, %32
  %34 = fptosi double %33 to i32
  %35 = call double @sqrt(i32 %34)
  %36 = fsub double %25, %35
  %37 = fmul double %24, %36
  %38 = fadd double %23, %37
  store double %38, double* %9, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call double @legacy_double(i32* %39)
  store double %40, double* %8, align 8
  %41 = load double, double* %8, align 8
  %42 = load double, double* %6, align 8
  %43 = load double, double* %6, align 8
  %44 = load double, double* %9, align 8
  %45 = fadd double %43, %44
  %46 = fdiv double %42, %45
  %47 = fcmp ole double %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load double, double* %9, align 8
  store double %49, double* %4, align 8
  br label %56

50:                                               ; preds = %3
  %51 = load double, double* %6, align 8
  %52 = load double, double* %6, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %9, align 8
  %55 = fdiv double %53, %54
  store double %55, double* %4, align 8
  br label %56

56:                                               ; preds = %50, %48
  %57 = load double, double* %4, align 8
  ret double %57
}

declare dso_local double @legacy_gauss(i32*) #1

declare dso_local double @sqrt(i32) #1

declare dso_local double @legacy_double(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
