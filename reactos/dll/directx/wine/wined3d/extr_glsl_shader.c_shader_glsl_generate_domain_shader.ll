; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_domain_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_domain_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32* }
%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer, %struct.wined3d_string_buffer_list }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.wined3d_shader_reg_maps }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }
%struct.ds_compile_args = type { i32, i32, i64, i32, i32, i32 }
%struct.shader_glsl_ctx_priv = type { %struct.wined3d_string_buffer_list*, %struct.ds_compile_args* }

@.str = private unnamed_addr constant [48 x i8] c"#extension GL_ARB_tessellation_shader : enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"layout(\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"isolines\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"quads\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"triangles\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c", ccw\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c", cw\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c", point_mode\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c", fractional_odd_spacing\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c", fractional_even_spacing\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c", equal_spacing\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c") in;\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"in shader_in_out { vec4 reg[%u]; } shader_in[];\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"uniform vec4 pos_fixup;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"setup_patch_constant_input();\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_TESS_EVALUATION_SHADER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.ds_compile_args*)* @shader_glsl_generate_domain_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_domain_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2, %struct.ds_compile_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.ds_compile_args*, align 8
  %10 = alloca %struct.wined3d_string_buffer_list*, align 8
  %11 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %12 = alloca %struct.wined3d_string_buffer*, align 8
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca %struct.shader_glsl_ctx_priv, align 8
  %15 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %8, align 8
  store %struct.ds_compile_args* %3, %struct.ds_compile_args** %9, align 8
  %16 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %17 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %16, i32 0, i32 1
  store %struct.wined3d_string_buffer_list* %17, %struct.wined3d_string_buffer_list** %10, align 8
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %18, i32 0, i32 3
  store %struct.wined3d_shader_reg_maps* %19, %struct.wined3d_shader_reg_maps** %11, align 8
  %20 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %20, i32 0, i32 0
  store %struct.wined3d_string_buffer* %21, %struct.wined3d_string_buffer** %12, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 0
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  store %struct.wined3d_gl_info* %24, %struct.wined3d_gl_info** %13, align 8
  %25 = call i32 @memset(%struct.shader_glsl_ctx_priv* %14, i32 0, i32 16)
  %26 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %27 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %14, i32 0, i32 1
  store %struct.ds_compile_args* %26, %struct.ds_compile_args** %27, align 8
  %28 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %10, align 8
  %29 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %14, i32 0, i32 0
  store %struct.wined3d_string_buffer_list* %28, %struct.wined3d_string_buffer_list** %29, align 8
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %32 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %30, %struct.wined3d_gl_info* %31)
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %35 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %33, %struct.wined3d_gl_info* %34)
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %40 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %41 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %42 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %38, %struct.wined3d_string_buffer* %39, %struct.wined3d_shader* %40, %struct.wined3d_shader_reg_maps* %41, %struct.shader_glsl_ctx_priv* %14)
  %43 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %59 [
    i32 138, label %50
    i32 137, label %53
    i32 136, label %56
  ]

50:                                               ; preds = %4
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %59

53:                                               ; preds = %4
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %55 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %59

56:                                               ; preds = %4
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %4, %56, %53, %50
  %60 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %61 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %91 [
    i32 132, label %63
    i32 133, label %75
    i32 134, label %87
    i32 135, label %90
  ]

63:                                               ; preds = %59
  %64 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %65 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %73 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  br label %91

75:                                               ; preds = %59
  %76 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %77 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %91

87:                                               ; preds = %59
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %89 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %91

90:                                               ; preds = %59
  br label %91

91:                                               ; preds = %59, %90, %87, %86, %74
  %92 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %93 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %104 [
    i32 130, label %95
    i32 131, label %98
    i32 129, label %101
    i32 128, label %101
  ]

95:                                               ; preds = %91
  %96 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %97 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %104

98:                                               ; preds = %91
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %104

101:                                              ; preds = %91, %91
  %102 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %103 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %104

104:                                              ; preds = %91, %101, %98, %95
  %105 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %108 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %115 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %104
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %129 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %119, %104
  %131 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %132 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %133 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %134 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %137 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %138 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %144 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv* %131, %struct.wined3d_shader* %132, i32 %135, %struct.wined3d_gl_info* %136, i32 %142, i32 %145)
  %147 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %148 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %148, i32 0, i32 0
  %150 = load i32, i32* @TRUE, align 4
  %151 = call i32 @shader_glsl_generate_patch_constant_setup(%struct.wined3d_string_buffer* %147, i32* %149, i32 %150)
  %152 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %153 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %154 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %155 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %156 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %158 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %159 = call i32 @shader_generate_code(%struct.wined3d_shader* %156, %struct.wined3d_string_buffer* %157, %struct.wined3d_shader_reg_maps* %158, %struct.shader_glsl_ctx_priv* %14, i32* null, i32* null)
  %160 = call i64 @FAILED(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %178

163:                                              ; preds = %130
  %164 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %165 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %166 = load i32, i32* @GL_TESS_EVALUATION_SHADER, align 4
  %167 = call i32 @glCreateShader(i32 %166)
  %168 = call i32 @GL_EXTCALL(i32 %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %169)
  %171 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %174 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %171, i32 %172, i32 %175)
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %163, %162
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv*, %struct.wined3d_shader*, i32, %struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @shader_glsl_generate_patch_constant_setup(%struct.wined3d_string_buffer*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @shader_glsl_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
