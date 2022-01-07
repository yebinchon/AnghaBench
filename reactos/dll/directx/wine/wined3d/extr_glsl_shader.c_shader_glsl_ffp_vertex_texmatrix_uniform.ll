; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_texmatrix_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_texmatrix_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32 }
%struct.glsl_shader_prog_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.wined3d_matrix = type { i32 }

@MAX_TEXTURES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"glUniformMatrix4fv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.glsl_shader_prog_link*)* @shader_glsl_ffp_vertex_texmatrix_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_texmatrix_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2, %struct.glsl_shader_prog_link* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.glsl_shader_prog_link*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_matrix, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.glsl_shader_prog_link* %3, %struct.glsl_shader_prog_link** %8, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_TEXTURES, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %47

18:                                               ; preds = %4
  %19 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %8, align 8
  %20 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %47

29:                                               ; preds = %18
  %30 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %31 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_texture_matrix(%struct.wined3d_context* %30, %struct.wined3d_state* %31, i32 %32, %struct.wined3d_matrix* %10)
  %34 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %8, align 8
  %35 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 0
  %44 = call i32 @glUniformMatrix4fv(i32 %41, i32 1, i32 %42, i32* %43)
  %45 = call i32 @GL_EXTCALL(i32 %44)
  %46 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %29, %28, %17
  ret void
}

declare dso_local i32 @get_texture_matrix(%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.wined3d_matrix*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
