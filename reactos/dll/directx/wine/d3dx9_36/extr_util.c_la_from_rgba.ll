; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_la_from_rgba.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_util.c_la_from_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { float, float, float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec4*, %struct.vec4*)* @la_from_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @la_from_rgba(%struct.vec4* %0, %struct.vec4* %1) #0 {
  %3 = alloca %struct.vec4*, align 8
  %4 = alloca %struct.vec4*, align 8
  store %struct.vec4* %0, %struct.vec4** %3, align 8
  store %struct.vec4* %1, %struct.vec4** %4, align 8
  %5 = load %struct.vec4*, %struct.vec4** %3, align 8
  %6 = getelementptr inbounds %struct.vec4, %struct.vec4* %5, i32 0, i32 0
  %7 = load float, float* %6, align 4
  %8 = fmul float %7, 0x3FCB333340000000
  %9 = load %struct.vec4*, %struct.vec4** %3, align 8
  %10 = getelementptr inbounds %struct.vec4, %struct.vec4* %9, i32 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = fmul float %11, 0x3FE6E48E80000000
  %13 = fadd float %8, %12
  %14 = load %struct.vec4*, %struct.vec4** %3, align 8
  %15 = getelementptr inbounds %struct.vec4, %struct.vec4* %14, i32 0, i32 2
  %16 = load float, float* %15, align 4
  %17 = fmul float %16, 0x3FB2752540000000
  %18 = fadd float %13, %17
  %19 = load %struct.vec4*, %struct.vec4** %4, align 8
  %20 = getelementptr inbounds %struct.vec4, %struct.vec4* %19, i32 0, i32 0
  store float %18, float* %20, align 4
  %21 = load %struct.vec4*, %struct.vec4** %3, align 8
  %22 = getelementptr inbounds %struct.vec4, %struct.vec4* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vec4*, %struct.vec4** %4, align 8
  %25 = getelementptr inbounds %struct.vec4, %struct.vec4* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
