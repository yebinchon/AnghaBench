; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_standard_gamma.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_legacy_standard_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @legacy_standard_gamma(i32* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  %12 = load double, double* %5, align 8
  %13 = fcmp oeq double %12, 1.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call double @legacy_standard_exponential(i32* %15)
  store double %16, double* %3, align 8
  br label %139

17:                                               ; preds = %2
  %18 = load double, double* %5, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store double 0.000000e+00, double* %3, align 8
  br label %139

21:                                               ; preds = %17
  %22 = load double, double* %5, align 8
  %23 = fcmp olt double %22, 1.000000e+00
  br i1 %23, label %24, label %73

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32*, i32** %4, align 8
  %27 = call double @legacy_double(i32* %26)
  store double %27, double* %8, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call double @legacy_standard_exponential(i32* %28)
  store double %29, double* %9, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %5, align 8
  %32 = fsub double 1.000000e+00, %31
  %33 = fcmp ole double %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load double, double* %8, align 8
  %36 = load double, double* %5, align 8
  %37 = fdiv double 1.000000e+00, %36
  %38 = fptosi double %37 to i32
  %39 = call double @pow(double %35, i32 %38)
  store double %39, double* %10, align 8
  %40 = load double, double* %10, align 8
  %41 = load double, double* %9, align 8
  %42 = fcmp ole double %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load double, double* %10, align 8
  store double %44, double* %3, align 8
  br label %139

45:                                               ; preds = %34
  br label %72

46:                                               ; preds = %25
  %47 = load double, double* %8, align 8
  %48 = fsub double 1.000000e+00, %47
  %49 = load double, double* %5, align 8
  %50 = fdiv double %48, %49
  %51 = call i32 @log(double %50)
  %52 = sub nsw i32 0, %51
  %53 = sitofp i32 %52 to double
  store double %53, double* %11, align 8
  %54 = load double, double* %5, align 8
  %55 = fsub double 1.000000e+00, %54
  %56 = load double, double* %5, align 8
  %57 = load double, double* %11, align 8
  %58 = fmul double %56, %57
  %59 = fadd double %55, %58
  %60 = load double, double* %5, align 8
  %61 = fdiv double 1.000000e+00, %60
  %62 = fptosi double %61 to i32
  %63 = call double @pow(double %59, i32 %62)
  store double %63, double* %10, align 8
  %64 = load double, double* %10, align 8
  %65 = load double, double* %9, align 8
  %66 = load double, double* %11, align 8
  %67 = fadd double %65, %66
  %68 = fcmp ole double %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = load double, double* %10, align 8
  store double %70, double* %3, align 8
  br label %139

71:                                               ; preds = %46
  br label %72

72:                                               ; preds = %71, %45
  br label %25

73:                                               ; preds = %21
  %74 = load double, double* %5, align 8
  %75 = fsub double %74, 0x3FD5555555555555
  store double %75, double* %6, align 8
  %76 = load double, double* %6, align 8
  %77 = fmul double 9.000000e+00, %76
  %78 = fptosi double %77 to i32
  %79 = call i32 @sqrt(i32 %78)
  %80 = sitofp i32 %79 to double
  %81 = fdiv double 1.000000e+00, %80
  store double %81, double* %7, align 8
  br label %82

82:                                               ; preds = %138, %73
  br label %83

83:                                               ; preds = %90, %82
  %84 = load i32*, i32** %4, align 8
  %85 = call double @legacy_gauss(i32* %84)
  store double %85, double* %10, align 8
  %86 = load double, double* %7, align 8
  %87 = load double, double* %10, align 8
  %88 = fmul double %86, %87
  %89 = fadd double 1.000000e+00, %88
  store double %89, double* %9, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load double, double* %9, align 8
  %92 = fcmp ole double %91, 0.000000e+00
  br i1 %92, label %83, label %93

93:                                               ; preds = %90
  %94 = load double, double* %9, align 8
  %95 = load double, double* %9, align 8
  %96 = fmul double %94, %95
  %97 = load double, double* %9, align 8
  %98 = fmul double %96, %97
  store double %98, double* %9, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call double @legacy_double(i32* %99)
  store double %100, double* %8, align 8
  %101 = load double, double* %8, align 8
  %102 = load double, double* %10, align 8
  %103 = load double, double* %10, align 8
  %104 = fmul double %102, %103
  %105 = fmul double 3.310000e-02, %104
  %106 = load double, double* %10, align 8
  %107 = load double, double* %10, align 8
  %108 = fmul double %106, %107
  %109 = fmul double %105, %108
  %110 = fsub double 1.000000e+00, %109
  %111 = fcmp olt double %101, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %93
  %113 = load double, double* %6, align 8
  %114 = load double, double* %9, align 8
  %115 = fmul double %113, %114
  store double %115, double* %3, align 8
  br label %139

116:                                              ; preds = %93
  %117 = load double, double* %8, align 8
  %118 = call i32 @log(double %117)
  %119 = sitofp i32 %118 to double
  %120 = load double, double* %10, align 8
  %121 = fmul double 5.000000e-01, %120
  %122 = load double, double* %10, align 8
  %123 = fmul double %121, %122
  %124 = load double, double* %6, align 8
  %125 = load double, double* %9, align 8
  %126 = fsub double 1.000000e+00, %125
  %127 = load double, double* %9, align 8
  %128 = call i32 @log(double %127)
  %129 = sitofp i32 %128 to double
  %130 = fadd double %126, %129
  %131 = fmul double %124, %130
  %132 = fadd double %123, %131
  %133 = fcmp olt double %119, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %116
  %135 = load double, double* %6, align 8
  %136 = load double, double* %9, align 8
  %137 = fmul double %135, %136
  store double %137, double* %3, align 8
  br label %139

138:                                              ; preds = %116
  br label %82

139:                                              ; preds = %134, %112, %69, %43, %20, %14
  %140 = load double, double* %3, align 8
  ret double %140
}

declare dso_local double @legacy_standard_exponential(i32*) #1

declare dso_local double @legacy_double(i32*) #1

declare dso_local double @pow(double, i32) #1

declare dso_local i32 @log(double) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local double @legacy_gauss(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
