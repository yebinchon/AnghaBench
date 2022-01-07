; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lightambient_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_lightambient_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32* }
%struct.glsl_shader_prog_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_color = type { i32 }

@WINED3D_RS_AMBIENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"glUniform3fv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*)* @shader_glsl_ffp_vertex_lightambient_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_lightambient_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.glsl_shader_prog_link* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.glsl_shader_prog_link*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_color, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.glsl_shader_prog_link* %2, %struct.glsl_shader_prog_link** %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %7, align 8
  %12 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @WINED3D_RS_AMBIENT, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %8, i32 %17)
  %19 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %20 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %8, i32 0, i32 0
  %24 = call i32 @glUniform3fv(i32 %22, i32 1, i32* %23)
  %25 = call i32 @GL_EXTCALL(i32 %24)
  %26 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform3fv(i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
