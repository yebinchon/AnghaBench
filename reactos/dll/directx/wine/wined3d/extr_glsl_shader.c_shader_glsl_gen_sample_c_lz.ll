; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gen_sample_c_lz.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gen_sample_c_lz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.wined3d_shader_texel_offset }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.wined3d_string_buffer*, %struct.TYPE_4__* }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.wined3d_shader_version }
%struct.wined3d_shader_version = type { i32 }
%struct.wined3d_shader_texel_offset = type { i32, i32, i32 }
%struct.glsl_sample_function = type { i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Emitting textureGrad() for sample_c_lz.\0A\00", align 1
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"vec4(textureGrad%s(%s_sampler%u, vec%u(%s, %s), vec%u(0.0), vec%u(0.0)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"))%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i8*, i8*)* @shader_glsl_gen_sample_c_lz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_gen_sample_c_lz(%struct.wined3d_shader_instruction* %0, i32 %1, %struct.glsl_sample_function* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.wined3d_shader_instruction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.glsl_sample_function*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wined3d_shader_version*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_shader_texel_offset*, align 8
  %16 = alloca %struct.wined3d_string_buffer*, align 8
  %17 = alloca [6 x i8], align 1
  %18 = alloca [4 x i32], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.glsl_sample_function* %2, %struct.glsl_sample_function** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.wined3d_shader_version* %24, %struct.wined3d_shader_version** %13, align 8
  %25 = load %struct.glsl_sample_function*, %struct.glsl_sample_function** %9, align 8
  %26 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wined3d_popcount(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 2
  store %struct.wined3d_shader_texel_offset* %30, %struct.wined3d_shader_texel_offset** %15, align 8
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %34, align 8
  store %struct.wined3d_string_buffer* %35, %struct.wined3d_string_buffer** %16, align 8
  %36 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %46 = call i32 @shader_glsl_swizzle_to_str(i32 %37, i32 %38, i32 %44, i8* %45)
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = load %struct.glsl_sample_function*, %struct.glsl_sample_function** %9, align 8
  %54 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %47, %struct.wined3d_shader_instruction* %48, %struct.TYPE_6__* %52, i32 %55)
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %58 = load %struct.glsl_sample_function*, %struct.glsl_sample_function** %9, align 8
  %59 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %64 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %13, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @shader_glsl_get_prefix(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %67, i32 %68, i32 %69, i8* %70, i8* %71, i32 %72, i32 %73)
  %75 = load %struct.glsl_sample_function*, %struct.glsl_sample_function** %9, align 8
  %76 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %6
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %81 = load %struct.wined3d_shader_texel_offset*, %struct.wined3d_shader_texel_offset** %15, align 8
  %82 = getelementptr inbounds %struct.wined3d_shader_texel_offset, %struct.wined3d_shader_texel_offset* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %80, align 4
  %84 = getelementptr inbounds i32, i32* %80, i64 1
  %85 = load %struct.wined3d_shader_texel_offset*, %struct.wined3d_shader_texel_offset** %15, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_texel_offset, %struct.wined3d_shader_texel_offset* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %84, align 4
  %88 = getelementptr inbounds i32, i32* %84, i64 1
  %89 = load %struct.wined3d_shader_texel_offset*, %struct.wined3d_shader_texel_offset** %15, align 8
  %90 = getelementptr inbounds %struct.wined3d_shader_texel_offset, %struct.wined3d_shader_texel_offset* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %88, align 4
  %92 = getelementptr inbounds i32, i32* %88, i64 1
  %93 = getelementptr inbounds i32, i32* %80, i64 4
  br label %94

94:                                               ; preds = %94, %79
  %95 = phi i32* [ %92, %79 ], [ %96, %94 ]
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = icmp eq i32* %96, %93
  br i1 %97, label %98, label %94

98:                                               ; preds = %94
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %103 = load %struct.glsl_sample_function*, %struct.glsl_sample_function** %9, align 8
  %104 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @shader_glsl_append_imm_ivec(%struct.wined3d_string_buffer* %101, i32* %102, i64 %105)
  br label %107

107:                                              ; preds = %98, %6
  %108 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %110 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  ret void
}

declare dso_local i32 @wined3d_popcount(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @shader_glsl_swizzle_to_str(i32, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @shader_glsl_append_imm_ivec(%struct.wined3d_string_buffer*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
