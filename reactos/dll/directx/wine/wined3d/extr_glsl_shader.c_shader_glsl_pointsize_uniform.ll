; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_pointsize_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_pointsize_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32 }
%struct.glsl_shader_prog_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"glUniform1f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*)* @shader_glsl_pointsize_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_pointsize_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.glsl_shader_prog_link* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.glsl_shader_prog_link*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.glsl_shader_prog_link* %2, %struct.glsl_shader_prog_link** %6, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  store %struct.wined3d_gl_info* %14, %struct.wined3d_gl_info** %7, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %17 = call i32 @get_pointsize_minmax(%struct.wined3d_context* %15, %struct.wined3d_state* %16, float* %8, float* %9)
  %18 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %19 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load float, float* %8, align 4
  %23 = call i32 @glUniform1f(i32 %21, float %22)
  %24 = call i32 @GL_EXTCALL(i32 %23)
  %25 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %27 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load float, float* %9, align 4
  %31 = call i32 @glUniform1f(i32 %29, float %30)
  %32 = call i32 @GL_EXTCALL(i32 %31)
  %33 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %36 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %37 = call i32 @get_pointsize(%struct.wined3d_context* %34, %struct.wined3d_state* %35, float* %10, float* %36)
  %38 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %39 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load float, float* %10, align 4
  %43 = call i32 @glUniform1f(i32 %41, float %42)
  %44 = call i32 @GL_EXTCALL(i32 %43)
  %45 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %47 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %51 = load float, float* %50, align 4
  %52 = call i32 @glUniform1f(i32 %49, float %51)
  %53 = call i32 @GL_EXTCALL(i32 %52)
  %54 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %56 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %60 = load float, float* %59, align 4
  %61 = call i32 @glUniform1f(i32 %58, float %60)
  %62 = call i32 @GL_EXTCALL(i32 %61)
  %63 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %65 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %69 = load float, float* %68, align 4
  %70 = call i32 @glUniform1f(i32 %67, float %69)
  %71 = call i32 @GL_EXTCALL(i32 %70)
  %72 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_pointsize_minmax(%struct.wined3d_context*, %struct.wined3d_state*, float*, float*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform1f(i32, float) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @get_pointsize(%struct.wined3d_context*, %struct.wined3d_state*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
