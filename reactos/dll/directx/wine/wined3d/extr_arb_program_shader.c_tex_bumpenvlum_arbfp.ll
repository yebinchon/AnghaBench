; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_tex_bumpenvlum_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_tex_bumpenvlum_arbfp.c"
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
@WINED3D_TSS_BUMPENV_LSCALE = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_LOFFSET = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_LUMINANCE(stage), param)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @tex_bumpenvlum_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tex_bumpenvlum_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca [4 x float], align 16
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
  br label %92

41:                                               ; preds = %33
  %42 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %43 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ARB_FFP_CONST_LUMINANCE(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %50 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ARB_FFP_CONST_LUMINANCE(i32 %52)
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
  %66 = load i64, i64* @WINED3D_TSS_BUMPENV_LSCALE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = bitcast i32* %67 to float*
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  store float %69, float* %70, align 16
  %71 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %72 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @WINED3D_TSS_BUMPENV_LOFFSET, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = bitcast i32* %79 to float*
  %81 = load float, float* %80, align 4
  %82 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 1
  store float %81, float* %82, align 4
  %83 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 2
  store float 0.000000e+00, float* %83, align 8
  %84 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 3
  store float 0.000000e+00, float* %84, align 4
  %85 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ARB_FFP_CONST_LUMINANCE(i32 %86)
  %88 = getelementptr inbounds [4 x float], [4 x float]* %10, i64 0, i64 0
  %89 = call i32 @glProgramEnvParameter4fvARB(i32 %85, i32 %87, float* %88)
  %90 = call i32 @GL_EXTCALL(i32 %89)
  %91 = call i32 @checkGLcall(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %58, %40
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @ARB_FFP_CONST_LUMINANCE(i32) #1

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
