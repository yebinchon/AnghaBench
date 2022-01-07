; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.wined3d_shader_reg_maps* }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.glsl_src_param = type { i32* }
%struct.glsl_sample_function = type { i32 }

@WINED3D_GLSL_SAMPLE_LOAD = common dso_local global i32 0, align 4
@WINED3D_GLSL_SAMPLE_OFFSET = common dso_local global i32 0, align 4
@WINED3D_SAMPLER_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid resource index %u.\0A\00", align 1
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ld(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %4 = alloca %struct.glsl_src_param, align 8
  %5 = alloca %struct.glsl_src_param, align 8
  %6 = alloca %struct.glsl_src_param, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.glsl_sample_function, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %16, align 8
  store %struct.wined3d_shader_reg_maps* %17, %struct.wined3d_shader_reg_maps** %3, align 8
  %18 = load i32, i32* @WINED3D_GLSL_SAMPLE_LOAD, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = call i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @WINED3D_GLSL_SAMPLE_OFFSET, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @WINED3D_SAMPLER_DEFAULT, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %41)
  %43 = icmp uge i32 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %144

47:                                               ; preds = %26
  %48 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @is_mipmapped(i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_9__* %59, i32 %60, i32 %61, i32 %62, %struct.glsl_sample_function* %10)
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  %69 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %64, %struct.TYPE_10__* %68, i32 %70, %struct.glsl_src_param* %4)
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %74 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 0
  %77 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %78 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %72, %struct.TYPE_10__* %76, i32 %77, %struct.glsl_src_param* %5)
  %79 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %80 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @shader_glsl_find_sampler(i32* %80, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %85 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @is_multisampled(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %47
  %95 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %96 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %97 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 2
  %100 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %101 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %95, %struct.TYPE_10__* %99, i32 %100, %struct.glsl_src_param* %6)
  %102 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %105 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %111 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 (%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i32*, ...) @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %102, i32 %103, %struct.glsl_sample_function* %10, i32 %109, i32* null, i32* null, i32* null, i32* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %113, i32* %115)
  br label %139

117:                                              ; preds = %47
  %118 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %121 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %120, i32 0, i32 2
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  br label %132

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %128
  %133 = phi i32* [ %130, %128 ], [ null, %131 ]
  %134 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %135 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 (%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i32*, ...) @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %118, i32 %119, %struct.glsl_sample_function* %10, i32 %125, i32* null, i32* null, i32* %133, i32* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %137)
  br label %139

139:                                              ; preds = %132, %94
  %140 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %141 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_9__* %142, %struct.glsl_sample_function* %10)
  br label %144

144:                                              ; preds = %139, %44
  ret void
}

declare dso_local i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @is_mipmapped(i32) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_9__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_10__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local i64 @is_multisampled(i32) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i32*, ...) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_9__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
