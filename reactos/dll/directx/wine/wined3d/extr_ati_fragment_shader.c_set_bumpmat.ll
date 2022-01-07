; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_set_bumpmat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_set_bumpmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.atifs_context_private_data*, %struct.wined3d_gl_info* }
%struct.atifs_context_private_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32** }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@ATIFS_CONSTANT_BUMP = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT01 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT10 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT11 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"glSetFragmentShaderConstantATI(ATIFS_CONST_BUMPMAT(stage), mat)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @set_bumpmat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bumpmat(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca [2 x [2 x float]], align 16
  %10 = alloca %struct.atifs_context_private_data*, align 8
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
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %18, align 8
  store %struct.wined3d_gl_info* %19, %struct.wined3d_gl_info** %8, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %21, align 8
  store %struct.atifs_context_private_data* %22, %struct.atifs_context_private_data** %10, align 8
  %23 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %10, align 8
  %24 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %10, align 8
  %29 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATIFS_CONSTANT_BUMP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27, %3
  br label %128

40:                                               ; preds = %27
  %41 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT00, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = bitcast i32* %49 to float*
  %51 = load float, float* %50, align 4
  %52 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %53 = getelementptr inbounds [2 x float], [2 x float]* %52, i64 0, i64 0
  store float %51, float* %53, align 16
  %54 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT01, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = bitcast i32* %62 to float*
  %64 = load float, float* %63, align 4
  %65 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %66 = getelementptr inbounds [2 x float], [2 x float]* %65, i64 0, i64 0
  store float %64, float* %66, align 8
  %67 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %68 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT10, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to float*
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %79 = getelementptr inbounds [2 x float], [2 x float]* %78, i64 0, i64 1
  store float %77, float* %79, align 4
  %80 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %81 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT11, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = bitcast i32* %88 to float*
  %90 = load float, float* %89, align 4
  %91 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %92 = getelementptr inbounds [2 x float], [2 x float]* %91, i64 0, i64 1
  store float %90, float* %92, align 4
  %93 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [2 x float], [2 x float]* %93, i64 0, i64 0
  %95 = load float, float* %94, align 16
  %96 = fadd float %95, 1.000000e+00
  %97 = fmul float %96, 5.000000e-01
  %98 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %99 = getelementptr inbounds [2 x float], [2 x float]* %98, i64 0, i64 0
  store float %97, float* %99, align 16
  %100 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %101 = getelementptr inbounds [2 x float], [2 x float]* %100, i64 0, i64 0
  %102 = load float, float* %101, align 8
  %103 = fadd float %102, 1.000000e+00
  %104 = fmul float %103, 5.000000e-01
  %105 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %106 = getelementptr inbounds [2 x float], [2 x float]* %105, i64 0, i64 0
  store float %104, float* %106, align 8
  %107 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %108 = getelementptr inbounds [2 x float], [2 x float]* %107, i64 0, i64 1
  %109 = load float, float* %108, align 4
  %110 = fadd float %109, 1.000000e+00
  %111 = fmul float %110, 5.000000e-01
  %112 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %113 = getelementptr inbounds [2 x float], [2 x float]* %112, i64 0, i64 1
  store float %111, float* %113, align 4
  %114 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %115 = getelementptr inbounds [2 x float], [2 x float]* %114, i64 0, i64 1
  %116 = load float, float* %115, align 4
  %117 = fadd float %116, 1.000000e+00
  %118 = fmul float %117, 5.000000e-01
  %119 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 1
  %120 = getelementptr inbounds [2 x float], [2 x float]* %119, i64 0, i64 1
  store float %118, float* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @ATIFS_CONST_BUMPMAT(i32 %121)
  %123 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %9, i64 0, i64 0
  %124 = bitcast [2 x float]* %123 to float*
  %125 = call i32 @glSetFragmentShaderConstantATI(i32 %122, float* %124)
  %126 = call i32 @GL_EXTCALL(i32 %125)
  %127 = call i32 @checkGLcall(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %40, %39
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glSetFragmentShaderConstantATI(i32, float*) #1

declare dso_local i32 @ATIFS_CONST_BUMPMAT(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
