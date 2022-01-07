; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_running_median_estimate.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_running_median_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @running_median_estimate(float* %0, i64 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i64 %1, i64* %4, align 8
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load float*, float** %3, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds float, float* %14, i64 %15
  %17 = load float, float* %16, align 4
  store float %17, float* %8, align 4
  %18 = load float, float* %8, align 4
  %19 = call i32 @calculated_number_isnumber(float %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %43

26:                                               ; preds = %13
  %27 = load float, float* %8, align 4
  %28 = load float, float* %6, align 4
  %29 = fsub float %27, %28
  %30 = fmul float %29, 0x3FB99999A0000000
  %31 = load float, float* %6, align 4
  %32 = fadd float %31, %30
  store float %32, float* %6, align 4
  %33 = load float, float* %6, align 4
  %34 = fpext float %33 to double
  %35 = fmul double %34, 1.000000e-02
  %36 = fptrunc double %35 to float
  %37 = load float, float* %8, align 4
  %38 = load float, float* %5, align 4
  %39 = fsub float %37, %38
  %40 = call float @copysignl(float %36, float %39)
  %41 = load float, float* %5, align 4
  %42 = fadd float %41, %40
  store float %42, float* %5, align 4
  br label %43

43:                                               ; preds = %26, %25
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %9

46:                                               ; preds = %9
  %47 = load float, float* %5, align 4
  ret float %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @calculated_number_isnumber(float) #1

declare dso_local float @copysignl(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
