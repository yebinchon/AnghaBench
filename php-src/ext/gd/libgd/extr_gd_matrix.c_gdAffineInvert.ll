; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineInvert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineInvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_FALSE = common dso_local global i32 0, align 4
@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineInvert(double* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double*, double** %5, align 8
  %11 = getelementptr inbounds double, double* %10, i64 3
  %12 = load double, double* %11, align 8
  %13 = fmul double %9, %12
  %14 = load double*, double** %5, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %5, align 8
  %18 = getelementptr inbounds double, double* %17, i64 2
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = fsub double %13, %20
  store double %21, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = fcmp ole double %22, 0.000000e+00
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GD_FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = load double, double* %6, align 8
  %28 = fdiv double 1.000000e+00, %27
  store double %28, double* %6, align 8
  %29 = load double*, double** %5, align 8
  %30 = getelementptr inbounds double, double* %29, i64 3
  %31 = load double, double* %30, align 8
  %32 = load double, double* %6, align 8
  %33 = fmul double %31, %32
  %34 = load double*, double** %4, align 8
  %35 = getelementptr inbounds double, double* %34, i64 0
  store double %33, double* %35, align 8
  %36 = load double*, double** %5, align 8
  %37 = getelementptr inbounds double, double* %36, i64 1
  %38 = load double, double* %37, align 8
  %39 = fneg double %38
  %40 = load double, double* %6, align 8
  %41 = fmul double %39, %40
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  store double %41, double* %43, align 8
  %44 = load double*, double** %5, align 8
  %45 = getelementptr inbounds double, double* %44, i64 2
  %46 = load double, double* %45, align 8
  %47 = fneg double %46
  %48 = load double, double* %6, align 8
  %49 = fmul double %47, %48
  %50 = load double*, double** %4, align 8
  %51 = getelementptr inbounds double, double* %50, i64 2
  store double %49, double* %51, align 8
  %52 = load double*, double** %5, align 8
  %53 = getelementptr inbounds double, double* %52, i64 0
  %54 = load double, double* %53, align 8
  %55 = load double, double* %6, align 8
  %56 = fmul double %54, %55
  %57 = load double*, double** %4, align 8
  %58 = getelementptr inbounds double, double* %57, i64 3
  store double %56, double* %58, align 8
  %59 = load double*, double** %5, align 8
  %60 = getelementptr inbounds double, double* %59, i64 4
  %61 = load double, double* %60, align 8
  %62 = fneg double %61
  %63 = load double*, double** %4, align 8
  %64 = getelementptr inbounds double, double* %63, i64 0
  %65 = load double, double* %64, align 8
  %66 = fmul double %62, %65
  %67 = load double*, double** %5, align 8
  %68 = getelementptr inbounds double, double* %67, i64 5
  %69 = load double, double* %68, align 8
  %70 = load double*, double** %4, align 8
  %71 = getelementptr inbounds double, double* %70, i64 2
  %72 = load double, double* %71, align 8
  %73 = fmul double %69, %72
  %74 = fsub double %66, %73
  %75 = load double*, double** %4, align 8
  %76 = getelementptr inbounds double, double* %75, i64 4
  store double %74, double* %76, align 8
  %77 = load double*, double** %5, align 8
  %78 = getelementptr inbounds double, double* %77, i64 4
  %79 = load double, double* %78, align 8
  %80 = fneg double %79
  %81 = load double*, double** %4, align 8
  %82 = getelementptr inbounds double, double* %81, i64 1
  %83 = load double, double* %82, align 8
  %84 = fmul double %80, %83
  %85 = load double*, double** %5, align 8
  %86 = getelementptr inbounds double, double* %85, i64 5
  %87 = load double, double* %86, align 8
  %88 = load double*, double** %4, align 8
  %89 = getelementptr inbounds double, double* %88, i64 3
  %90 = load double, double* %89, align 8
  %91 = fmul double %87, %90
  %92 = fsub double %84, %91
  %93 = load double*, double** %4, align 8
  %94 = getelementptr inbounds double, double* %93, i64 5
  store double %92, double* %94, align 8
  %95 = load i32, i32* @GD_TRUE, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %26, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
