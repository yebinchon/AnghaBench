; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tgamma.c_sinpi.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tgamma.c_sinpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @sinpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sinpi(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fmul double %5, 5.000000e-01
  store double %6, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = call double @llvm.floor.f64(double %8)
  %10 = fsub double %7, %9
  %11 = fmul double 2.000000e+00, %10
  store double %11, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = fmul double 4.000000e+00, %12
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 5.000000e-01
  %21 = load double, double* %3, align 8
  %22 = fsub double %21, %20
  store double %22, double* %3, align 8
  %23 = load double, double* @pi, align 8
  %24 = load double, double* %3, align 8
  %25 = fmul double %24, %23
  store double %25, double* %3, align 8
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %27 [
    i32 0, label %28
    i32 1, label %31
    i32 2, label %34
    i32 3, label %38
  ]

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %1, %27
  %29 = load double, double* %3, align 8
  %30 = call double @__sin(double %29, i32 0, i32 0)
  store double %30, double* %2, align 8
  br label %42

31:                                               ; preds = %1
  %32 = load double, double* %3, align 8
  %33 = call double @__cos(double %32, i32 0)
  store double %33, double* %2, align 8
  br label %42

34:                                               ; preds = %1
  %35 = load double, double* %3, align 8
  %36 = fneg double %35
  %37 = call double @__sin(double %36, i32 0, i32 0)
  store double %37, double* %2, align 8
  br label %42

38:                                               ; preds = %1
  %39 = load double, double* %3, align 8
  %40 = call double @__cos(double %39, i32 0)
  %41 = fneg double %40
  store double %41, double* %2, align 8
  br label %42

42:                                               ; preds = %38, %34, %31, %28
  %43 = load double, double* %2, align 8
  ret double %43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local double @__sin(double, i32, i32) #2

declare dso_local double @__cos(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
