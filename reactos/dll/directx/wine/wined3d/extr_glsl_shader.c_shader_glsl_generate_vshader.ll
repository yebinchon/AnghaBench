; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_vshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_vshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer, %struct.wined3d_string_buffer_list }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.wined3d_shader_reg_maps }
%struct.TYPE_6__ = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_shader_reg_maps = type { %struct.wined3d_shader_version, i32, i64 }
%struct.wined3d_shader_version = type { i32 }
%struct.vs_compile_args = type { i64, i32, i32, i32, i64, i32, i64 }
%struct.shader_glsl_ctx_priv = type { %struct.wined3d_string_buffer_list*, %struct.vs_compile_args* }

@ARB_DRAW_INSTANCED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"#extension GL_ARB_draw_instanced : enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"#extension GL_ARB_explicit_attrib_location : enable\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"uniform struct\0A{\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"    float size;\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    float size_min;\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"    float size_max;\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"} ffp_point;\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"uniform vec4 clip_planes[%u];\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"vec4 ffp_varying_diffuse;\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"vec4 ffp_varying_specular;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"vec4 ffp_varying_texcoord[%u];\0A\00", align 1
@MAX_TEXTURES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"float ffp_varying_fogcoord;\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"void setup_vs_output(in vec4[%u]);\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"uniform vec4 pos_fixup;\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"vec4 vs_in[%u];\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"vs_in[%u] = vs_in%u;\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.vs_compile_args*)* @shader_glsl_generate_vshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_vshader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2, %struct.vs_compile_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.vs_compile_args*, align 8
  %10 = alloca %struct.wined3d_string_buffer_list*, align 8
  %11 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %12 = alloca %struct.wined3d_shader_version*, align 8
  %13 = alloca %struct.wined3d_string_buffer*, align 8
  %14 = alloca %struct.wined3d_gl_info*, align 8
  %15 = alloca %struct.shader_glsl_ctx_priv, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %8, align 8
  store %struct.vs_compile_args* %3, %struct.vs_compile_args** %9, align 8
  %20 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %20, i32 0, i32 1
  store %struct.wined3d_string_buffer_list* %21, %struct.wined3d_string_buffer_list** %10, align 8
  %22 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %22, i32 0, i32 2
  store %struct.wined3d_shader_reg_maps* %23, %struct.wined3d_shader_reg_maps** %11, align 8
  %24 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %24, i32 0, i32 0
  store %struct.wined3d_shader_version* %25, %struct.wined3d_shader_version** %12, align 8
  %26 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %27 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %26, i32 0, i32 0
  store %struct.wined3d_string_buffer* %27, %struct.wined3d_string_buffer** %13, align 8
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %28, i32 0, i32 0
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %29, align 8
  store %struct.wined3d_gl_info* %30, %struct.wined3d_gl_info** %14, align 8
  %31 = call i32 @memset(%struct.shader_glsl_ctx_priv* %15, i32 0, i32 16)
  %32 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %33 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %15, i32 0, i32 1
  store %struct.vs_compile_args* %32, %struct.vs_compile_args** %33, align 8
  %34 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %10, align 8
  %35 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %15, i32 0, i32 0
  store %struct.wined3d_string_buffer_list* %34, %struct.wined3d_string_buffer_list** %35, align 8
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %38 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %36, %struct.wined3d_gl_info* %37)
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %40 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %41 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %39, %struct.wined3d_gl_info* %40)
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @ARB_DRAW_INSTANCED, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %51 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %4
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %54 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %61 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %62 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %63 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %64 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %60, %struct.wined3d_string_buffer* %61, %struct.wined3d_shader* %62, %struct.wined3d_shader_reg_maps* %63, %struct.shader_glsl_ctx_priv* %15)
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %83, %59
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %68 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %74 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %75 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %76 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %78, i64 %80
  %82 = call i32 @shader_glsl_declare_generic_vertex_attribute(%struct.wined3d_string_buffer* %73, %struct.wined3d_gl_info* %74, %struct.wined3d_shader_signature_element* %81)
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %17, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %88 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %93 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %98 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %102 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %96, %91, %86
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %109 = call i32 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %151, label %111

111:                                              ; preds = %107
  %112 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %113 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %118 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %119 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %12, align 8
  %125 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 3
  br i1 %127, label %128, label %150

128:                                              ; preds = %123
  %129 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %130 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %131 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %132 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %129, %struct.wined3d_string_buffer* %130, i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %135 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %136 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %137 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %138 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %135, %struct.wined3d_string_buffer* %136, i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %141 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %142 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %143 = load i32, i32* @FALSE, align 4
  %144 = load i32, i32* @MAX_TEXTURES, align 4
  %145 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %141, %struct.wined3d_string_buffer* %142, i32 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %144)
  %146 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %147 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %148 = load i32, i32* @FALSE, align 4
  %149 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %146, %struct.wined3d_string_buffer* %147, i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %150

150:                                              ; preds = %128, %123
  br label %151

151:                                              ; preds = %150, %107
  %152 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %12, align 8
  %153 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %158 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %159 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %156, %151
  %165 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %166 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %172 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %180 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %170, %164
  %182 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %183 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sge i32 %185, 4
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %189 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %190 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %191 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %194 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %195 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %201 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv* %188, %struct.wined3d_shader* %189, i32 %192, %struct.wined3d_gl_info* %193, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %187, %181
  %205 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %206 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %207 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %208 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %247

211:                                              ; preds = %204
  %212 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %213 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @wined3d_log2i(i32 %214)
  store i32 %215, i32* %18, align 4
  %216 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %217 = load i32, i32* %18, align 4
  %218 = add i32 %217, 1
  %219 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %218)
  store i32 0, i32* %17, align 4
  br label %220

220:                                              ; preds = %243, %211
  %221 = load i32, i32* %17, align 4
  %222 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %223 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ult i32 %221, %225
  br i1 %226, label %227, label %246

227:                                              ; preds = %220
  %228 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %229 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %230, align 8
  %232 = load i32, i32* %17, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %231, i64 %233
  store %struct.wined3d_shader_signature_element* %234, %struct.wined3d_shader_signature_element** %19, align 8
  %235 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %236 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %19, align 8
  %237 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %19, align 8
  %240 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %227
  %244 = load i32, i32* %17, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %17, align 4
  br label %220

246:                                              ; preds = %220
  br label %247

247:                                              ; preds = %246, %204
  %248 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %249 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %250 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %251 = call i32 @shader_generate_code(%struct.wined3d_shader* %248, %struct.wined3d_string_buffer* %249, %struct.wined3d_shader_reg_maps* %250, %struct.shader_glsl_ctx_priv* %15, i32* null, i32* null)
  %252 = call i64 @FAILED(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  store i32 0, i32* %5, align 4
  br label %282

255:                                              ; preds = %247
  %256 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %257 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %259, 4
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %263 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %264 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %265 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %266 = call i32 @shader_glsl_generate_vs_epilogue(%struct.wined3d_gl_info* %262, %struct.wined3d_string_buffer* %263, %struct.wined3d_shader* %264, %struct.vs_compile_args* %265)
  br label %267

267:                                              ; preds = %261, %255
  %268 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %269 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %270 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %271 = call i32 @glCreateShader(i32 %270)
  %272 = call i32 @GL_EXTCALL(i32 %271)
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %273)
  %275 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %276 = load i32, i32* %16, align 4
  %277 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %278 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %275, i32 %276, i32 %279)
  %281 = load i32, i32* %16, align 4
  store i32 %281, i32* %5, align 4
  br label %282

282:                                              ; preds = %267, %254
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @shader_glsl_declare_generic_vertex_attribute(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, %struct.wined3d_shader_signature_element*) #1

declare dso_local i32 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @declare_out_varying(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) #1

declare dso_local i32 @shader_glsl_generate_sm4_output_setup(%struct.shader_glsl_priv*, %struct.wined3d_shader*, i32, %struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @wined3d_log2i(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @shader_glsl_generate_vs_epilogue(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.vs_compile_args*) #1

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
