; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_material_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_material_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { float }
%struct.TYPE_9__ = type { float }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float }
%struct.glsl_shader_prog_link = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@WINED3D_RS_SPECULARENABLE = common dso_local global i64 0, align 8
@shader_glsl_ffp_vertex_material_uniform.black = internal constant [4 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"setting FFP material uniforms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*)* @shader_glsl_ffp_vertex_material_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_material_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.glsl_shader_prog_link* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.glsl_shader_prog_link*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.glsl_shader_prog_link* %2, %struct.glsl_shader_prog_link** %6, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 0
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %7, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @WINED3D_RS_SPECULARENABLE, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %20 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @glUniform4fv(i32 %22, i32 1, float* %26)
  %28 = call i32 @GL_EXTCALL(i32 %27)
  %29 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %30 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @glUniform1f(i32 %32, i32 %36)
  %38 = call i32 @GL_EXTCALL(i32 %37)
  br label %46

39:                                               ; preds = %3
  %40 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %41 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @glUniform4fv(i32 %43, i32 1, float* getelementptr inbounds ([4 x float], [4 x float]* @shader_glsl_ffp_vertex_material_uniform.black, i64 0, i64 0))
  %45 = call i32 @GL_EXTCALL(i32 %44)
  br label %46

46:                                               ; preds = %39, %18
  %47 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %48 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @glUniform4fv(i32 %50, i32 1, float* %54)
  %56 = call i32 @GL_EXTCALL(i32 %55)
  %57 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %58 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @glUniform4fv(i32 %60, i32 1, float* %64)
  %66 = call i32 @GL_EXTCALL(i32 %65)
  %67 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %68 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %72 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = call i32 @glUniform4fv(i32 %70, i32 1, float* %74)
  %76 = call i32 @GL_EXTCALL(i32 %75)
  %77 = call i32 @checkGLcall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, float*) #1

declare dso_local i32 @glUniform1f(i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
