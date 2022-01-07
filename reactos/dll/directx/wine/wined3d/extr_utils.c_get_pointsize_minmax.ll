; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_pointsize_minmax.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_pointsize_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { i32* }
%union.anon = type { i32 }

@WINED3D_RS_POINTSIZE_MIN = common dso_local global i64 0, align 8
@WINED3D_RS_POINTSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_pointsize_minmax(%struct.wined3d_context* %0, %struct.wined3d_state* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %union.anon, align 4
  %10 = alloca %union.anon, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @WINED3D_RS_POINTSIZE_MIN, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.anon* %9 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @WINED3D_RS_POINTSIZE_MAX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.anon* %10 to i32*
  store i32 %23, i32* %24, align 4
  %25 = bitcast %union.anon* %9 to float*
  %26 = load float, float* %25, align 4
  %27 = bitcast %union.anon* %10 to float*
  %28 = load float, float* %27, align 4
  %29 = fcmp ogt float %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = bitcast %union.anon* %10 to float*
  %32 = load float, float* %31, align 4
  %33 = bitcast %union.anon* %9 to float*
  store float %32, float* %33, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = bitcast %union.anon* %9 to float*
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %7, align 8
  store float %36, float* %37, align 4
  %38 = bitcast %union.anon* %10 to float*
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %8, align 8
  store float %39, float* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
