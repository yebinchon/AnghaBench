; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_single_exponential_smoothing.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_single_exponential_smoothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@default_single_exponential_smoothing_alpha = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @single_exponential_smoothing(double* %0, i64 %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load double, double* @NAN, align 8
  store double %17, double* %4, align 8
  br label %63

18:                                               ; preds = %3
  %19 = load double, double* %7, align 8
  %20 = call i32 @isnan(double %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load double, double* @default_single_exponential_smoothing_alpha, align 8
  store double %24, double* %7, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load double*, double** %5, align 8
  store double* %26, double** %8, align 8
  %27 = load double*, double** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds double, double* %27, i64 %28
  store double* %29, double** %9, align 8
  %30 = load double, double* %7, align 8
  %31 = fsub double 1.000000e+00, %30
  %32 = load double*, double** %8, align 8
  %33 = load double, double* %32, align 8
  %34 = fmul double %31, %33
  store double %34, double* %10, align 8
  %35 = load double*, double** %8, align 8
  %36 = getelementptr inbounds double, double* %35, i32 1
  store double* %36, double** %8, align 8
  br label %37

37:                                               ; preds = %58, %25
  %38 = load double*, double** %8, align 8
  %39 = load double*, double** %9, align 8
  %40 = icmp ult double* %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load double*, double** %8, align 8
  %43 = load double, double* %42, align 8
  %44 = call i32 @calculated_number_isnumber(double %43)
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load double, double* %7, align 8
  %49 = load double*, double** %8, align 8
  %50 = load double, double* %49, align 8
  %51 = fmul double %48, %50
  %52 = load double, double* %7, align 8
  %53 = fsub double 1.000000e+00, %52
  %54 = load double, double* %10, align 8
  %55 = fmul double %53, %54
  %56 = fadd double %51, %55
  store double %56, double* %10, align 8
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57
  %59 = load double*, double** %8, align 8
  %60 = getelementptr inbounds double, double* %59, i32 1
  store double* %60, double** %8, align 8
  br label %37

61:                                               ; preds = %37
  %62 = load double, double* %10, align 8
  store double %62, double* %4, align 8
  br label %63

63:                                               ; preds = %61, %16
  %64 = load double, double* %4, align 8
  ret double %64
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
