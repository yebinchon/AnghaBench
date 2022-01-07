; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texdp3tex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texdp3tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.glsl_sample_function = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dot(ffp_texcoord[%u].xyz, %s)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vec2(dot(ffp_texcoord[%u].xyz, %s), 0.0)\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"vec3(dot(ffp_texcoord[%u].xyz, %s), 0.0, 0.0)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unexpected mask size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texdp3tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texdp3tex(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.glsl_sample_function, align 4
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %9 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %23, i32* %27, i32 %28, %struct.glsl_src_param* %6)
  %30 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @shader_glsl_get_sample_function(i32 %32, i32 %33, i32 %34, i32 0, %struct.glsl_sample_function* %5)
  %36 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @shader_glsl_get_write_mask_size(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %64 [
    i32 1, label %40
    i32 2, label %48
    i32 3, label %56
  ]

40:                                               ; preds = %1
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %41, i32 %42, %struct.glsl_sample_function* %5, i32 %43, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  br label %67

48:                                               ; preds = %1
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %49, i32 %50, %struct.glsl_sample_function* %5, i32 %51, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  br label %67

56:                                               ; preds = %1
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %57, i32 %58, %struct.glsl_sample_function* %5, i32 %59, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %62)
  br label %67

64:                                               ; preds = %1
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %56, %48, %40
  %68 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @shader_glsl_release_sample_function(i32 %70, %struct.glsl_sample_function* %5)
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_get_sample_function(i32, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_glsl_release_sample_function(i32, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
