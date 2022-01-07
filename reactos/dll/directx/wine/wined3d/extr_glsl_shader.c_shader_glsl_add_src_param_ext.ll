; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_src_param_ext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_src_param_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.shader_glsl_ctx_priv* }
%struct.shader_glsl_ctx_priv = type { i32 }
%struct.wined3d_shader_src_param = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.glsl_src_param = type { i8*, i8* }
%struct.wined3d_string_buffer = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@WINED3D_DATA_INT = common dso_local global i32 0, align 4
@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, %struct.glsl_src_param*, i32)* @shader_glsl_add_src_param_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_src_param* %1, i32 %2, %struct.glsl_src_param* %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_shader_instruction*, align 8
  %7 = alloca %struct.wined3d_shader_src_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.glsl_src_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %12 = alloca %struct.wined3d_string_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %6, align 8
  store %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_src_param** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.glsl_src_param* %3, %struct.glsl_src_param** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %19, align 8
  store %struct.shader_glsl_ctx_priv* %20, %struct.shader_glsl_ctx_priv** %11, align 8
  %21 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %11, align 8
  %22 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.wined3d_string_buffer* @string_buffer_get(i32 %23)
  store %struct.wined3d_string_buffer* %24, %struct.wined3d_string_buffer** %12, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.glsl_src_param*, %struct.glsl_src_param** %9, align 8
  %27 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  %30 = load %struct.glsl_src_param*, %struct.glsl_src_param** %9, align 8
  %31 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %34, align 1
  %35 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %7, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %35, i32 0, i32 1
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.glsl_src_param*, %struct.glsl_src_param** %9, align 8
  %39 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %6, align 8
  %42 = call i32 @shader_glsl_get_register_name(%struct.TYPE_4__* %36, i32 %37, i8* %40, i32* %14, %struct.wined3d_shader_instruction* %41)
  %43 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %7, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %47 = call i32 @shader_glsl_get_swizzle(%struct.wined3d_shader_src_param* %43, i32 %44, i32 %45, i8* %46)
  %48 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %7, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %56 [
    i32 135, label %52
    i32 137, label %54
    i32 136, label %54
    i32 134, label %54
    i32 133, label %54
    i32 132, label %54
    i32 131, label %54
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

52:                                               ; preds = %5
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %13, align 4
  br label %58

54:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5
  %55 = load i32, i32* @WINED3D_DATA_INT, align 4
  store i32 %55, i32* %13, align 4
  br label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %54, %52
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %60 = load %struct.glsl_src_param*, %struct.glsl_src_param** %9, align 8
  %61 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @shader_glsl_sprintf_cast(%struct.wined3d_string_buffer* %59, i8* %62, i32 %63, i32 %64)
  %66 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %7, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %70 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %73 = load %struct.glsl_src_param*, %struct.glsl_src_param** %9, align 8
  %74 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @shader_glsl_gen_modifier(i32 %68, i32 %71, i8* %72, i8* %75)
  %77 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %11, align 8
  %78 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %81 = call i32 @string_buffer_release(i32 %79, %struct.wined3d_string_buffer* %80)
  ret void
}

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32) #1

declare dso_local i32 @shader_glsl_get_register_name(%struct.TYPE_4__*, i32, i8*, i32*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_swizzle(%struct.wined3d_shader_src_param*, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_sprintf_cast(%struct.wined3d_string_buffer*, i8*, i32, i32) #1

declare dso_local i32 @shader_glsl_gen_modifier(i32, i32, i8*, i8*) #1

declare dso_local i32 @string_buffer_release(i32, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
