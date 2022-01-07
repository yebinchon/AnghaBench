; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_Q1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_KernelBessel_Q1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KernelBessel_Q1.Pone = internal constant [6 x double] [double 0x4075F2CD95877EA5, double 0x408688503DDC68E8, double 0x407A9FCBFC4E8E2C, double 0x4054CC274093A456, double 0x401245CEC89DC00C, double 0x3FA2169069C535FB], align 16
@KernelBessel_Q1.Qone = internal constant [6 x double] [double 0x40BD43BCC75F5387, double 0x40CE1B16B30D93F2, double 0x40C1E01DA86532F5, double 0x409C4CBF2E6DF9FA, double 0x4059F4668A3ED3A5, double 1.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @KernelBessel_Q1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @KernelBessel_Q1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  store double %0, double* %2, align 8
  %6 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @KernelBessel_Q1.Pone, i64 0, i64 5), align 8
  store double %6, double* %3, align 8
  %7 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @KernelBessel_Q1.Qone, i64 0, i64 5), align 8
  store double %7, double* %4, align 8
  store i64 4, i64* %5, align 8
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i64, i64* %5, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load double, double* %3, align 8
  %13 = load double, double* %2, align 8
  %14 = fdiv double 8.000000e+00, %13
  %15 = fmul double %12, %14
  %16 = load double, double* %2, align 8
  %17 = fdiv double 8.000000e+00, %16
  %18 = fmul double %15, %17
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds [6 x double], [6 x double]* @KernelBessel_Q1.Pone, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fadd double %18, %21
  store double %22, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %2, align 8
  %25 = fdiv double 8.000000e+00, %24
  %26 = fmul double %23, %25
  %27 = load double, double* %2, align 8
  %28 = fdiv double 8.000000e+00, %27
  %29 = fmul double %26, %28
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [6 x double], [6 x double]* @KernelBessel_Q1.Qone, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fadd double %29, %32
  store double %33, double* %4, align 8
  br label %34

34:                                               ; preds = %11
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %5, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load double, double* %3, align 8
  %39 = load double, double* %4, align 8
  %40 = fdiv double %38, %39
  ret double %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
