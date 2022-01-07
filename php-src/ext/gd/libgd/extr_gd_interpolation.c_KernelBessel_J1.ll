; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_J1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_J1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KernelBessel_J1.Pone = internal constant [9 x double] [double 0x443F81C2E523683D, double 0xC40CEF86BDED9999, double 0x43C012D008C7BCEA, double 0xC35FE006C30BA161, double 0x42F088DAAD7AF759, double 0xC273407F5DC0C206, double 0x41E96E3A40C9A788, double 0xC151E9B261F60E0A, double 0x40A51A3ED3F64AC9], align 16
@KernelBessel_J1.Qone = internal constant [9 x double] [double 0x444F81C2E523683D, double 0x43E491E139AE7522, double 0x436B0DDF388A59F6, double 0x42E7AA6E7871A918, double 0x425E85BCB84A30F5, double 0x41CE372A2D2DE908, double 0x4136EA619851D3CA, double 0x40991BB9EE66133E, double 1.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @KernelBessel_J1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @KernelBessel_J1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  store double %0, double* %2, align 8
  %6 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @KernelBessel_J1.Pone, i64 0, i64 8), align 16
  store double %6, double* %3, align 8
  %7 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @KernelBessel_J1.Qone, i64 0, i64 8), align 16
  store double %7, double* %4, align 8
  store i64 7, i64* %5, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %5, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %2, align 8
  %14 = fmul double %12, %13
  %15 = load double, double* %2, align 8
  %16 = fmul double %14, %15
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds [9 x double], [9 x double]* @KernelBessel_J1.Pone, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = fadd double %16, %19
  store double %20, double* %3, align 8
  %21 = load double, double* %4, align 8
  %22 = load double, double* %2, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %2, align 8
  %25 = fmul double %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds [9 x double], [9 x double]* @KernelBessel_J1.Qone, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fadd double %25, %28
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %11
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %5, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load double, double* %3, align 8
  %35 = load double, double* %4, align 8
  %36 = fdiv double %34, %35
  ret double %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
