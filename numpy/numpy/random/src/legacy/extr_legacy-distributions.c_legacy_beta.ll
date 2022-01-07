; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_beta.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @legacy_beta(i32* %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
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
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %17 = load double, double* %6, align 8
  %18 = fcmp ole double %17, 1.000000e+00
  br i1 %18, label %19, label %85

19:                                               ; preds = %3
  %20 = load double, double* %7, align 8
  %21 = fcmp ole double %20, 1.000000e+00
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %84
  %24 = load i32*, i32** %5, align 8
  %25 = call double @legacy_double(i32* %24)
  store double %25, double* %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call double @legacy_double(i32* %26)
  store double %27, double* %11, align 8
  %28 = load double, double* %10, align 8
  %29 = load double, double* %6, align 8
  %30 = fdiv double 1.000000e+00, %29
  %31 = call double @pow(double %28, double %30) #3
  store double %31, double* %12, align 8
  %32 = load double, double* %11, align 8
  %33 = load double, double* %7, align 8
  %34 = fdiv double 1.000000e+00, %33
  %35 = call double @pow(double %32, double %34) #3
  store double %35, double* %13, align 8
  %36 = load double, double* %12, align 8
  %37 = load double, double* %13, align 8
  %38 = fadd double %36, %37
  %39 = fcmp ole double %38, 1.000000e+00
  br i1 %39, label %40, label %84

40:                                               ; preds = %23
  %41 = load double, double* %12, align 8
  %42 = load double, double* %13, align 8
  %43 = fadd double %41, %42
  %44 = fcmp ogt double %43, 0.000000e+00
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load double, double* %12, align 8
  %47 = load double, double* %12, align 8
  %48 = load double, double* %13, align 8
  %49 = fadd double %47, %48
  %50 = fdiv double %46, %49
  store double %50, double* %4, align 8
  br label %97

51:                                               ; preds = %40
  %52 = load double, double* %10, align 8
  %53 = call double @log(double %52) #3
  %54 = load double, double* %6, align 8
  %55 = fdiv double %53, %54
  store double %55, double* %14, align 8
  %56 = load double, double* %11, align 8
  %57 = call double @log(double %56) #3
  %58 = load double, double* %7, align 8
  %59 = fdiv double %57, %58
  store double %59, double* %15, align 8
  %60 = load double, double* %14, align 8
  %61 = load double, double* %15, align 8
  %62 = fcmp ogt double %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load double, double* %14, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load double, double* %15, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi double [ %64, %63 ], [ %66, %65 ]
  store double %68, double* %16, align 8
  %69 = load double, double* %16, align 8
  %70 = load double, double* %14, align 8
  %71 = fsub double %70, %69
  store double %71, double* %14, align 8
  %72 = load double, double* %16, align 8
  %73 = load double, double* %15, align 8
  %74 = fsub double %73, %72
  store double %74, double* %15, align 8
  %75 = load double, double* %14, align 8
  %76 = load double, double* %14, align 8
  %77 = call double @exp(double %76) #3
  %78 = load double, double* %15, align 8
  %79 = call double @exp(double %78) #3
  %80 = fadd double %77, %79
  %81 = call double @log(double %80) #3
  %82 = fsub double %75, %81
  %83 = call double @exp(double %82) #3
  store double %83, double* %4, align 8
  br label %97

84:                                               ; preds = %23
  br label %23

85:                                               ; preds = %19, %3
  %86 = load i32*, i32** %5, align 8
  %87 = load double, double* %6, align 8
  %88 = call double @legacy_standard_gamma(i32* %86, double %87)
  store double %88, double* %8, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load double, double* %7, align 8
  %91 = call double @legacy_standard_gamma(i32* %89, double %90)
  store double %91, double* %9, align 8
  %92 = load double, double* %8, align 8
  %93 = load double, double* %8, align 8
  %94 = load double, double* %9, align 8
  %95 = fadd double %93, %94
  %96 = fdiv double %92, %95
  store double %96, double* %4, align 8
  br label %97

97:                                               ; preds = %85, %67, %45
  %98 = load double, double* %4, align 8
  ret double %98
}

declare dso_local double @legacy_double(i32*) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local double @legacy_standard_gamma(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
