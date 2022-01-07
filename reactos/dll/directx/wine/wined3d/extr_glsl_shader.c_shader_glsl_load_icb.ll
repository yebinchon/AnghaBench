; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_icb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_icb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_2__, %struct.wined3d_shader_immediate_constant_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_shader_immediate_constant_buffer = type { i64, i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s_icb\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Load immediate constant buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*)* @shader_glsl_load_icb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_icb(%struct.wined3d_gl_info* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.wined3d_shader_reg_maps* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca %struct.wined3d_shader_immediate_constant_buffer*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %8, align 8
  %13 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %13, i32 0, i32 1
  %15 = load %struct.wined3d_shader_immediate_constant_buffer*, %struct.wined3d_shader_immediate_constant_buffer** %14, align 8
  store %struct.wined3d_shader_immediate_constant_buffer* %15, %struct.wined3d_shader_immediate_constant_buffer** %9, align 8
  %16 = load %struct.wined3d_shader_immediate_constant_buffer*, %struct.wined3d_shader_immediate_constant_buffer** %9, align 8
  %17 = icmp ne %struct.wined3d_shader_immediate_constant_buffer* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  %19 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %20 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %19, i32 0, i32 0
  %21 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %20)
  store %struct.wined3d_string_buffer* %21, %struct.wined3d_string_buffer** %10, align 8
  %22 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @shader_glsl_get_prefix(i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %32 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @glGetUniformLocation(i32 %30, i32 %33)
  %35 = call i32 @GL_EXTCALL(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.wined3d_shader_immediate_constant_buffer*, %struct.wined3d_shader_immediate_constant_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_immediate_constant_buffer, %struct.wined3d_shader_immediate_constant_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wined3d_shader_immediate_constant_buffer*, %struct.wined3d_shader_immediate_constant_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_immediate_constant_buffer, %struct.wined3d_shader_immediate_constant_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @glUniform4fv(i32 %36, i32 %39, i32* %43)
  %45 = call i32 @GL_EXTCALL(i32 %44)
  %46 = call i32 @checkGLcall(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %48 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %47, i32 0, i32 0
  %49 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %50 = call i32 @string_buffer_release(i32* %48, %struct.wined3d_string_buffer* %49)
  br label %51

51:                                               ; preds = %18, %4
  ret void
}

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @string_buffer_release(i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
