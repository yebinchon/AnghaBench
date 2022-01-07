; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_sm4_output_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_sm4_output_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"void setup_%s_output(in vec4 outputs[%u])\0A{\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"shader_out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.wined3d_shader*, i32, %struct.wined3d_gl_info*, i32, i32*)* @shader_glsl_generate_sm4_output_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv* %0, %struct.wined3d_shader* %1, i32 %2, %struct.wined3d_gl_info* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wined3d_string_buffer*, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wined3d_gl_info* %3, %struct.wined3d_gl_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @shader_glsl_get_prefix(i32 %19)
  store i8* %20, i8** %13, align 8
  %21 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %22 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %21, i32 0, i32 0
  store %struct.wined3d_string_buffer* %22, %struct.wined3d_string_buffer** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %27 = call i32 @vec4_varyings(i32 4, %struct.wined3d_gl_info* %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @shader_glsl_declare_shader_outputs(%struct.wined3d_gl_info* %34, %struct.wined3d_string_buffer* %35, i32 %36, i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %55, i32 0, i32 1
  %57 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %57, i32 0, i32 0
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @shader_glsl_setup_sm3_rasterizer_input(%struct.shader_glsl_priv* %52, %struct.wined3d_gl_info* %53, i32* null, i32* null, i32* null, i32 %54, i32* %56, %struct.TYPE_7__* %58, i32 %59)
  br label %70

61:                                               ; preds = %40
  %62 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %64, i32 0, i32 1
  %66 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %66, i32 0, i32 0
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv* %62, i32 %63, i32* %65, %struct.TYPE_7__* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %61, %51
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vec4_varyings(i32, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_declare_shader_outputs(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i32, i32*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_setup_sm3_rasterizer_input(%struct.shader_glsl_priv*, %struct.wined3d_gl_info*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv*, i32, i32*, %struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
