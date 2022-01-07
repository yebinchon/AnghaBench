; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_pathnode.c_adjust_limit_rows_costs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_pathnode.c_adjust_limit_rows_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_limit_rows_costs(double* %0, double* %1, double* %2, i64 %3, i64 %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load double*, double** %6, align 8
  %17 = load double, double* %16, align 8
  store double %17, double* %11, align 8
  %18 = load double*, double** %7, align 8
  %19 = load double, double* %18, align 8
  store double %19, double* %12, align 8
  %20 = load double*, double** %8, align 8
  %21 = load double, double* %20, align 8
  store double %21, double* %13, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = sitofp i64 %28 to double
  store double %29, double* %14, align 8
  br label %34

30:                                               ; preds = %24
  %31 = load double, double* %11, align 8
  %32 = fmul double %31, 1.000000e-01
  %33 = call double @clamp_row_est(double %32)
  store double %33, double* %14, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load double, double* %14, align 8
  %36 = load double*, double** %6, align 8
  %37 = load double, double* %36, align 8
  %38 = fcmp ogt double %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load double*, double** %6, align 8
  %41 = load double, double* %40, align 8
  store double %41, double* %14, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load double, double* %11, align 8
  %44 = fcmp ogt double %43, 0.000000e+00
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load double, double* %13, align 8
  %47 = load double, double* %12, align 8
  %48 = fsub double %46, %47
  %49 = load double, double* %14, align 8
  %50 = fmul double %48, %49
  %51 = load double, double* %11, align 8
  %52 = fdiv double %50, %51
  %53 = load double*, double** %7, align 8
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, %52
  store double %55, double* %53, align 8
  br label %56

56:                                               ; preds = %45, %42
  %57 = load double, double* %14, align 8
  %58 = load double*, double** %6, align 8
  %59 = load double, double* %58, align 8
  %60 = fsub double %59, %57
  store double %60, double* %58, align 8
  %61 = load double*, double** %6, align 8
  %62 = load double, double* %61, align 8
  %63 = fcmp olt double %62, 1.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load double*, double** %6, align 8
  store double 1.000000e+00, double* %65, align 8
  br label %66

66:                                               ; preds = %64, %56
  br label %67

67:                                               ; preds = %66, %5
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = sitofp i64 %74 to double
  store double %75, double* %15, align 8
  br label %80

76:                                               ; preds = %70
  %77 = load double, double* %11, align 8
  %78 = fmul double %77, 1.000000e-01
  %79 = call double @clamp_row_est(double %78)
  store double %79, double* %15, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load double, double* %15, align 8
  %82 = load double*, double** %6, align 8
  %83 = load double, double* %82, align 8
  %84 = fcmp ogt double %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load double*, double** %6, align 8
  %87 = load double, double* %86, align 8
  store double %87, double* %15, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load double, double* %11, align 8
  %90 = fcmp ogt double %89, 0.000000e+00
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load double*, double** %7, align 8
  %93 = load double, double* %92, align 8
  %94 = load double, double* %13, align 8
  %95 = load double, double* %12, align 8
  %96 = fsub double %94, %95
  %97 = load double, double* %15, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %11, align 8
  %100 = fdiv double %98, %99
  %101 = fadd double %93, %100
  %102 = load double*, double** %8, align 8
  store double %101, double* %102, align 8
  br label %103

103:                                              ; preds = %91, %88
  %104 = load double, double* %15, align 8
  %105 = load double*, double** %6, align 8
  store double %104, double* %105, align 8
  %106 = load double*, double** %6, align 8
  %107 = load double, double* %106, align 8
  %108 = fcmp olt double %107, 1.000000e+00
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load double*, double** %6, align 8
  store double 1.000000e+00, double* %110, align 8
  br label %111

111:                                              ; preds = %109, %103
  br label %112

112:                                              ; preds = %111, %67
  ret void
}

declare dso_local double @clamp_row_est(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
