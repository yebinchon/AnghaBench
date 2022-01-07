; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_divmod.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_divmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_half_divmod(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call float @npy_half_to_float(i32 %11)
  store float %12, float* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call float @npy_half_to_float(i32 %13)
  store float %14, float* %8, align 4
  %15 = load float, float* %7, align 4
  %16 = load float, float* %8, align 4
  %17 = call float @npy_divmodf(float %15, float %16, float* %10)
  store float %17, float* %9, align 4
  %18 = load float, float* %10, align 4
  %19 = call i32 @npy_float_to_half(float %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load float, float* %9, align 4
  %22 = call i32 @npy_float_to_half(float %21)
  ret i32 %22
}

declare dso_local float @npy_half_to_float(i32) #1

declare dso_local float @npy_divmodf(float, float, float*) #1

declare dso_local i32 @npy_float_to_half(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
