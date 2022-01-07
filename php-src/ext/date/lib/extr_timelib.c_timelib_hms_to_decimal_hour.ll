; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_timelib.c_timelib_hms_to_decimal_hour.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_timelib.c_timelib_hms_to_decimal_hour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_hms_to_decimal_hour(i32 %0, i32 %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 6.000000e+01
  %17 = fadd double %13, %16
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 3.600000e+03
  %21 = fadd double %17, %20
  %22 = load double*, double** %8, align 8
  store double %21, double* %22, align 8
  br label %35

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = sitofp i32 %24 to double
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 6.000000e+01
  %29 = fsub double %25, %28
  %30 = load i32, i32* %7, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 3.600000e+03
  %33 = fsub double %29, %32
  %34 = load double*, double** %8, align 8
  store double %33, double* %34, align 8
  br label %35

35:                                               ; preds = %23, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
