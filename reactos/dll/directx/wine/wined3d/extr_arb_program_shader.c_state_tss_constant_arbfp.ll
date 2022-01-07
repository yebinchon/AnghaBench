; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_tss_constant_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_tss_constant_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_device*, %struct.wined3d_gl_info* }
%struct.wined3d_device = type { %struct.shader_arb_priv*, i32* }
%struct.shader_arb_priv = type { i32*, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32** }
%struct.wined3d_color = type { i32 }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@arb_program_shader_backend = common dso_local global i32 0, align 4
@WINED3D_TSS_CONSTANT = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_CONSTANT(stage), &color.r)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @state_tss_constant_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_tss_constant_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca %struct.wined3d_color, align 4
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
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 1
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %19, align 8
  store %struct.wined3d_gl_info* %20, %struct.wined3d_gl_info** %8, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %22, align 8
  store %struct.wined3d_device* %23, %struct.wined3d_device** %9, align 8
  %24 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %25 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @arb_program_shader_backend
  br i1 %27, label %28, label %53

28:                                               ; preds = %3
  %29 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %30 = call i64 @use_ps(%struct.wined3d_state* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %72

33:                                               ; preds = %28
  %34 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %35 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %34, i32 0, i32 0
  %36 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %35, align 8
  store %struct.shader_arb_priv* %36, %struct.shader_arb_priv** %11, align 8
  %37 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %38 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ARB_FFP_CONST_CONSTANT(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 1, i32* %43, align 4
  %44 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %45 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ARB_FFP_CONST_CONSTANT(i32 %47)
  %49 = add nsw i32 %48, 1
  %50 = call i32 @max(i32 %46, i32 %49)
  %51 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %11, align 8
  %52 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %33, %3
  %54 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %55 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @WINED3D_TSS_CONSTANT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %10, i32 %63)
  %65 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ARB_FFP_CONST_CONSTANT(i32 %66)
  %68 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %10, i32 0, i32 0
  %69 = call i32 @glProgramEnvParameter4fvARB(i32 %65, i32 %67, i32* %68)
  %70 = call i32 @GL_EXTCALL(i32 %69)
  %71 = call i32 @checkGLcall(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %53, %32
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @ARB_FFP_CONST_CONSTANT(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramEnvParameter4fvARB(i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
