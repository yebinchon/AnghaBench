; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_holtwinters.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_holtwinters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @holtwinters(double* %0, i64 %1, double %2, double %3, double %4, double* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [0 x double], align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store double* %0, double** %8, align 8
  store i64 %1, i64* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double* %5, double** %13, align 8
  %26 = load double, double* %10, align 8
  %27 = call i32 @isnan(double %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store double 3.000000e-01, double* %10, align 8
  br label %31

31:                                               ; preds = %30, %6
  %32 = load double, double* %11, align 8
  %33 = call i32 @isnan(double %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store double 5.000000e-02, double* %11, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load double, double* %12, align 8
  %39 = call i32 @isnan(double %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store double 0.000000e+00, double* %12, align 8
  br label %43

43:                                               ; preds = %42, %37
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %44 = load double*, double** %8, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  store double %46, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %47 = bitcast [0 x double]* %18 to i8*
  store double 0.000000e+00, double* %19, align 8
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %20, align 8
  %49 = load i64, i64* %20, align 8
  %50 = call double* @callocz(i64 %49, i32 8)
  store double* %50, double** %21, align 8
  %51 = load i64, i64* %20, align 8
  %52 = call double* @callocz(i64 %51, i32 8)
  store double* %52, double** %22, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call double* @callocz(i64 %53, i32 8)
  store double* %54, double** %23, align 8
  %55 = load double*, double** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = load double, double* %10, align 8
  %59 = load double, double* %11, align 8
  %60 = load double, double* %12, align 8
  %61 = getelementptr inbounds [0 x double], [0 x double]* %18, i64 0, i64 0
  %62 = load double*, double** %21, align 8
  %63 = load double*, double** %22, align 8
  %64 = load double*, double** %23, align 8
  %65 = call i32 @__HoltWinters(double* %55, i32 %57, double %58, double %59, double %60, i32* %14, i32* %15, double* %16, double* %17, double* %61, double* %19, double* %62, double* %63, double* %64)
  store i32 %65, i32* %24, align 4
  %66 = load double*, double** %21, align 8
  %67 = load i64, i64* %20, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  store double %70, double* %25, align 8
  %71 = load double*, double** %13, align 8
  %72 = icmp ne double* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %43
  %74 = load double*, double** %13, align 8
  store double 0.000000e+00, double* %74, align 8
  br label %75

75:                                               ; preds = %73, %43
  %76 = load double*, double** %21, align 8
  %77 = call i32 @freez(double* %76)
  %78 = load double*, double** %22, align 8
  %79 = call i32 @freez(double* %78)
  %80 = load double*, double** %23, align 8
  %81 = call i32 @freez(double* %80)
  %82 = load i32, i32* %24, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  store double 0.000000e+00, double* %7, align 8
  br label %87

85:                                               ; preds = %75
  %86 = load double, double* %25, align 8
  store double %86, double* %7, align 8
  br label %87

87:                                               ; preds = %85, %84
  %88 = load double, double* %7, align 8
  ret double %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isnan(double) #1

declare dso_local double* @callocz(i64, i32) #1

declare dso_local i32 @__HoltWinters(double*, i32, double, double, double, i32*, i32*, double*, double*, double*, double*, double*, double*, double*) #1

declare dso_local i32 @freez(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
