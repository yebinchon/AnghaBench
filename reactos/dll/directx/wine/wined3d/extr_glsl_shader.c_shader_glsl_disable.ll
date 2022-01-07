; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_disable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info*, %struct.glsl_context_data* }
%struct.wined3d_gl_info = type { i64* }
%struct.glsl_context_data = type { i32 }
%struct.shader_glsl_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_gl_info*, i32)* }

@.str = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ARB_COLOR_BUFFER_FLOAT = common dso_local global i64 0, align 8
@GL_FIXED_ONLY_ARB = common dso_local global i32 0, align 4
@GL_CLAMP_VERTEX_COLOR_ARB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"glClampColorARB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*)* @shader_glsl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_disable(i8* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.glsl_context_data*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.glsl_context_data*, %struct.glsl_context_data** %9, align 8
  store %struct.glsl_context_data* %10, %struct.glsl_context_data** %5, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.shader_glsl_priv*
  store %struct.shader_glsl_priv* %15, %struct.shader_glsl_priv** %7, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %17 = call i32 @shader_glsl_invalidate_current_program(%struct.wined3d_context* %16)
  %18 = call i32 @glUseProgram(i32 0)
  %19 = call i32 @GL_EXTCALL(i32 %18)
  %20 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %22 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %24, align 8
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 %25(%struct.wined3d_gl_info* %26, i32 %27)
  %29 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %32, align 8
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 %33(%struct.wined3d_gl_info* %34, i32 %35)
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %38 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %2
  %41 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @ARB_COLOR_BUFFER_FLOAT, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* @GL_FIXED_ONLY_ARB, align 4
  %50 = load %struct.glsl_context_data*, %struct.glsl_context_data** %5, align 8
  %51 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @GL_CLAMP_VERTEX_COLOR_ARB, align 4
  %53 = load i32, i32* @GL_FIXED_ONLY_ARB, align 4
  %54 = call i32 @glClampColorARB(i32 %52, i32 %53)
  %55 = call i32 @GL_EXTCALL(i32 %54)
  %56 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %48, %40, %2
  ret void
}

declare dso_local i32 @shader_glsl_invalidate_current_program(%struct.wined3d_context*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @glClampColorARB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
