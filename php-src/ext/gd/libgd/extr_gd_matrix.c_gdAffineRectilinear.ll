; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineRectilinear.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineRectilinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineRectilinear(double* %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  %4 = getelementptr inbounds double, double* %3, i64 1
  %5 = load double, double* %4, align 8
  %6 = call i64 @fabs(double %5)
  %7 = load i64, i64* @GD_EPSILON, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load double*, double** %2, align 8
  %11 = getelementptr inbounds double, double* %10, i64 2
  %12 = load double, double* %11, align 8
  %13 = call i64 @fabs(double %12)
  %14 = load i64, i64* @GD_EPSILON, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %9, %1
  %17 = load double*, double** %2, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = call i64 @fabs(double %19)
  %21 = load i64, i64* @GD_EPSILON, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load double*, double** %2, align 8
  %25 = getelementptr inbounds double, double* %24, i64 3
  %26 = load double, double* %25, align 8
  %27 = call i64 @fabs(double %26)
  %28 = load i64, i64* @GD_EPSILON, align 8
  %29 = icmp slt i64 %27, %28
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i1 [ false, %16 ], [ %29, %23 ]
  br label %32

32:                                               ; preds = %30, %9
  %33 = phi i1 [ true, %9 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
