; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineEqual.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineEqual(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %3, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %4, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = fsub double %7, %10
  %12 = call i64 @fabs(double %11)
  %13 = load i64, i64* @GD_EPSILON, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  %16 = load double*, double** %3, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  %21 = load double, double* %20, align 8
  %22 = fsub double %18, %21
  %23 = call i64 @fabs(double %22)
  %24 = load i64, i64* @GD_EPSILON, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %15
  %27 = load double*, double** %3, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %4, align 8
  %31 = getelementptr inbounds double, double* %30, i64 2
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = call i64 @fabs(double %33)
  %35 = load i64, i64* @GD_EPSILON, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %26
  %38 = load double*, double** %3, align 8
  %39 = getelementptr inbounds double, double* %38, i64 3
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %4, align 8
  %42 = getelementptr inbounds double, double* %41, i64 3
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = call i64 @fabs(double %44)
  %46 = load i64, i64* @GD_EPSILON, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %37
  %49 = load double*, double** %3, align 8
  %50 = getelementptr inbounds double, double* %49, i64 4
  %51 = load double, double* %50, align 8
  %52 = load double*, double** %4, align 8
  %53 = getelementptr inbounds double, double* %52, i64 4
  %54 = load double, double* %53, align 8
  %55 = fsub double %51, %54
  %56 = call i64 @fabs(double %55)
  %57 = load i64, i64* @GD_EPSILON, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load double*, double** %3, align 8
  %61 = getelementptr inbounds double, double* %60, i64 5
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %4, align 8
  %64 = getelementptr inbounds double, double* %63, i64 5
  %65 = load double, double* %64, align 8
  %66 = fsub double %62, %65
  %67 = call i64 @fabs(double %66)
  %68 = load i64, i64* @GD_EPSILON, align 8
  %69 = icmp slt i64 %67, %68
  br label %70

70:                                               ; preds = %59, %48, %37, %26, %15, %2
  %71 = phi i1 [ false, %48 ], [ false, %37 ], [ false, %26 ], [ false, %15 ], [ false, %2 ], [ %69, %59 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
