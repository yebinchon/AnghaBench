; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_map_uint_to_float.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_map_uint_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i64, i64, i64, float, float)* @map_uint_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @map_uint_to_float(i64 %0, i64 %1, i64 %2, float %3, float %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub nsw i64 %11, %12
  %14 = sitofp i64 %13 to float
  %15 = load float, float* %10, align 4
  %16 = load float, float* %9, align 4
  %17 = fsub float %15, %16
  %18 = fmul float %14, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = sitofp i64 %21 to float
  %23 = fdiv float %18, %22
  %24 = load float, float* %9, align 4
  %25 = fadd float %23, %24
  ret float %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
