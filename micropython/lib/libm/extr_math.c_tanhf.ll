; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_tanhf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_tanhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tanhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float %0, float* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load float, float* %2, align 4
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %7 = load float, float* %2, align 4
  %8 = fneg float %7
  store float %8, float* %2, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load float, float* %2, align 4
  %11 = fmul float -2.000000e+00, %10
  %12 = fptosi float %11 to i32
  %13 = call float @expm1f(i32 %12)
  store float %13, float* %2, align 4
  %14 = load float, float* %2, align 4
  %15 = load float, float* %2, align 4
  %16 = fadd float %15, 2.000000e+00
  %17 = fdiv float %14, %16
  store float %17, float* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = load float, float* %2, align 4
  br label %25

22:                                               ; preds = %9
  %23 = load float, float* %2, align 4
  %24 = fneg float %23
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi float [ %21, %20 ], [ %24, %22 ]
  ret float %26
}

declare dso_local float @expm1f(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
