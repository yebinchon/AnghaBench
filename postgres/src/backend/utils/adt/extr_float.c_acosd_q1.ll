; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_acosd_q1.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_acosd_q1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asin_0_5 = common dso_local global double 0.000000e+00, align 8
@acos_0_5 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @acosd_q1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @acosd_q1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp ole double %6, 5.000000e-01
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load double, double* %3, align 8
  %10 = call double @asin(double %9) #2
  store volatile double %10, double* %4, align 8
  %11 = load volatile double, double* %4, align 8
  %12 = load volatile double, double* @asin_0_5, align 8
  %13 = fdiv double %11, %12
  %14 = fmul double %13, 3.000000e+01
  %15 = fsub double 9.000000e+01, %14
  store double %15, double* %2, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load double, double* %3, align 8
  %18 = call double @acos(double %17) #2
  store volatile double %18, double* %5, align 8
  %19 = load volatile double, double* %5, align 8
  %20 = load volatile double, double* @acos_0_5, align 8
  %21 = fdiv double %19, %20
  %22 = fmul double %21, 6.000000e+01
  store double %22, double* %2, align 8
  br label %23

23:                                               ; preds = %16, %8
  %24 = load double, double* %2, align 8
  ret double %24
}

; Function Attrs: nounwind
declare dso_local double @asin(double) #1

; Function Attrs: nounwind
declare dso_local double @acos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
