; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_fog_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_fog_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32* }
%struct.glsl_shader_prog_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.wined3d_color = type { i32 }
%union.anon = type { i32 }

@WINED3D_RS_FOGCOLOR = common dso_local global i64 0, align 8
@WINED3D_RS_FOGDENSITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"fog emulation uniforms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*)* @shader_glsl_load_fog_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_fog_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.glsl_shader_prog_link* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.glsl_shader_prog_link*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_color, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %union.anon, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.glsl_shader_prog_link* %2, %struct.glsl_shader_prog_link** %6, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %7, align 8
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @WINED3D_RS_FOGCOLOR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %8, i32 %21)
  %23 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %24 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %8, i32 0, i32 0
  %28 = call i32 @glUniform4fv(i32 %26, i32 1, i32* %27)
  %29 = call i32 @GL_EXTCALL(i32 %28)
  %30 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WINED3D_RS_FOGDENSITY, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.anon* %12 to i32*
  store i32 %35, i32* %36, align 4
  %37 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %38 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.anon* %12 to float*
  %42 = load float, float* %41, align 4
  %43 = call i32 @glUniform1f(i32 %40, float %42)
  %44 = call i32 @GL_EXTCALL(i32 %43)
  %45 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %46 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %47 = call i32 @get_fog_start_end(%struct.wined3d_context* %45, %struct.wined3d_state* %46, float* %9, float* %10)
  %48 = load float, float* %10, align 4
  %49 = load float, float* %9, align 4
  %50 = fsub float %48, %49
  %51 = fdiv float 1.000000e+00, %50
  store float %51, float* %11, align 4
  %52 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %53 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load float, float* %10, align 4
  %57 = call i32 @glUniform1f(i32 %55, float %56)
  %58 = call i32 @GL_EXTCALL(i32 %57)
  %59 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %60 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load float, float* %11, align 4
  %64 = call i32 @glUniform1f(i32 %62, float %63)
  %65 = call i32 @GL_EXTCALL(i32 %64)
  %66 = call i32 @checkGLcall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32*) #1

declare dso_local i32 @glUniform1f(i32, float) #1

declare dso_local i32 @get_fog_start_end(%struct.wined3d_context*, %struct.wined3d_state*, float*, float*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
