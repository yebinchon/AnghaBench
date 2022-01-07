; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texcoord.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texcoord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_13__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.wined3d_string_buffer* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"clamp(ffp_texcoord[%u], 0.0, 1.0)%s);\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3DSPSM_DZ = common dso_local global i32 0, align 4
@WINED3DSPSM_DW = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ffp_texcoord[%u]%s / vec%d(%s));\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ffp_texcoord[%u]%s / %s);\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ffp_texcoord[%u]%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texcoord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texcoord(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.glsl_src_param, align 4
  %11 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  store %struct.wined3d_string_buffer* %16, %struct.wined3d_string_buffer** %3, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %20, align 8
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %21, %struct.wined3d_shader_instruction* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %63, label %43

43:                                               ; preds = %33, %1
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 0
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %49 = call i32 @shader_glsl_get_write_mask(%struct.TYPE_18__* %47, i8* %48)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61)
  br label %138

63:                                               ; preds = %33
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %64, i32 0, i32 0
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  %70 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %71 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %81 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i64 0
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %87 = call i32 @shader_glsl_get_swizzle(%struct.TYPE_19__* %83, i32 %84, i32 %85, i8* %86)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @WINED3DSPSM_DZ, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %63
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @WINED3DSPSM_DW, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %132

95:                                               ; preds = %91, %63
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @shader_glsl_get_write_mask_size(i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WINED3DSPSM_DZ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %11, align 4
  %107 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %108 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %108, i32 0, i32 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i64 0
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %107, %struct.TYPE_19__* %111, i32 %112, %struct.glsl_src_param* %10)
  %114 = load i32, i32* %9, align 4
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %120 = load i32, i32* %9, align 4
  %121 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %118, i8* %119, i32 %120, i32 %122)
  br label %131

124:                                              ; preds = %105
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %128 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %10, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %126, i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %124, %116
  br label %137

132:                                              ; preds = %91
  %133 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %134 = load i32, i32* %7, align 4
  %135 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %136 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %134, i8* %135)
  br label %137

137:                                              ; preds = %132, %131
  br label %138

138:                                              ; preds = %137, %43
  ret void
}

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) #1

declare dso_local i32 @shader_glsl_get_swizzle(%struct.TYPE_19__*, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_19__*, i32, %struct.glsl_src_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
