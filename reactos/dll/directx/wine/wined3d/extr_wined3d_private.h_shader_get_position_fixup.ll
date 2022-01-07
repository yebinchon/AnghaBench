; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_shader_get_position_fixup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_shader_get_position_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { float, float }

@WINED3D_PIXEL_CENTER_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, float*)* @shader_get_position_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_get_position_fixup(%struct.wined3d_context* %0, %struct.wined3d_state* %1, float* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store float* %2, float** %6, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WINED3D_PIXEL_CENTER_INTEGER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store float 9.843750e-01, float* %7, align 4
  br label %18

17:                                               ; preds = %3
  store float -1.562500e-02, float* %7, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float 1.000000e+00, float* %20, align 4
  %21 = load float*, float** %6, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  store float 1.000000e+00, float* %22, align 4
  %23 = load float, float* %7, align 4
  %24 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fdiv float %23, %27
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  store float %28, float* %30, align 4
  %31 = load float, float* %7, align 4
  %32 = fneg float %31
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = fdiv float %32, %36
  %38 = load float*, float** %6, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  store float %37, float* %39, align 4
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %18
  %45 = load float*, float** %6, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %47, -1.000000e+00
  store float %48, float* %46, align 4
  %49 = load float*, float** %6, align 8
  %50 = getelementptr inbounds float, float* %49, i64 3
  %51 = load float, float* %50, align 4
  %52 = fmul float %51, -1.000000e+00
  store float %52, float* %50, align 4
  br label %53

53:                                               ; preds = %44, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
