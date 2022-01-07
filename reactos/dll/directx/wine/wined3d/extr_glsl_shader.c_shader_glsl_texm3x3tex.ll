; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3tex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texm3x3tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_9__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.wined3d_shader_tex_mx* }
%struct.wined3d_shader_tex_mx = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.glsl_sample_function = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tmp0.z = dot(T%u.xyz, %s);\0A\00", align 1
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tmp0.xyz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texm3x3tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texm3x3tex(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_shader_tex_mx*, align 8
  %5 = alloca %struct.glsl_sample_function, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.glsl_src_param, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %9 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %16, align 8
  store %struct.wined3d_shader_tex_mx* %17, %struct.wined3d_shader_tex_mx** %4, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %28, i32* %32, i32 %33, %struct.glsl_src_param* %7)
  %35 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @shader_addline(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_9__* %46, i32 %47, i32 %48, i32 0, %struct.glsl_sample_function* %5)
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %53 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %50, i32 %51, %struct.glsl_sample_function* %5, i32 %52, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %55 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_9__* %56, %struct.glsl_sample_function* %5)
  %58 = load %struct.wined3d_shader_tex_mx*, %struct.wined3d_shader_tex_mx** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_tex_mx, %struct.wined3d_shader_tex_mx* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_9__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_9__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
