; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_bumpenvmat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvts_bumpenvmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32, float*)* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { i32** }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT01 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT10 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT11 = common dso_local global i64 0, align 8
@GL_TEXTURE_SHADER_NV = common dso_local global i32 0, align 4
@GL_OFFSET_TEXTURE_MATRIX_NV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"glTexEnvfv(GL_TEXTURE_SHADER_NV, GL_OFFSET_TEXTURE_MATRIX_NV, mat)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @nvts_bumpenvmat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvts_bumpenvmat(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca [2 x [2 x float]], align 16
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @STATE_TEXTURESTAGE(i32 0, i32 0)
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 1
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %26, align 8
  store %struct.wined3d_gl_info* %27, %struct.wined3d_gl_info** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %30 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %3
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @context_active_texture(%struct.wined3d_context* %35, %struct.wined3d_gl_info* %36, i32 %37)
  %39 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT00, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to float*
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %51 = getelementptr inbounds [2 x float], [2 x float]* %50, i64 0, i64 0
  store float %49, float* %51, align 16
  %52 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %53 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT01, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = bitcast i32* %60 to float*
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 1
  %64 = getelementptr inbounds [2 x float], [2 x float]* %63, i64 0, i64 0
  store float %62, float* %64, align 8
  %65 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT10, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = bitcast i32* %73 to float*
  %75 = load float, float* %74, align 4
  %76 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %77 = getelementptr inbounds [2 x float], [2 x float]* %76, i64 0, i64 1
  store float %75, float* %77, align 4
  %78 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %79 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT11, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = bitcast i32* %86 to float*
  %88 = load float, float* %87, align 4
  %89 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 1
  %90 = getelementptr inbounds [2 x float], [2 x float]* %89, i64 0, i64 1
  store float %88, float* %90, align 4
  %91 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %92 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, float*)*, i32 (i32, i32, float*)** %94, align 8
  %96 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %97 = load i32, i32* @GL_OFFSET_TEXTURE_MATRIX_NV, align 4
  %98 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %99 = bitcast [2 x float]* %98 to float*
  %100 = call i32 %95(i32 %96, i32 %97, float* %99)
  %101 = call i32 @checkGLcall(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %34, %3
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @context_active_texture(%struct.wined3d_context*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
