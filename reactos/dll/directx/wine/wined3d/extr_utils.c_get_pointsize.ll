; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_pointsize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_pointsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { float }
%union.anon = type { i64 }

@WINED3D_RS_POINTSIZE = common dso_local global i64 0, align 8
@WINED3D_RS_POINTSCALE_A = common dso_local global i64 0, align 8
@WINED3D_RS_POINTSCALE_B = common dso_local global i64 0, align 8
@WINED3D_RS_POINTSCALE_C = common dso_local global i64 0, align 8
@WINED3D_RS_POINTSCALEENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_pointsize(%struct.wined3d_context* %0, %struct.wined3d_state* %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %union.anon, align 8
  %10 = alloca %union.anon, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca %union.anon, align 8
  %13 = alloca float, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %14 = load float*, float** %8, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float 1.000000e+00, float* %15, align 4
  %16 = load float*, float** %8, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float 0.000000e+00, float* %17, align 4
  %18 = load float*, float** %8, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  store float 0.000000e+00, float* %19, align 4
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @WINED3D_RS_POINTSIZE, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %union.anon* %9 to i64*
  store i64 %25, i64* %26, align 8
  %27 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @WINED3D_RS_POINTSCALE_A, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %union.anon* %10 to i64*
  store i64 %32, i64* %33, align 8
  %34 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @WINED3D_RS_POINTSCALE_B, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %union.anon* %11 to i64*
  store i64 %39, i64* %40, align 8
  %41 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @WINED3D_RS_POINTSCALE_C, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %union.anon* %12 to i64*
  store i64 %46, i64* %47, align 8
  %48 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %49 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @WINED3D_RS_POINTSCALEENABLE, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %4
  %56 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %57 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 8
  %60 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %61 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load float, float* %62, align 8
  %64 = fmul float %59, %63
  store float %64, float* %13, align 4
  %65 = bitcast %union.anon* %10 to float*
  %66 = load float, float* %65, align 8
  %67 = load float, float* %13, align 4
  %68 = fdiv float %66, %67
  %69 = load float*, float** %8, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  store float %68, float* %70, align 4
  %71 = bitcast %union.anon* %11 to float*
  %72 = load float, float* %71, align 8
  %73 = load float, float* %13, align 4
  %74 = fdiv float %72, %73
  %75 = load float*, float** %8, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  store float %74, float* %76, align 4
  %77 = bitcast %union.anon* %12 to float*
  %78 = load float, float* %77, align 8
  %79 = load float, float* %13, align 4
  %80 = fdiv float %78, %79
  %81 = load float*, float** %8, align 8
  %82 = getelementptr inbounds float, float* %81, i64 2
  store float %80, float* %82, align 4
  br label %83

83:                                               ; preds = %55, %4
  %84 = bitcast %union.anon* %9 to float*
  %85 = load float, float* %84, align 8
  %86 = load float*, float** %7, align 8
  store float %85, float* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
