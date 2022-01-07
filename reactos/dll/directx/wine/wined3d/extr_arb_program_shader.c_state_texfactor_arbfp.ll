; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_texfactor_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_state_texfactor_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_device*, %struct.wined3d_gl_info* }
%struct.wined3d_device = type { %struct.shader_arb_priv*, i32* }
%struct.shader_arb_priv = type { i32*, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32* }
%struct.wined3d_color = type { i32 }

@arb_program_shader_backend = common dso_local global i32 0, align 4
@ARB_FFP_CONST_TFACTOR = common dso_local global i64 0, align 8
@WINED3D_RS_TEXTUREFACTOR = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"glProgramEnvParameter4fvARB(GL_FRAGMENT_PROGRAM_ARB, ARB_FFP_CONST_TFACTOR, &color.r)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @state_texfactor_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_texfactor_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_device*, align 8
  %9 = alloca %struct.wined3d_color, align 4
  %10 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 1
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %7, align 8
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = load %struct.wined3d_device*, %struct.wined3d_device** %15, align 8
  store %struct.wined3d_device* %16, %struct.wined3d_device** %8, align 8
  %17 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %18 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, @arb_program_shader_backend
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %23 = call i64 @use_ps(%struct.wined3d_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %57

26:                                               ; preds = %21
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %28 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %27, i32 0, i32 0
  %29 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %28, align 8
  store %struct.shader_arb_priv* %29, %struct.shader_arb_priv** %10, align 8
  %30 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %10, align 8
  %31 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ARB_FFP_CONST_TFACTOR, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 1, i32* %34, align 4
  %35 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %10, align 8
  %36 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* @ARB_FFP_CONST_TFACTOR, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @max(i32 %37, i64 %39)
  %41 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %10, align 8
  %42 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %26, %3
  %44 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %45 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @WINED3D_RS_TEXTUREFACTOR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %9, i32 %49)
  %51 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %52 = load i64, i64* @ARB_FFP_CONST_TFACTOR, align 8
  %53 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %9, i32 0, i32 0
  %54 = call i32 @glProgramEnvParameter4fvARB(i32 %51, i64 %52, i32* %53)
  %55 = call i32 @GL_EXTCALL(i32 %54)
  %56 = call i32 @checkGLcall(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %43, %25
  ret void
}

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramEnvParameter4fvARB(i32, i64, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
