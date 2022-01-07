; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cube_coords_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cube_coords_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }
%struct.float_rect = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, float, %struct.float_rect*)* @cube_coords_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cube_coords_float(%struct.TYPE_3__* %0, float %1, float %2, %struct.float_rect* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.float_rect*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store %struct.float_rect* %3, %struct.float_rect** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = fmul float %11, 2.000000e+00
  %13 = load float, float* %6, align 4
  %14 = fdiv float %12, %13
  %15 = fsub float %14, 1.000000e+00
  %16 = load %struct.float_rect*, %struct.float_rect** %8, align 8
  %17 = getelementptr inbounds %struct.float_rect, %struct.float_rect* %16, i32 0, i32 0
  store float %15, float* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load float, float* %19, align 4
  %21 = fmul float %20, 2.000000e+00
  %22 = load float, float* %7, align 4
  %23 = fdiv float %21, %22
  %24 = fsub float %23, 1.000000e+00
  %25 = load %struct.float_rect*, %struct.float_rect** %8, align 8
  %26 = getelementptr inbounds %struct.float_rect, %struct.float_rect* %25, i32 0, i32 1
  store float %24, float* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load float, float* %28, align 4
  %30 = fmul float %29, 2.000000e+00
  %31 = load float, float* %6, align 4
  %32 = fdiv float %30, %31
  %33 = fsub float %32, 1.000000e+00
  %34 = load %struct.float_rect*, %struct.float_rect** %8, align 8
  %35 = getelementptr inbounds %struct.float_rect, %struct.float_rect* %34, i32 0, i32 2
  store float %33, float* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load float, float* %37, align 4
  %39 = fmul float %38, 2.000000e+00
  %40 = load float, float* %7, align 4
  %41 = fdiv float %39, %40
  %42 = fsub float %41, 1.000000e+00
  %43 = load %struct.float_rect*, %struct.float_rect** %8, align 8
  %44 = getelementptr inbounds %struct.float_rect, %struct.float_rect* %43, i32 0, i32 3
  store float %42, float* %44, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
