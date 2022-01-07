; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_map_float_to_uint.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_map_float_to_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float, float, float, i32, i32)* @map_float_to_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_float_to_uint(float %0, float %1, float %2, i32 %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load float, float* %6, align 4
  %12 = load float, float* %7, align 4
  %13 = fsub float %11, %12
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sitofp i32 %16 to float
  %18 = fmul float %13, %17
  %19 = load float, float* %8, align 4
  %20 = load float, float* %7, align 4
  %21 = fsub float %19, %20
  %22 = fdiv float %18, %21
  %23 = load i32, i32* %9, align 4
  %24 = sitofp i32 %23 to float
  %25 = fadd float %22, %24
  %26 = fptosi float %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
