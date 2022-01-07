; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.wined3d_gl_info*, %struct.glsl_context_data* }
%struct.wined3d_gl_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.glsl_context_data = type { %struct.glsl_shader_prog_link* }
%struct.glsl_shader_prog_link = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { i32*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.wined3d_state = type { i32**, i32*, %struct.TYPE_18__*, i32, i32, i32, %struct.wined3d_light_info**, %struct.wined3d_shader**, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64 }
%struct.wined3d_light_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.shader_glsl_priv = type { i32, i32, i32, i32, i32 }
%struct.wined3d_matrix = type { i32 }
%struct.wined3d_vec4 = type { float, float, float, float, float }
%struct.wined3d_color = type { float }

@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@WINED3D_SHADER_CONST_VS_F = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_I = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_B = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_CLIP_PLANES = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_POINTSIZE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_POS_FIXUP = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"glUniform4fv\00", align 1
@WINED3D_SHADER_CONST_FFP_MODELVIEW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"glUniformMatrix4fv\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"glUniformMatrix3fv\00", align 1
@WINED3D_SHADER_CONST_FFP_VERTEXBLEND = common dso_local global i32 0, align 4
@MAX_VERTEX_INDEX_BLENDS = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_PROJ = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_TEXMATRIX = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_MATERIAL = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_LIGHTS = common dso_local global i32 0, align 4
@MAX_ACTIVE_LIGHTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unhandled light type %#x.\0A\00", align 1
@WINED3D_SHADER_CONST_PS_F = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_I = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_B = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_BUMP_ENV = common dso_local global i32 0, align 4
@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_LSCALE = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_LOFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"bump env uniforms\00", align 1
@WINED3D_SHADER_CONST_PS_Y_CORR = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_NP2_FIXUP = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_COLOR_KEY = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_PS = common dso_local global i32 0, align 4
@WINED3D_RS_TEXTUREFACTOR = common dso_local global i64 0, align 8
@WINED3D_RS_SPECULARENABLE = common dso_local global i64 0, align 8
@WINED3D_TSS_CONSTANT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"fixed function uniforms\00", align 1
@WINED3D_SHADER_CONST_PS_FOG = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_ALPHA_TEST = common dso_local global i32 0, align 4
@WINED3D_RS_ALPHAREF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"alpha test emulation uniform\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Max constant version reached, resetting to 0.\0A\00", align 1
@reset_program_constant_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_glsl_load_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_constants(i8* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.glsl_context_data*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_shader*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca %struct.shader_glsl_priv*, align 8
  %12 = alloca [4 x float], align 16
  %13 = alloca [9 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.glsl_shader_prog_link*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.wined3d_matrix, align 4
  %19 = alloca %struct.wined3d_matrix, align 4
  %20 = alloca %struct.wined3d_matrix, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.wined3d_light_info*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.wined3d_vec4, align 4
  %32 = alloca %struct.wined3d_color, align 4
  %33 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 3
  %36 = load %struct.glsl_context_data*, %struct.glsl_context_data** %35, align 8
  store %struct.glsl_context_data* %36, %struct.glsl_context_data** %7, align 8
  %37 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %38 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %37, i32 0, i32 7
  %39 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %38, align 8
  %40 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %39, i64 %40
  %42 = load %struct.wined3d_shader*, %struct.wined3d_shader** %41, align 8
  store %struct.wined3d_shader* %42, %struct.wined3d_shader** %8, align 8
  %43 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %43, i32 0, i32 7
  %45 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %44, align 8
  %46 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %45, i64 %46
  %48 = load %struct.wined3d_shader*, %struct.wined3d_shader** %47, align 8
  store %struct.wined3d_shader* %48, %struct.wined3d_shader** %9, align 8
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %49, i32 0, i32 2
  %51 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %50, align 8
  store %struct.wined3d_gl_info* %51, %struct.wined3d_gl_info** %10, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = bitcast i8* %52 to %struct.shader_glsl_priv*
  store %struct.shader_glsl_priv* %53, %struct.shader_glsl_priv** %11, align 8
  %54 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %55 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %54, i32 0, i32 0
  %56 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %55, align 8
  store %struct.glsl_shader_prog_link* %56, %struct.glsl_shader_prog_link** %15, align 8
  %57 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %58 = icmp ne %struct.glsl_shader_prog_link* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %3
  br label %853

60:                                               ; preds = %3
  %61 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %62 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %65 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %68 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %66, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @WINED3D_SHADER_CONST_VS_F, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %60
  %76 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %78 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %79 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %82 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %86 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %85, i32 0, i32 4
  %87 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %88 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @shader_glsl_load_constants_f(%struct.wined3d_shader* %76, %struct.wined3d_gl_info* %77, i32 %80, i32 %84, i32* %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %75, %60
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @WINED3D_SHADER_CONST_VS_I, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %99 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %100 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %101 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %104 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @shader_glsl_load_constants_i(%struct.wined3d_shader* %98, %struct.wined3d_gl_info* %99, i32 %102, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %97, %92
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @WINED3D_SHADER_CONST_VS_B, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %119 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %120 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %121 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %125 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %128 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @shader_glsl_load_constantsB(%struct.wined3d_shader* %118, %struct.wined3d_gl_info* %119, i32 %123, i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %117, %112
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @WINED3D_SHADER_CONST_VS_CLIP_PLANES, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %141 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %147 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %150 = call i32 @shader_glsl_clip_plane_uniform(%struct.wined3d_context* %146, %struct.wined3d_state* %147, i32 %148, %struct.glsl_shader_prog_link* %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %138

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %132
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @WINED3D_SHADER_CONST_VS_POINTSIZE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %162 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %163 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %164 = call i32 @shader_glsl_pointsize_uniform(%struct.wined3d_context* %161, %struct.wined3d_state* %162, %struct.glsl_shader_prog_link* %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @WINED3D_SHADER_CONST_POS_FIXUP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %217

170:                                              ; preds = %165
  %171 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %172 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %173 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %174 = call i32 @shader_get_position_fixup(%struct.wined3d_context* %171, %struct.wined3d_state* %172, float* %173)
  %175 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %176 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %175, i32 0, i32 7
  %177 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %176, align 8
  %178 = load i64, i64* @WINED3D_SHADER_TYPE_GEOMETRY, align 8
  %179 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %177, i64 %178
  %180 = load %struct.wined3d_shader*, %struct.wined3d_shader** %179, align 8
  %181 = icmp ne %struct.wined3d_shader* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %170
  %183 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %184 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %188 = call i32 @glUniform4fv(i32 %186, i32 1, float* %187)
  %189 = call i32 @GL_EXTCALL(i32 %188)
  br label %215

190:                                              ; preds = %170
  %191 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %192 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %191, i32 0, i32 7
  %193 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %192, align 8
  %194 = load i64, i64* @WINED3D_SHADER_TYPE_DOMAIN, align 8
  %195 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %193, i64 %194
  %196 = load %struct.wined3d_shader*, %struct.wined3d_shader** %195, align 8
  %197 = icmp ne %struct.wined3d_shader* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %200 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %204 = call i32 @glUniform4fv(i32 %202, i32 1, float* %203)
  %205 = call i32 @GL_EXTCALL(i32 %204)
  br label %214

206:                                              ; preds = %190
  %207 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %208 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %212 = call i32 @glUniform4fv(i32 %210, i32 1, float* %211)
  %213 = call i32 @GL_EXTCALL(i32 %212)
  br label %214

214:                                              ; preds = %206, %198
  br label %215

215:                                              ; preds = %214, %182
  %216 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %165
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* @WINED3D_SHADER_CONST_FFP_MODELVIEW, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %251

222:                                              ; preds = %217
  %223 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %224 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %225 = call i32 @get_modelview_matrix(%struct.wined3d_context* %223, %struct.wined3d_state* %224, i32 0, %struct.wined3d_matrix* %18)
  %226 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %227 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FALSE, align 4
  %233 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %18, i32 0, i32 0
  %234 = call i32 @glUniformMatrix4fv(i32 %231, i32 1, i32 %232, i32* %233)
  %235 = call i32 @GL_EXTCALL(i32 %234)
  %236 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %237 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %238 = getelementptr inbounds [9 x float], [9 x float]* %13, i64 0, i64 0
  %239 = call i32 @get_normal_matrix(%struct.wined3d_context* %237, %struct.wined3d_matrix* %18, float* %238)
  %240 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %241 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @FALSE, align 4
  %247 = getelementptr inbounds [9 x float], [9 x float]* %13, i64 0, i64 0
  %248 = call i32 @glUniformMatrix3fv(i32 %245, i32 1, i32 %246, float* %247)
  %249 = call i32 @GL_EXTCALL(i32 %248)
  %250 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %251

251:                                              ; preds = %222, %217
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* @WINED3D_SHADER_CONST_FFP_VERTEXBLEND, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %317

256:                                              ; preds = %251
  store i32 1, i32* %17, align 4
  br label %257

257:                                              ; preds = %313, %256
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* @MAX_VERTEX_INDEX_BLENDS, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %316

261:                                              ; preds = %257
  %262 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %263 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %272

271:                                              ; preds = %261
  br label %316

272:                                              ; preds = %261
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @WINED3D_SHADER_CONST_FFP_VERTEXBLEND_INDEX(i32 %274)
  %276 = and i32 %273, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  br label %313

279:                                              ; preds = %272
  %280 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %281 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %282 = load i32, i32* %17, align 4
  %283 = call i32 @get_modelview_matrix(%struct.wined3d_context* %280, %struct.wined3d_state* %281, i32 %282, %struct.wined3d_matrix* %19)
  %284 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %285 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %17, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @FALSE, align 4
  %293 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %19, i32 0, i32 0
  %294 = call i32 @glUniformMatrix4fv(i32 %291, i32 1, i32 %292, i32* %293)
  %295 = call i32 @GL_EXTCALL(i32 %294)
  %296 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %297 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %298 = getelementptr inbounds [9 x float], [9 x float]* %13, i64 0, i64 0
  %299 = call i32 @get_normal_matrix(%struct.wined3d_context* %297, %struct.wined3d_matrix* %19, float* %298)
  %300 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %301 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 3
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @FALSE, align 4
  %309 = getelementptr inbounds [9 x float], [9 x float]* %13, i64 0, i64 0
  %310 = call i32 @glUniformMatrix3fv(i32 %307, i32 1, i32 %308, float* %309)
  %311 = call i32 @GL_EXTCALL(i32 %310)
  %312 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %313

313:                                              ; preds = %279, %278
  %314 = load i32, i32* %17, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %17, align 4
  br label %257

316:                                              ; preds = %271, %257
  br label %317

317:                                              ; preds = %316, %251
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* @WINED3D_SHADER_CONST_FFP_PROJ, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %317
  %323 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %324 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %325 = call i32 @get_projection_matrix(%struct.wined3d_context* %323, %struct.wined3d_state* %324, %struct.wined3d_matrix* %20)
  %326 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %327 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @FALSE, align 4
  %331 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %20, i32 0, i32 0
  %332 = call i32 @glUniformMatrix4fv(i32 %329, i32 1, i32 %330, i32* %331)
  %333 = call i32 @GL_EXTCALL(i32 %332)
  %334 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %335

335:                                              ; preds = %322, %317
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* @WINED3D_SHADER_CONST_FFP_TEXMATRIX, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %355

340:                                              ; preds = %335
  store i32 0, i32* %17, align 4
  br label %341

341:                                              ; preds = %351, %340
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* @MAX_TEXTURES, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %341
  %346 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %347 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %348 = load i32, i32* %17, align 4
  %349 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %350 = call i32 @shader_glsl_ffp_vertex_texmatrix_uniform(%struct.wined3d_context* %346, %struct.wined3d_state* %347, i32 %348, %struct.glsl_shader_prog_link* %349)
  br label %351

351:                                              ; preds = %345
  %352 = load i32, i32* %17, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %17, align 4
  br label %341

354:                                              ; preds = %341
  br label %355

355:                                              ; preds = %354, %335
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* @WINED3D_SHADER_CONST_FFP_MATERIAL, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %355
  %361 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %362 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %363 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %364 = call i32 @shader_glsl_ffp_vertex_material_uniform(%struct.wined3d_context* %361, %struct.wined3d_state* %362, %struct.glsl_shader_prog_link* %363)
  br label %365

365:                                              ; preds = %360, %355
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* @WINED3D_SHADER_CONST_FFP_LIGHTS, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %487

370:                                              ; preds = %365
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %17, align 4
  br label %371

371:                                              ; preds = %421, %370
  %372 = load i32, i32* %17, align 4
  %373 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %424

375:                                              ; preds = %371
  %376 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %377 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %376, i32 0, i32 6
  %378 = load %struct.wined3d_light_info**, %struct.wined3d_light_info*** %377, align 8
  %379 = load i32, i32* %17, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.wined3d_light_info*, %struct.wined3d_light_info** %378, i64 %380
  %382 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %381, align 8
  %383 = icmp ne %struct.wined3d_light_info* %382, null
  br i1 %383, label %385, label %384

384:                                              ; preds = %375
  br label %421

385:                                              ; preds = %375
  %386 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %387 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %386, i32 0, i32 6
  %388 = load %struct.wined3d_light_info**, %struct.wined3d_light_info*** %387, align 8
  %389 = load i32, i32* %17, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.wined3d_light_info*, %struct.wined3d_light_info** %388, i64 %390
  %392 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %391, align 8
  %393 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  switch i32 %395, label %408 [
    i32 129, label %396
    i32 128, label %399
    i32 131, label %402
    i32 130, label %405
  ]

396:                                              ; preds = %385
  %397 = load i32, i32* %25, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %25, align 4
  br label %420

399:                                              ; preds = %385
  %400 = load i32, i32* %26, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %26, align 4
  br label %420

402:                                              ; preds = %385
  %403 = load i32, i32* %27, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %27, align 4
  br label %420

405:                                              ; preds = %385
  %406 = load i32, i32* %28, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %28, align 4
  br label %420

408:                                              ; preds = %385
  %409 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %410 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %409, i32 0, i32 6
  %411 = load %struct.wined3d_light_info**, %struct.wined3d_light_info*** %410, align 8
  %412 = load i32, i32* %17, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.wined3d_light_info*, %struct.wined3d_light_info** %411, i64 %413
  %415 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %414, align 8
  %416 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %418)
  br label %420

420:                                              ; preds = %408, %405, %402, %399, %396
  br label %421

421:                                              ; preds = %420, %384
  %422 = load i32, i32* %17, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %17, align 4
  br label %371

424:                                              ; preds = %371
  store i32 0, i32* %21, align 4
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* %25, align 4
  %427 = add i32 %425, %426
  store i32 %427, i32* %22, align 4
  %428 = load i32, i32* %22, align 4
  %429 = load i32, i32* %26, align 4
  %430 = add i32 %428, %429
  store i32 %430, i32* %23, align 4
  %431 = load i32, i32* %23, align 4
  %432 = load i32, i32* %27, align 4
  %433 = add i32 %431, %432
  store i32 %433, i32* %24, align 4
  %434 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %435 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %436 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %437 = call i32 @shader_glsl_ffp_vertex_lightambient_uniform(%struct.wined3d_context* %434, %struct.wined3d_state* %435, %struct.glsl_shader_prog_link* %436)
  store i32 0, i32* %17, align 4
  br label %438

438:                                              ; preds = %483, %424
  %439 = load i32, i32* %17, align 4
  %440 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %486

442:                                              ; preds = %438
  %443 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %444 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %443, i32 0, i32 6
  %445 = load %struct.wined3d_light_info**, %struct.wined3d_light_info*** %444, align 8
  %446 = load i32, i32* %17, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.wined3d_light_info*, %struct.wined3d_light_info** %445, i64 %447
  %449 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %448, align 8
  store %struct.wined3d_light_info* %449, %struct.wined3d_light_info** %29, align 8
  %450 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %29, align 8
  %451 = icmp ne %struct.wined3d_light_info* %450, null
  br i1 %451, label %453, label %452

452:                                              ; preds = %442
  br label %483

453:                                              ; preds = %442
  %454 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %29, align 8
  %455 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  switch i32 %457, label %470 [
    i32 129, label %458
    i32 128, label %461
    i32 131, label %464
    i32 130, label %467
  ]

458:                                              ; preds = %453
  %459 = load i32, i32* %21, align 4
  %460 = add i32 %459, 1
  store i32 %460, i32* %21, align 4
  store i32 %459, i32* %30, align 4
  br label %476

461:                                              ; preds = %453
  %462 = load i32, i32* %22, align 4
  %463 = add i32 %462, 1
  store i32 %463, i32* %22, align 4
  store i32 %462, i32* %30, align 4
  br label %476

464:                                              ; preds = %453
  %465 = load i32, i32* %23, align 4
  %466 = add i32 %465, 1
  store i32 %466, i32* %23, align 4
  store i32 %465, i32* %30, align 4
  br label %476

467:                                              ; preds = %453
  %468 = load i32, i32* %24, align 4
  %469 = add i32 %468, 1
  store i32 %469, i32* %24, align 4
  store i32 %468, i32* %30, align 4
  br label %476

470:                                              ; preds = %453
  %471 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %29, align 8
  %472 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %474)
  br label %483

476:                                              ; preds = %467, %464, %461, %458
  %477 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %478 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %479 = load i32, i32* %30, align 4
  %480 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %29, align 8
  %481 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %482 = call i32 @shader_glsl_ffp_vertex_light_uniform(%struct.wined3d_context* %477, %struct.wined3d_state* %478, i32 %479, %struct.wined3d_light_info* %480, %struct.glsl_shader_prog_link* %481)
  br label %483

483:                                              ; preds = %476, %470, %452
  %484 = load i32, i32* %17, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %17, align 4
  br label %438

486:                                              ; preds = %438
  br label %487

487:                                              ; preds = %486, %365
  %488 = load i32, i32* %14, align 4
  %489 = load i32, i32* @WINED3D_SHADER_CONST_PS_F, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %509

492:                                              ; preds = %487
  %493 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %494 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %495 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %496 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %495, i32 0, i32 5
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %499 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %498, i32 0, i32 2
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 10
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %503 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %502, i32 0, i32 3
  %504 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %505 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* %16, align 4
  %508 = call i32 @shader_glsl_load_constants_f(%struct.wined3d_shader* %493, %struct.wined3d_gl_info* %494, i32 %497, i32 %501, i32* %503, i32 %506, i32 %507)
  br label %509

509:                                              ; preds = %492, %487
  %510 = load i32, i32* %14, align 4
  %511 = load i32, i32* @WINED3D_SHADER_CONST_PS_I, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %529

514:                                              ; preds = %509
  %515 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %516 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %517 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %518 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %521 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %521, i32 0, i32 9
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %525 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @shader_glsl_load_constants_i(%struct.wined3d_shader* %515, %struct.wined3d_gl_info* %516, i32 %519, i32 %523, i32 %527)
  br label %529

529:                                              ; preds = %514, %509
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* @WINED3D_SHADER_CONST_PS_B, align 4
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %549

534:                                              ; preds = %529
  %535 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %536 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %537 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %538 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %538, i32 0, i32 8
  %540 = load i32, i32* %539, align 8
  %541 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %542 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %545 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @shader_glsl_load_constantsB(%struct.wined3d_shader* %535, %struct.wined3d_gl_info* %536, i32 %540, i32 %543, i32 %547)
  br label %549

549:                                              ; preds = %534, %529
  %550 = load i32, i32* %14, align 4
  %551 = load i32, i32* @WINED3D_SHADER_CONST_PS_BUMP_ENV, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %644

554:                                              ; preds = %549
  store i32 0, i32* %17, align 4
  br label %555

555:                                              ; preds = %639, %554
  %556 = load i32, i32* %17, align 4
  %557 = load i32, i32* @MAX_TEXTURES, align 4
  %558 = icmp slt i32 %556, %557
  br i1 %558, label %559, label %642

559:                                              ; preds = %555
  %560 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %561 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %17, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = icmp eq i32 %567, -1
  br i1 %568, label %569, label %570

569:                                              ; preds = %559
  br label %639

570:                                              ; preds = %559
  %571 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %572 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = load i32, i32* %17, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %574, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %580 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %579, i32 0, i32 0
  %581 = load i32**, i32*** %580, align 8
  %582 = load i32, i32* %17, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32*, i32** %581, i64 %583
  %585 = load i32*, i32** %584, align 8
  %586 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT00, align 8
  %587 = getelementptr inbounds i32, i32* %585, i64 %586
  %588 = call i32 @glUniformMatrix2fv(i32 %578, i32 1, i32 0, i32* %587)
  %589 = call i32 @GL_EXTCALL(i32 %588)
  %590 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %591 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %591, i32 0, i32 1
  %593 = load i32*, i32** %592, align 8
  %594 = load i32, i32* %17, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %597, -1
  br i1 %598, label %599, label %638

599:                                              ; preds = %570
  %600 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %601 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %601, i32 0, i32 1
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %17, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %609 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %608, i32 0, i32 0
  %610 = load i32**, i32*** %609, align 8
  %611 = load i32, i32* %17, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32*, i32** %610, i64 %612
  %614 = load i32*, i32** %613, align 8
  %615 = load i64, i64* @WINED3D_TSS_BUMPENV_LSCALE, align 8
  %616 = getelementptr inbounds i32, i32* %614, i64 %615
  %617 = call i32 @glUniform1fv(i32 %607, i32 1, i32* %616)
  %618 = call i32 @GL_EXTCALL(i32 %617)
  %619 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %620 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %619, i32 0, i32 2
  %621 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %620, i32 0, i32 2
  %622 = load i32*, i32** %621, align 8
  %623 = load i32, i32* %17, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i32, i32* %622, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %628 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %627, i32 0, i32 0
  %629 = load i32**, i32*** %628, align 8
  %630 = load i32, i32* %17, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32*, i32** %629, i64 %631
  %633 = load i32*, i32** %632, align 8
  %634 = load i64, i64* @WINED3D_TSS_BUMPENV_LOFFSET, align 8
  %635 = getelementptr inbounds i32, i32* %633, i64 %634
  %636 = call i32 @glUniform1fv(i32 %626, i32 1, i32* %635)
  %637 = call i32 @GL_EXTCALL(i32 %636)
  br label %638

638:                                              ; preds = %599, %570
  br label %639

639:                                              ; preds = %638, %569
  %640 = load i32, i32* %17, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %17, align 4
  br label %555

642:                                              ; preds = %555
  %643 = call i32 @checkGLcall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %644

644:                                              ; preds = %642, %549
  %645 = load i32, i32* %14, align 4
  %646 = load i32, i32* @WINED3D_SHADER_CONST_PS_Y_CORR, align 4
  %647 = and i32 %645, %646
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %686

649:                                              ; preds = %644
  %650 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 0
  %651 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %652 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %656

655:                                              ; preds = %649
  br label %667

656:                                              ; preds = %649
  %657 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %658 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %657, i32 0, i32 2
  %659 = load %struct.TYPE_18__*, %struct.TYPE_18__** %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %659, i32 0, i32 0
  %661 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %661, i64 0
  %663 = load %struct.TYPE_17__*, %struct.TYPE_17__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = sitofp i64 %665 to float
  br label %667

667:                                              ; preds = %656, %655
  %668 = phi float [ 0.000000e+00, %655 ], [ %666, %656 ]
  store float %668, float* %650, align 4
  %669 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 1
  %670 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %671 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = icmp ne i32 %672, 0
  %674 = zext i1 %673 to i64
  %675 = select i1 %673, float 1.000000e+00, float -1.000000e+00
  store float %675, float* %669, align 4
  %676 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 2
  store float 0.000000e+00, float* %676, align 4
  %677 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 3
  store float 0.000000e+00, float* %677, align 4
  %678 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 4
  store float 0.000000e+00, float* %678, align 4
  %679 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %680 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %679, i32 0, i32 2
  %681 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 8
  %683 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 4
  %684 = call i32 @glUniform4fv(i32 %682, i32 1, float* %683)
  %685 = call i32 @GL_EXTCALL(i32 %684)
  br label %686

686:                                              ; preds = %667, %644
  %687 = load i32, i32* %14, align 4
  %688 = load i32, i32* @WINED3D_SHADER_CONST_PS_NP2_FIXUP, align 4
  %689 = and i32 %687, %688
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %697

691:                                              ; preds = %686
  %692 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %693 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %692, i32 0, i32 2
  %694 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %695 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %696 = call i32 @shader_glsl_load_np2fixup_constants(%struct.TYPE_19__* %693, %struct.wined3d_gl_info* %694, %struct.wined3d_state* %695)
  br label %697

697:                                              ; preds = %691, %686
  %698 = load i32, i32* %14, align 4
  %699 = load i32, i32* @WINED3D_SHADER_CONST_FFP_COLOR_KEY, align 4
  %700 = and i32 %698, %699
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %708

702:                                              ; preds = %697
  %703 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %704 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %703, i32 0, i32 2
  %705 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %706 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %707 = call i32 @shader_glsl_load_color_key_constant(%struct.TYPE_19__* %704, %struct.wined3d_gl_info* %705, %struct.wined3d_state* %706)
  br label %708

708:                                              ; preds = %702, %697
  %709 = load i32, i32* %14, align 4
  %710 = load i32, i32* @WINED3D_SHADER_CONST_FFP_PS, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %800

713:                                              ; preds = %708
  %714 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %715 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %715, i32 0, i32 4
  %717 = load i32, i32* %716, align 4
  %718 = icmp ne i32 %717, -1
  br i1 %718, label %719, label %734

719:                                              ; preds = %713
  %720 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %721 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %720, i32 0, i32 1
  %722 = load i32*, i32** %721, align 8
  %723 = load i64, i64* @WINED3D_RS_TEXTUREFACTOR, align 8
  %724 = getelementptr inbounds i32, i32* %722, i64 %723
  %725 = load i32, i32* %724, align 4
  %726 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %32, i32 %725)
  %727 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %728 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %727, i32 0, i32 2
  %729 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %728, i32 0, i32 4
  %730 = load i32, i32* %729, align 4
  %731 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %32, i32 0, i32 0
  %732 = call i32 @glUniform4fv(i32 %730, i32 1, float* %731)
  %733 = call i32 @GL_EXTCALL(i32 %732)
  br label %734

734:                                              ; preds = %719, %713
  %735 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %736 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %735, i32 0, i32 1
  %737 = load i32*, i32** %736, align 8
  %738 = load i64, i64* @WINED3D_RS_SPECULARENABLE, align 8
  %739 = getelementptr inbounds i32, i32* %737, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %749

742:                                              ; preds = %734
  %743 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %744 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %743, i32 0, i32 2
  %745 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %744, i32 0, i32 7
  %746 = load i32, i32* %745, align 4
  %747 = call i32 @glUniform4f(i32 %746, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %748 = call i32 @GL_EXTCALL(i32 %747)
  br label %756

749:                                              ; preds = %734
  %750 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %751 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %750, i32 0, i32 2
  %752 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %751, i32 0, i32 7
  %753 = load i32, i32* %752, align 4
  %754 = call i32 @glUniform4f(i32 %753, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %755 = call i32 @GL_EXTCALL(i32 %754)
  br label %756

756:                                              ; preds = %749, %742
  store i32 0, i32* %17, align 4
  br label %757

757:                                              ; preds = %795, %756
  %758 = load i32, i32* %17, align 4
  %759 = load i32, i32* @MAX_TEXTURES, align 4
  %760 = icmp slt i32 %758, %759
  br i1 %760, label %761, label %798

761:                                              ; preds = %757
  %762 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %763 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %762, i32 0, i32 2
  %764 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %763, i32 0, i32 5
  %765 = load i32*, i32** %764, align 8
  %766 = load i32, i32* %17, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32, i32* %765, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = icmp eq i32 %769, -1
  br i1 %770, label %771, label %772

771:                                              ; preds = %761
  br label %795

772:                                              ; preds = %761
  %773 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %774 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %773, i32 0, i32 0
  %775 = load i32**, i32*** %774, align 8
  %776 = load i32, i32* %17, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i32*, i32** %775, i64 %777
  %779 = load i32*, i32** %778, align 8
  %780 = load i64, i64* @WINED3D_TSS_CONSTANT, align 8
  %781 = getelementptr inbounds i32, i32* %779, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %32, i32 %782)
  %784 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %785 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %784, i32 0, i32 2
  %786 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %785, i32 0, i32 5
  %787 = load i32*, i32** %786, align 8
  %788 = load i32, i32* %17, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  %791 = load i32, i32* %790, align 4
  %792 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %32, i32 0, i32 0
  %793 = call i32 @glUniform4fv(i32 %791, i32 1, float* %792)
  %794 = call i32 @GL_EXTCALL(i32 %793)
  br label %795

795:                                              ; preds = %772, %771
  %796 = load i32, i32* %17, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %17, align 4
  br label %757

798:                                              ; preds = %757
  %799 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %800

800:                                              ; preds = %798, %708
  %801 = load i32, i32* %14, align 4
  %802 = load i32, i32* @WINED3D_SHADER_CONST_PS_FOG, align 4
  %803 = and i32 %801, %802
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %810

805:                                              ; preds = %800
  %806 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %807 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %808 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %809 = call i32 @shader_glsl_load_fog_uniform(%struct.wined3d_context* %806, %struct.wined3d_state* %807, %struct.glsl_shader_prog_link* %808)
  br label %810

810:                                              ; preds = %805, %800
  %811 = load i32, i32* %14, align 4
  %812 = load i32, i32* @WINED3D_SHADER_CONST_PS_ALPHA_TEST, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %832

815:                                              ; preds = %810
  %816 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %817 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %816, i32 0, i32 1
  %818 = load i32*, i32** %817, align 8
  %819 = load i64, i64* @WINED3D_RS_ALPHAREF, align 8
  %820 = getelementptr inbounds i32, i32* %818, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = sitofp i32 %821 to float
  %823 = fdiv float %822, 2.550000e+02
  store float %823, float* %33, align 4
  %824 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %825 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %824, i32 0, i32 2
  %826 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %825, i32 0, i32 6
  %827 = load i32, i32* %826, align 8
  %828 = load float, float* %33, align 4
  %829 = call i32 @glUniform1f(i32 %827, float %828)
  %830 = call i32 @GL_EXTCALL(i32 %829)
  %831 = call i32 @checkGLcall(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %832

832:                                              ; preds = %815, %810
  %833 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %834 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %833, i32 0, i32 0
  %835 = load i32, i32* %834, align 4
  %836 = load i32, i32* @UINT_MAX, align 4
  %837 = icmp eq i32 %835, %836
  br i1 %837, label %838, label %846

838:                                              ; preds = %832
  %839 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %840 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %841 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %840, i32 0, i32 1
  %842 = load i32, i32* @reset_program_constant_version, align 4
  %843 = call i32 @wine_rb_for_each_entry(i32* %841, i32 %842, i32* null)
  %844 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %845 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %844, i32 0, i32 0
  store i32 1, i32* %845, align 4
  br label %853

846:                                              ; preds = %832
  %847 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %11, align 8
  %848 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 4
  %850 = add nsw i32 %849, 1
  store i32 %850, i32* %848, align 4
  %851 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %15, align 8
  %852 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %851, i32 0, i32 1
  store i32 %849, i32* %852, align 4
  br label %853

853:                                              ; preds = %59, %846, %838
  ret void
}

declare dso_local i32 @shader_glsl_load_constants_f(%struct.wined3d_shader*, %struct.wined3d_gl_info*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @shader_glsl_load_constants_i(%struct.wined3d_shader*, %struct.wined3d_gl_info*, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_load_constantsB(%struct.wined3d_shader*, %struct.wined3d_gl_info*, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_clip_plane_uniform(%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @shader_glsl_pointsize_uniform(%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @shader_get_position_fixup(%struct.wined3d_context*, %struct.wined3d_state*, float*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, float*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @get_modelview_matrix(%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.wined3d_matrix*) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, i32*) #1

declare dso_local i32 @get_normal_matrix(%struct.wined3d_context*, %struct.wined3d_matrix*, float*) #1

declare dso_local i32 @glUniformMatrix3fv(i32, i32, i32, float*) #1

declare dso_local i32 @WINED3D_SHADER_CONST_FFP_VERTEXBLEND_INDEX(i32) #1

declare dso_local i32 @get_projection_matrix(%struct.wined3d_context*, %struct.wined3d_state*, %struct.wined3d_matrix*) #1

declare dso_local i32 @shader_glsl_ffp_vertex_texmatrix_uniform(%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @shader_glsl_ffp_vertex_material_uniform(%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_glsl_ffp_vertex_lightambient_uniform(%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @shader_glsl_ffp_vertex_light_uniform(%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.wined3d_light_info*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @glUniformMatrix2fv(i32, i32, i32, i32*) #1

declare dso_local i32 @glUniform1fv(i32, i32, i32*) #1

declare dso_local i32 @shader_glsl_load_np2fixup_constants(%struct.TYPE_19__*, %struct.wined3d_gl_info*, %struct.wined3d_state*) #1

declare dso_local i32 @shader_glsl_load_color_key_constant(%struct.TYPE_19__*, %struct.wined3d_gl_info*, %struct.wined3d_state*) #1

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @glUniform4f(i32, float, float, float, float) #1

declare dso_local i32 @shader_glsl_load_fog_uniform(%struct.wined3d_context*, %struct.wined3d_state*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @glUniform1f(i32, float) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @wine_rb_for_each_entry(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
