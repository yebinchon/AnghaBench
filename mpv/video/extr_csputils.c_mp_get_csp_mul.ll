; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_csp_mul.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_get_csp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_CSP_RGB = common dso_local global i32 0, align 4
@MP_CSP_XYZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mp_get_csp_mul(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store double 1.000000e+00, double* %4, align 8
  br label %50

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MP_CSP_RGB, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = sitofp i64 %23 to double
  %25 = fsub double %24, 1.000000e+00
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = sitofp i64 %28 to double
  %30 = fsub double %29, 1.000000e+00
  %31 = fdiv double %25, %30
  store double %31, double* %4, align 8
  br label %50

32:                                               ; preds = %16
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MP_CSP_XYZ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store double 1.000000e+00, double* %4, align 8
  br label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  %41 = sitofp i64 %40 to double
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = sitofp i64 %44 to double
  %46 = fsub double %45, 1.000000e+00
  %47 = fdiv double %41, %46
  %48 = fmul double %47, 2.550000e+02
  %49 = fdiv double %48, 2.560000e+02
  store double %49, double* %4, align 8
  br label %50

50:                                               ; preds = %37, %36, %20, %15
  %51 = load double, double* %4, align 8
  ret double %51
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
