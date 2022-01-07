; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_ln.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_ln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @ln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ln(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store double %0, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = fsub double %7, 1.000000e+00
  %9 = load double, double* %2, align 8
  %10 = fadd double %9, 1.000000e+00
  %11 = fdiv double %8, %10
  store double %11, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fmul double %12, %13
  store double %14, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i64 33, i64* %6, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double 1.000000e+00, %20
  %22 = load double, double* %4, align 8
  %23 = load double, double* %5, align 8
  %24 = fmul double %22, %23
  %25 = fadd double %21, %24
  store double %25, double* %5, align 8
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %27, 2
  store i64 %28, i64* %6, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load double, double* %3, align 8
  %31 = fmul double 2.000000e+00, %30
  %32 = load double, double* %5, align 8
  %33 = fmul double %31, %32
  ret double %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
