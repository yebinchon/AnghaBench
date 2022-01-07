; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3spec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_9__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.wined3d_shader_tex_mx*, %struct.wined3d_string_buffer* }
%struct.wined3d_shader_tex_mx = type { i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.glsl_src_param = type { i32 }
%struct.glsl_sample_function = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tmp0.z = dot(T%u.xyz, %s);\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"tmp0.xyz = -reflect((%s), normalize(tmp0.xyz));\0A\00", align 1
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"tmp0%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texm3x3spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texm3x3spec(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.glsl_src_param, align 4
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader_tex_mx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.glsl_sample_function, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  store %struct.wined3d_string_buffer* %15, %struct.wined3d_string_buffer** %5, align 8
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %19, align 8
  store %struct.wined3d_shader_tex_mx* %20, %struct.wined3d_shader_tex_mx** %6, align 8
  %21 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %22 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %36, i32* %40, i32 %41, %struct.glsl_src_param* %3)
  %43 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %43, i32* %47, i32 %48, %struct.glsl_src_param* %4)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_9__* %61, i32 %62, i32 %63, i32 0, %struct.glsl_sample_function* %8)
  %65 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %68 = call i32 @shader_glsl_write_mask_to_str(i32 %66, i8* %67)
  %69 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %73 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %69, i32 %70, %struct.glsl_sample_function* %8, i32 %71, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %75 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_9__* %76, %struct.glsl_sample_function* %8)
  %78 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %6, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, ...) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_9__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_9__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
