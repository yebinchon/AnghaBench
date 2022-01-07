; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_erf.c_erfc2.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_erf.c_erfc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ra0 = common dso_local global double 0.000000e+00, align 8
@ra1 = common dso_local global double 0.000000e+00, align 8
@ra2 = common dso_local global double 0.000000e+00, align 8
@ra3 = common dso_local global double 0.000000e+00, align 8
@ra4 = common dso_local global double 0.000000e+00, align 8
@ra5 = common dso_local global double 0.000000e+00, align 8
@ra6 = common dso_local global double 0.000000e+00, align 8
@ra7 = common dso_local global double 0.000000e+00, align 8
@sa1 = common dso_local global double 0.000000e+00, align 8
@sa2 = common dso_local global double 0.000000e+00, align 8
@sa3 = common dso_local global double 0.000000e+00, align 8
@sa4 = common dso_local global double 0.000000e+00, align 8
@sa5 = common dso_local global double 0.000000e+00, align 8
@sa6 = common dso_local global double 0.000000e+00, align 8
@sa7 = common dso_local global double 0.000000e+00, align 8
@sa8 = common dso_local global double 0.000000e+00, align 8
@rb0 = common dso_local global double 0.000000e+00, align 8
@rb1 = common dso_local global double 0.000000e+00, align 8
@rb2 = common dso_local global double 0.000000e+00, align 8
@rb3 = common dso_local global double 0.000000e+00, align 8
@rb4 = common dso_local global double 0.000000e+00, align 8
@rb5 = common dso_local global double 0.000000e+00, align 8
@rb6 = common dso_local global double 0.000000e+00, align 8
@sb1 = common dso_local global double 0.000000e+00, align 8
@sb2 = common dso_local global double 0.000000e+00, align 8
@sb3 = common dso_local global double 0.000000e+00, align 8
@sb4 = common dso_local global double 0.000000e+00, align 8
@sb5 = common dso_local global double 0.000000e+00, align 8
@sb6 = common dso_local global double 0.000000e+00, align 8
@sb7 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double)* @erfc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @erfc2(i32 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1072955392
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load double, double* %5, align 8
  %14 = call double @erfc1(double %13)
  store double %14, double* %3, align 8
  br label %165

15:                                               ; preds = %2
  %16 = load double, double* %5, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  store double %17, double* %5, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %5, align 8
  %20 = fmul double %18, %19
  %21 = fdiv double 1.000000e+00, %20
  store double %21, double* %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 1074191213
  br i1 %23, label %24, label %86

24:                                               ; preds = %15
  %25 = load double, double* @ra0, align 8
  %26 = load double, double* %6, align 8
  %27 = load double, double* @ra1, align 8
  %28 = load double, double* %6, align 8
  %29 = load double, double* @ra2, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* @ra3, align 8
  %32 = load double, double* %6, align 8
  %33 = load double, double* @ra4, align 8
  %34 = load double, double* %6, align 8
  %35 = load double, double* @ra5, align 8
  %36 = load double, double* %6, align 8
  %37 = load double, double* @ra6, align 8
  %38 = load double, double* %6, align 8
  %39 = load double, double* @ra7, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  %42 = fmul double %36, %41
  %43 = fadd double %35, %42
  %44 = fmul double %34, %43
  %45 = fadd double %33, %44
  %46 = fmul double %32, %45
  %47 = fadd double %31, %46
  %48 = fmul double %30, %47
  %49 = fadd double %29, %48
  %50 = fmul double %28, %49
  %51 = fadd double %27, %50
  %52 = fmul double %26, %51
  %53 = fadd double %25, %52
  store double %53, double* %7, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* @sa1, align 8
  %56 = load double, double* %6, align 8
  %57 = load double, double* @sa2, align 8
  %58 = load double, double* %6, align 8
  %59 = load double, double* @sa3, align 8
  %60 = load double, double* %6, align 8
  %61 = load double, double* @sa4, align 8
  %62 = load double, double* %6, align 8
  %63 = load double, double* @sa5, align 8
  %64 = load double, double* %6, align 8
  %65 = load double, double* @sa6, align 8
  %66 = load double, double* %6, align 8
  %67 = load double, double* @sa7, align 8
  %68 = load double, double* %6, align 8
  %69 = load double, double* @sa8, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %67, %70
  %72 = fmul double %66, %71
  %73 = fadd double %65, %72
  %74 = fmul double %64, %73
  %75 = fadd double %63, %74
  %76 = fmul double %62, %75
  %77 = fadd double %61, %76
  %78 = fmul double %60, %77
  %79 = fadd double %59, %78
  %80 = fmul double %58, %79
  %81 = fadd double %57, %80
  %82 = fmul double %56, %81
  %83 = fadd double %55, %82
  %84 = fmul double %54, %83
  %85 = fadd double 1.000000e+00, %84
  store double %85, double* %8, align 8
  br label %140

86:                                               ; preds = %15
  %87 = load double, double* @rb0, align 8
  %88 = load double, double* %6, align 8
  %89 = load double, double* @rb1, align 8
  %90 = load double, double* %6, align 8
  %91 = load double, double* @rb2, align 8
  %92 = load double, double* %6, align 8
  %93 = load double, double* @rb3, align 8
  %94 = load double, double* %6, align 8
  %95 = load double, double* @rb4, align 8
  %96 = load double, double* %6, align 8
  %97 = load double, double* @rb5, align 8
  %98 = load double, double* %6, align 8
  %99 = load double, double* @rb6, align 8
  %100 = fmul double %98, %99
  %101 = fadd double %97, %100
  %102 = fmul double %96, %101
  %103 = fadd double %95, %102
  %104 = fmul double %94, %103
  %105 = fadd double %93, %104
  %106 = fmul double %92, %105
  %107 = fadd double %91, %106
  %108 = fmul double %90, %107
  %109 = fadd double %89, %108
  %110 = fmul double %88, %109
  %111 = fadd double %87, %110
  store double %111, double* %7, align 8
  %112 = load double, double* %6, align 8
  %113 = load double, double* @sb1, align 8
  %114 = load double, double* %6, align 8
  %115 = load double, double* @sb2, align 8
  %116 = load double, double* %6, align 8
  %117 = load double, double* @sb3, align 8
  %118 = load double, double* %6, align 8
  %119 = load double, double* @sb4, align 8
  %120 = load double, double* %6, align 8
  %121 = load double, double* @sb5, align 8
  %122 = load double, double* %6, align 8
  %123 = load double, double* @sb6, align 8
  %124 = load double, double* %6, align 8
  %125 = load double, double* @sb7, align 8
  %126 = fmul double %124, %125
  %127 = fadd double %123, %126
  %128 = fmul double %122, %127
  %129 = fadd double %121, %128
  %130 = fmul double %120, %129
  %131 = fadd double %119, %130
  %132 = fmul double %118, %131
  %133 = fadd double %117, %132
  %134 = fmul double %116, %133
  %135 = fadd double %115, %134
  %136 = fmul double %114, %135
  %137 = fadd double %113, %136
  %138 = fmul double %112, %137
  %139 = fadd double 1.000000e+00, %138
  store double %139, double* %8, align 8
  br label %140

140:                                              ; preds = %86, %24
  %141 = load double, double* %5, align 8
  store double %141, double* %9, align 8
  %142 = load double, double* %9, align 8
  %143 = call i32 @SET_LOW_WORD(double %142, i32 0)
  %144 = load double, double* %9, align 8
  %145 = fneg double %144
  %146 = load double, double* %9, align 8
  %147 = fmul double %145, %146
  %148 = fsub double %147, 5.625000e-01
  %149 = call double @exp(double %148) #4
  %150 = load double, double* %9, align 8
  %151 = load double, double* %5, align 8
  %152 = fsub double %150, %151
  %153 = load double, double* %9, align 8
  %154 = load double, double* %5, align 8
  %155 = fadd double %153, %154
  %156 = fmul double %152, %155
  %157 = load double, double* %7, align 8
  %158 = load double, double* %8, align 8
  %159 = fdiv double %157, %158
  %160 = fadd double %156, %159
  %161 = call double @exp(double %160) #4
  %162 = fmul double %149, %161
  %163 = load double, double* %5, align 8
  %164 = fdiv double %162, %163
  store double %164, double* %3, align 8
  br label %165

165:                                              ; preds = %140, %12
  %166 = load double, double* %3, align 8
  ret double %166
}

declare dso_local double @erfc1(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
