; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tanh.c_tanh.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_tanh.c_tanh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @tanh(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double %0, double* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load double, double* %2, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %7 = load double, double* %2, align 8
  %8 = fneg double %7
  store double %8, double* %2, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load double, double* %2, align 8
  %11 = fmul double -2.000000e+00, %10
  %12 = fptosi double %11 to i32
  %13 = call double @expm1(i32 %12)
  store double %13, double* %2, align 8
  %14 = load double, double* %2, align 8
  %15 = load double, double* %2, align 8
  %16 = fadd double %15, 2.000000e+00
  %17 = fdiv double %14, %16
  store double %17, double* %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load double, double* %2, align 8
  br label %25

22:                                               ; preds = %9
  %23 = load double, double* %2, align 8
  %24 = fneg double %23
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi double [ %21, %20 ], [ %24, %22 ]
  ret double %26
}

declare dso_local double @expm1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
