; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_eyal1.c_waste_time.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_eyal1.c_waste_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32)* @waste_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @waste_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store double 0.000000e+00, double* %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %8, 100
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = call double (...) @rand()
  store double %14, double* %4, align 8
  %15 = call double (...) @rand()
  store double %15, double* %5, align 8
  %16 = call double (...) @rand()
  store double %16, double* %6, align 8
  %17 = load double, double* %4, align 8
  %18 = fmul double 2.000000e+00, %17
  %19 = load double, double* %5, align 8
  %20 = fmul double %18, %19
  %21 = load double, double* %6, align 8
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load double, double* %6, align 8
  %25 = load double, double* %6, align 8
  %26 = fmul double %24, %25
  br label %28

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi double [ %26, %23 ], [ 1.000000e+00, %27 ]
  %30 = fdiv double %20, %29
  %31 = load double, double* %7, align 8
  %32 = fadd double %31, %30
  store double %32, double* %7, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load double, double* %7, align 8
  ret double %37
}

declare dso_local double @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
