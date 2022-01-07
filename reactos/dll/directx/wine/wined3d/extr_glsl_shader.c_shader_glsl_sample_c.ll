; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sample_c.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sample_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.wined3d_shader_resource_info = type { i64 }
%struct.glsl_src_param = type { i32 }
%struct.glsl_sample_function = type { i32 }

@WINED3DSIH_SAMPLE_C_LZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WINED3D_GLSL_SAMPLE_LOD = common dso_local global i32 0, align 4
@WINED3D_GLSL_SAMPLE_OFFSET = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY = common dso_local global i64 0, align 8
@WINED3D_SHADER_RESOURCE_TEXTURE_CUBE = common dso_local global i64 0, align 8
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vec%u(%s, %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_sample_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_sample_c(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader_resource_info*, align 8
  %7 = alloca %struct.glsl_src_param, align 4
  %8 = alloca %struct.glsl_src_param, align 4
  %9 = alloca %struct.glsl_sample_function, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WINED3DSIH_SAMPLE_C_LZ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %19 = load i32, i32* @WINED3D_GLSL_SAMPLE_LOD, align 4
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = call i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @WINED3D_GLSL_SAMPLE_OFFSET, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = call %struct.wined3d_shader_resource_info* @shader_glsl_get_resource_info(%struct.wined3d_shader_instruction* %31, %struct.TYPE_10__* %36)
  store %struct.wined3d_shader_resource_info* %37, %struct.wined3d_shader_resource_info** %6, align 8
  %38 = icmp ne %struct.wined3d_shader_resource_info* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %140

40:                                               ; preds = %30
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %4, align 4
  %61 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_9__* %63, i32 %64, i32 %65, i32 %66, %struct.glsl_sample_function* %9)
  %68 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @shader_glsl_get_write_mask_size(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 1
  %79 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %71, %struct.TYPE_11__* %75, i32 %78, %struct.glsl_src_param* %7)
  %80 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %81 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %82 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 3
  %85 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %86 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %80, %struct.TYPE_11__* %84, i32 %85, %struct.glsl_src_param* %8)
  %87 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @shader_glsl_find_sampler(i32* %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %97 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WINED3DSIH_SAMPLE_C_LZ, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %40
  %102 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %6, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WINED3D_SHADER_RESOURCE_TEXTURE_2DARRAY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %6, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @WINED3D_SHADER_RESOURCE_TEXTURE_CUBE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107, %101
  %114 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @shader_glsl_gen_sample_c_lz(%struct.wined3d_shader_instruction* %114, i32 %115, %struct.glsl_sample_function* %9, i32 %116, i32 %118, i32 %120)
  br label %135

122:                                              ; preds = %107, %40
  %123 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %128 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %127, i32 0, i32 2
  %129 = load i32, i32* %11, align 4
  %130 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %123, i32 %124, %struct.glsl_sample_function* %9, i32 %125, i32* null, i32* null, i8* %126, i32* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %122, %113
  %136 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_9__* %138, %struct.glsl_sample_function* %9)
  br label %140

140:                                              ; preds = %135, %39
  ret void
}

declare dso_local i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction*) #1

declare dso_local %struct.wined3d_shader_resource_info* @shader_glsl_get_resource_info(%struct.wined3d_shader_instruction*, %struct.TYPE_10__*) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_9__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_11__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local i32 @shader_glsl_gen_sample_c_lz(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i8*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_9__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
