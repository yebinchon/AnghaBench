; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texldd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texldd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.glsl_src_param = type { i32 }
%struct.glsl_sample_function = type { i32, i32 }

@ARB_SHADER_TEXTURE_LOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"texldd used, but not supported by hardware. Falling back to regular tex.\0A\00", align 1
@WINED3D_GLSL_SAMPLE_GRAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texldd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texldd(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca %struct.glsl_sample_function, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  store %struct.wined3d_gl_info* %14, %struct.wined3d_gl_info** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %22 = call i32 @shader_glsl_has_core_grad(%struct.wined3d_gl_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %1
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ARB_SHADER_TEXTURE_LOD, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = call i32 @FIXME(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = call i32 @shader_glsl_tex(%struct.wined3d_shader_instruction* %34)
  br label %92

36:                                               ; preds = %24, %1
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @WINED3D_GLSL_SAMPLE_GRAD, align 4
  %53 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_8__* %49, i32 %50, i32 %51, i32 %52, %struct.glsl_sample_function* %7)
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 0
  %59 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %54, %struct.TYPE_9__* %58, i32 %60, %struct.glsl_src_param* %4)
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 2
  %67 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %62, %struct.TYPE_9__* %66, i32 %68, %struct.glsl_src_param* %5)
  %70 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 3
  %75 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %70, %struct.TYPE_9__* %74, i32 %76, %struct.glsl_src_param* %6)
  %78 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %78, i32 %79, %struct.glsl_sample_function* %7, i32 %80, i32 %82, i32 %84, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %89 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_8__* %90, %struct.glsl_sample_function* %7)
  br label %92

92:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @shader_glsl_has_core_grad(%struct.wined3d_gl_info*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @shader_glsl_tex(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_8__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_9__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32, i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_8__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
