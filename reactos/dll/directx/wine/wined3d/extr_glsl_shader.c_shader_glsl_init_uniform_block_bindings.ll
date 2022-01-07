; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_init_uniform_block_bindings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_init_uniform_block_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"block_%s_cb%u\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"glUniformBlockBinding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*)* @shader_glsl_init_uniform_block_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_init_uniform_block_bindings(%struct.wined3d_gl_info* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.wined3d_shader_reg_maps* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %8, align 8
  %15 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @shader_glsl_get_prefix(i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %21 = call i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %76

24:                                               ; preds = %4
  %25 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %26 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %25, i32 0, i32 0
  %27 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %26)
  store %struct.wined3d_string_buffer* %27, %struct.wined3d_string_buffer** %10, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 0
  %30 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wined3d_gl_limits_get_uniform_block_range(i32* %29, i32 %33, i32* %12, i32* %13)
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %67, %24
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %8, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %56 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @glGetUniformBlockIndex(i32 %54, i32 %57)
  %59 = call i32 @GL_EXTCALL(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %62, %63
  %65 = call i32 @glUniformBlockBinding(i32 %60, i32 %61, i32 %64)
  %66 = call i32 @GL_EXTCALL(i32 %65)
  br label %67

67:                                               ; preds = %49, %48
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %35

70:                                               ; preds = %35
  %71 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %73 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %72, i32 0, i32 0
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %75 = call i32 @string_buffer_release(i32* %73, %struct.wined3d_string_buffer* %74)
  br label %76

76:                                               ; preds = %70, %23
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i64 @shader_glsl_use_layout_binding_qualifier(%struct.wined3d_gl_info*) #1

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i32 @wined3d_gl_limits_get_uniform_block_range(i32*, i32, i32*, i32*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetUniformBlockIndex(i32, i32) #1

declare dso_local i32 @glUniformBlockBinding(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @string_buffer_release(i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
