; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_power.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_filter_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @filter_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @filter_power(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double 2.000000e+00, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = call i32 @fabs(double %5)
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = call double @pow(double %10, double 2.000000e+00)
  %12 = call i32 @fabs(double %11)
  %13 = sitofp i32 %12 to double
  %14 = fsub double 1.000000e+00, %13
  store double %14, double* %2, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load double, double* %2, align 8
  ret double %16
}

declare dso_local i32 @fabs(double) #1

declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
