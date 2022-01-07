; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_set_bumpmat_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_set_bumpmat_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_device*, %struct.wined3d_gl_info* }
%struct.wined3d_device = type { %struct.shader_arb_priv*, i32* }
%struct.shader_arb_priv = type { i32*, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32** }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_BUMP_ENV = common dso_local global i32 0, align 4
@arb_program_shader_backend = common dso_local global i32 0, align 4
@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT01 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT10 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_MAT11 = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_BUMPMAT(stage), &mat[0][0])\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @set_bumpmat_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bumpmat_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca [2 x [2 x float]], align 16
  %11 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @STATE_TEXTURESTAGE(i32 0, i32 0)
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %16 = add nsw i32 %15, 1
  %17 = sdiv i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 2
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  store %struct.wined3d_gl_info* %20, %struct.wined3d_gl_info** %8, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 1
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %22, align 8
  store %struct.wined3d_device* %23, %struct.wined3d_device** %9, align 8
  %24 = load i32, i32* @WINED3D_SHADER_CONST_PS_BUMP_ENV, align 4
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %30 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, @arb_program_shader_backend
  br i1 %32, label %33, label %58

33:                                               ; preds = %3
  %34 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %35 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %34, i32 0, i32 0
  %36 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %35, align 8
  store %struct.shader_arb_priv* %36, %struct.shader_arb_priv** %11, align 8
  %37 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %38 = call i64 @use_ps(%struct.wined3d_state* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %119

41:                                               ; preds = %33
  %42 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %43 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ARB_FFP_CONST_BUMPMAT(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %50 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ARB_FFP_CONST_BUMPMAT(i32 %52)
  %54 = add nsw i32 %53, 1
  %55 = call i32 @max(i32 %51, i32 %54)
  %56 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %57 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %41, %3
  %59 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT00, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = bitcast i32* %67 to float*
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %71 = getelementptr inbounds [2 x float], [2 x float]* %70, i64 0, i64 0
  store float %69, float* %71, align 16
  %72 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %73 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT01, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = bitcast i32* %80 to float*
  %82 = load float, float* %81, align 4
  %83 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %84 = getelementptr inbounds [2 x float], [2 x float]* %83, i64 0, i64 1
  store float %82, float* %84, align 4
  %85 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %86 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT10, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = bitcast i32* %93 to float*
  %95 = load float, float* %94, align 4
  %96 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 1
  %97 = getelementptr inbounds [2 x float], [2 x float]* %96, i64 0, i64 0
  store float %95, float* %97, align 8
  %98 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %99 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT11, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = bitcast i32* %106 to float*
  %108 = load float, float* %107, align 4
  %109 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 1
  %110 = getelementptr inbounds [2 x float], [2 x float]* %109, i64 0, i64 1
  store float %108, float* %110, align 4
  %111 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @ARB_FFP_CONST_BUMPMAT(i32 %112)
  %114 = getelementptr inbounds [2 x [2 x float]], [2 x [2 x float]]* %10, i64 0, i64 0
  %115 = getelementptr inbounds [2 x float], [2 x float]* %114, i64 0, i64 0
  %116 = call i32 @glProgramEnvParameter4fvARB(i32 %111, i32 %113, float* %115)
  %117 = call i32 @GL_EXTCALL(i32 %116)
  %118 = call i32 @checkGLcall(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %58, %40
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @ARB_FFP_CONST_BUMPMAT(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramEnvParameter4fvARB(i32, i32, float*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
