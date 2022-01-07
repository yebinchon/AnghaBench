; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mov.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.wined3d_string_buffer*, %struct.wined3d_gl_info* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.glsl_src_param = type { i32 }

@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@WINED3DSPR_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ivec%d(floor(%s)));\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"int(floor(%s)));\0A\00", align 1
@WINED3DSIH_MOVA = common dso_local global i64 0, align 8
@EXT_GPU_SHADER4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ivec%d(round(%s)));\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"int(round(%s)));\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ivec%d(floor(abs(%s) + vec%d(0.5)) * sign(%s)));\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"int(floor(abs(%s) + 0.5) * sign(%s)));\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_mov(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %3, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %17, align 8
  store %struct.wined3d_string_buffer* %18, %struct.wined3d_string_buffer** %4, align 8
  %19 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = call i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer* %19, %struct.wined3d_shader_instruction* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %22, i32* %26, i32 %27, %struct.glsl_src_param* %5)
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %76

38:                                               ; preds = %1
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %38
  %50 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WINED3DSPR_ADDR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @shader_glsl_get_write_mask_size(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68)
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %64
  br label %138

76:                                               ; preds = %49, %38, %1
  %77 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WINED3DSIH_MOVA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @shader_glsl_get_write_mask_size(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %86 = call i32 @shader_glsl_get_version(%struct.wined3d_gl_info* %85)
  %87 = icmp sge i32 %86, 130
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %90 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* @EXT_GPU_SHADER4, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %88, %82
  %97 = load i32, i32* %8, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %103)
  br label %110

105:                                              ; preds = %96
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %105, %99
  br label %131

111:                                              ; preds = %88
  %112 = load i32, i32* %8, align 4
  %113 = icmp ugt i32 %112, 1
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %118, i32 %119, i32 %121)
  br label %130

123:                                              ; preds = %111
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %125 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %123, %114
  br label %131

131:                                              ; preds = %130, %110
  br label %137

132:                                              ; preds = %76
  %133 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %134 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %132, %131
  br label %138

138:                                              ; preds = %137, %75
  ret void
}

declare dso_local i32 @shader_glsl_append_dst(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, ...) #1

declare dso_local i32 @shader_glsl_get_version(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
