; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_math.c_php_round_helper.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_math.c_php_round_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_ROUND_HALF_DOWN = common dso_local global i32 0, align 4
@PHP_ROUND_HALF_EVEN = common dso_local global i32 0, align 4
@PHP_ROUND_HALF_ODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32)* @php_round_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @php_round_helper(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load double, double* %3, align 8
  %7 = fcmp oge double %6, 0.000000e+00
  br i1 %7, label %8, label %52

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  %10 = fadd double %9, 5.000000e-01
  %11 = call i32 @floor(double %10)
  %12 = sitofp i32 %11 to double
  store double %12, double* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PHP_ROUND_HALF_DOWN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load double, double* %3, align 8
  %18 = load double, double* %5, align 8
  %19 = fadd double -5.000000e-01, %18
  %20 = fcmp oeq double %17, %19
  br i1 %20, label %48, label %21

21:                                               ; preds = %16, %8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PHP_ROUND_HALF_EVEN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load double, double* %3, align 8
  %27 = load double, double* %5, align 8
  %28 = fdiv double %27, 2.000000e+00
  %29 = call i32 @floor(double %28)
  %30 = mul nsw i32 2, %29
  %31 = sitofp i32 %30 to double
  %32 = fadd double 5.000000e-01, %31
  %33 = fcmp oeq double %26, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %25, %21
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PHP_ROUND_HALF_ODD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load double, double* %3, align 8
  %40 = load double, double* %5, align 8
  %41 = fdiv double %40, 2.000000e+00
  %42 = call i32 @floor(double %41)
  %43 = mul nsw i32 2, %42
  %44 = sitofp i32 %43 to double
  %45 = fadd double 5.000000e-01, %44
  %46 = fsub double %45, 1.000000e+00
  %47 = fcmp oeq double %39, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38, %25, %16
  %49 = load double, double* %5, align 8
  %50 = fsub double %49, 1.000000e+00
  store double %50, double* %5, align 8
  br label %51

51:                                               ; preds = %48, %38, %34
  br label %96

52:                                               ; preds = %2
  %53 = load double, double* %3, align 8
  %54 = fsub double %53, 5.000000e-01
  %55 = call i32 @ceil(double %54)
  %56 = sitofp i32 %55 to double
  store double %56, double* %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PHP_ROUND_HALF_DOWN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load double, double* %3, align 8
  %62 = load double, double* %5, align 8
  %63 = fadd double 5.000000e-01, %62
  %64 = fcmp oeq double %61, %63
  br i1 %64, label %92, label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PHP_ROUND_HALF_EVEN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load double, double* %3, align 8
  %71 = load double, double* %5, align 8
  %72 = fdiv double %71, 2.000000e+00
  %73 = call i32 @ceil(double %72)
  %74 = mul nsw i32 2, %73
  %75 = sitofp i32 %74 to double
  %76 = fadd double -5.000000e-01, %75
  %77 = fcmp oeq double %70, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %69, %65
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PHP_ROUND_HALF_ODD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load double, double* %3, align 8
  %84 = load double, double* %5, align 8
  %85 = fdiv double %84, 2.000000e+00
  %86 = call i32 @ceil(double %85)
  %87 = mul nsw i32 2, %86
  %88 = sitofp i32 %87 to double
  %89 = fadd double -5.000000e-01, %88
  %90 = fadd double %89, 1.000000e+00
  %91 = fcmp oeq double %83, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82, %69, %60
  %93 = load double, double* %5, align 8
  %94 = fadd double %93, 1.000000e+00
  store double %94, double* %5, align 8
  br label %95

95:                                               ; preds = %92, %82, %78
  br label %96

96:                                               ; preds = %95, %51
  %97 = load double, double* %5, align 8
  ret double %97
}

declare dso_local i32 @floor(double) #1

declare dso_local i32 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
