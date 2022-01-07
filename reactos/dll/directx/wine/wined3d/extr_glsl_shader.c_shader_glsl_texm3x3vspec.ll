; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3vspec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3vspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_9__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.wined3d_shader_tex_mx*, %struct.wined3d_string_buffer* }
%struct.wined3d_shader_tex_mx = type { i64, i32* }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.glsl_sample_function = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"tmp0.z = dot(vec3(T%u), vec3(%s));\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"tmp1.xyz = normalize(vec3(ffp_texcoord[%u].w, ffp_texcoord[%u].w, ffp_texcoord[%u].w));\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"tmp0.xyz = -reflect(tmp1.xyz, normalize(tmp0.xyz));\0A\00", align 1
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"tmp0%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texm3x3vspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texm3x3vspec(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_shader_tex_mx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.glsl_sample_function, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.glsl_src_param, align 4
  %9 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  store %struct.wined3d_string_buffer* %14, %struct.wined3d_string_buffer** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %18, align 8
  store %struct.wined3d_shader_tex_mx* %19, %struct.wined3d_shader_tex_mx** %4, align 8
  %20 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %21 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %35, i32* %39, i32 %40, %struct.glsl_src_param* %8)
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %48 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %47, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57, i32 %58)
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %61 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_9__* %64, i32 %65, i32 %66, i32 0, %struct.glsl_sample_function* %6)
  %68 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %71 = call i32 @shader_glsl_write_mask_to_str(i32 %69, i8* %70)
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %76 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %72, i32 %73, %struct.glsl_sample_function* %6, i32 %74, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_9__* %79, %struct.glsl_sample_function* %6)
  %81 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %4, align 8
  %82 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

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
