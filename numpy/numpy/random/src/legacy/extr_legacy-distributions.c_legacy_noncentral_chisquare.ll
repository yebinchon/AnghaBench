; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_noncentral_chisquare.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_noncentral_chisquare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@NPY_NAN = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @legacy_noncentral_chisquare(%struct.TYPE_5__* %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %12 = load double, double* %7, align 8
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = load double, double* %6, align 8
  %17 = call double @legacy_chisquare(%struct.TYPE_5__* %15, double %16)
  store double %17, double* %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load double, double* %6, align 8
  %20 = fcmp olt double 1.000000e+00, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load double, double* %6, align 8
  %24 = fsub double %23, 1.000000e+00
  %25 = call double @legacy_chisquare(%struct.TYPE_5__* %22, double %24)
  store double %25, double* %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call double @legacy_gauss(%struct.TYPE_5__* %26)
  %28 = load double, double* %7, align 8
  %29 = call double @sqrt(double %28) #3
  %30 = fadd double %27, %29
  store double %30, double* %10, align 8
  %31 = load double, double* %9, align 8
  %32 = load double, double* %10, align 8
  %33 = load double, double* %10, align 8
  %34 = fmul double %32, %33
  %35 = fadd double %31, %34
  store double %35, double* %4, align 8
  br label %57

36:                                               ; preds = %18
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load double, double* %7, align 8
  %41 = fdiv double %40, 2.000000e+00
  %42 = call i64 @random_poisson(i32 %39, double %41)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load double, double* %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul nsw i64 2, %45
  %47 = sitofp i64 %46 to double
  %48 = fadd double %44, %47
  %49 = call double @legacy_chisquare(%struct.TYPE_5__* %43, double %48)
  store double %49, double* %8, align 8
  %50 = load double, double* %7, align 8
  %51 = call i64 @npy_isnan(double %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load double, double* @NPY_NAN, align 8
  store double %54, double* %4, align 8
  br label %57

55:                                               ; preds = %36
  %56 = load double, double* %8, align 8
  store double %56, double* %4, align 8
  br label %57

57:                                               ; preds = %55, %53, %21, %14
  %58 = load double, double* %4, align 8
  ret double %58
}

declare dso_local double @legacy_chisquare(%struct.TYPE_5__*, double) #1

declare dso_local double @legacy_gauss(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i64 @random_poisson(i32, double) #1

declare dso_local i64 @npy_isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
