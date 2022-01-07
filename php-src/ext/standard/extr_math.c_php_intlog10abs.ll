; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_math.c_php_intlog10abs.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_math.c_php_intlog10abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_intlog10abs.values = internal constant [31 x double] [double 1.000000e-08, double 0x3E7AD7F29ABCAF48, double 0x3EB0C6F7A0B5ED8D, double 1.000000e-05, double 1.000000e-04, double 1.000000e-03, double 1.000000e-02, double 1.000000e-01, double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @php_intlog10abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_intlog10abs(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @llvm.fabs.f64(double %4)
  store double %5, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fcmp olt double %6, 1.000000e-08
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load double, double* %2, align 8
  %10 = fcmp ogt double %9, 1.000000e+22
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %1
  %12 = load double, double* %2, align 8
  %13 = call i32 @log10(double %12)
  %14 = call i64 @floor(i32 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %81

16:                                               ; preds = %8
  store i32 15, i32* %3, align 4
  %17 = load double, double* %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [31 x double], [31 x double]* @php_intlog10abs.values, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fcmp olt double %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 8
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load double, double* %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [31 x double], [31 x double]* @php_intlog10abs.values, i64 0, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fcmp olt double %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load double, double* %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [31 x double], [31 x double]* @php_intlog10abs.values, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fcmp olt double %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load double, double* %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [31 x double], [31 x double]* @php_intlog10abs.values, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fcmp olt double %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load double, double* %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [31 x double], [31 x double]* @php_intlog10abs.values, i64 0, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fcmp olt double %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 8
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i64 @floor(i32) #2

declare dso_local i32 @log10(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
