; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_rand_float.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_rand_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @rand_float(i32 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i64 (...) @rand()
  %8 = sitofp i64 %7 to double
  %9 = load i64, i64* @RAND_MAX, align 8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %8, %10
  %12 = fptrunc double %11 to float
  store float %12, float* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = call i64 (...) @rand()
  %15 = sitofp i64 %14 to double
  %16 = load i64, i64* @RAND_MAX, align 8
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %15, %17
  %19 = fmul double %18, 2.000000e+00
  %20 = fsub double %19, 1.000000e+00
  %21 = fptrunc double %20 to float
  store float %21, float* %2, align 4
  br label %22

22:                                               ; preds = %13, %6
  %23 = load float, float* %2, align 4
  ret float %23
}

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
