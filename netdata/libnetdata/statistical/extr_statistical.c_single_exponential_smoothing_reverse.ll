; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_single_exponential_smoothing_reverse.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_single_exponential_smoothing_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@default_single_exponential_smoothing_alpha = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @single_exponential_smoothing_reverse(double* %0, i64 %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load double, double* @NAN, align 8
  store double %16, double* %4, align 8
  br label %62

17:                                               ; preds = %3
  %18 = load double, double* %7, align 8
  %19 = call i32 @isnan(double %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load double, double* @default_single_exponential_smoothing_alpha, align 8
  store double %23, double* %7, align 8
  br label %24

24:                                               ; preds = %22, %17
  %25 = load double*, double** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds double, double* %25, i64 %27
  store double* %28, double** %8, align 8
  %29 = load double, double* %7, align 8
  %30 = fsub double 1.000000e+00, %29
  %31 = load double*, double** %8, align 8
  %32 = load double, double* %31, align 8
  %33 = fmul double %30, %32
  store double %33, double* %9, align 8
  %34 = load double*, double** %8, align 8
  %35 = getelementptr inbounds double, double* %34, i32 1
  store double* %35, double** %8, align 8
  br label %36

36:                                               ; preds = %57, %24
  %37 = load double*, double** %8, align 8
  %38 = load double*, double** %5, align 8
  %39 = icmp uge double* %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load double*, double** %8, align 8
  %42 = load double, double* %41, align 8
  %43 = call i32 @calculated_number_isnumber(double %42)
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load double, double* %7, align 8
  %48 = load double*, double** %8, align 8
  %49 = load double, double* %48, align 8
  %50 = fmul double %47, %49
  %51 = load double, double* %7, align 8
  %52 = fsub double 1.000000e+00, %51
  %53 = load double, double* %9, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %50, %54
  store double %55, double* %9, align 8
  br label %56

56:                                               ; preds = %46, %40
  br label %57

57:                                               ; preds = %56
  %58 = load double*, double** %8, align 8
  %59 = getelementptr inbounds double, double* %58, i32 -1
  store double* %59, double** %8, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load double, double* %9, align 8
  store double %61, double* %4, align 8
  br label %62

62:                                               ; preds = %60, %15
  %63 = load double, double* %4, align 8
  ret double %63
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @calculated_number_isnumber(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
