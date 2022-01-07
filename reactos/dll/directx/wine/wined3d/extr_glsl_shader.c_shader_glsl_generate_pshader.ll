; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_pshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_pshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_10__*, %struct.wined3d_gl_info* }
%struct.TYPE_10__ = type { i32 }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { i32, %struct.TYPE_12__, %struct.TYPE_8__*, %struct.wined3d_shader_reg_maps }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.wined3d_shader_reg_maps = type { i32, i32, i32, %struct.wined3d_shader_version, i64, i64, i64, %struct.TYPE_7__* }
%struct.wined3d_shader_version = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ps_compile_args = type { i32, i64, i64, i32, i64, i64, i64, i64, i32 }
%struct.ps_np2fixup_info = type { i32, i32, i32* }
%struct.shader_glsl_ctx_priv = type { %struct.ps_np2fixup_info*, %struct.wined3d_string_buffer_list*, %struct.ps_compile_args* }

@ARB_CONSERVATIVE_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"#extension GL_ARB_conservative_depth : enable\0A\00", align 1
@ARB_DERIVATIVE_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"#extension GL_ARB_derivative_control : enable\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"#extension GL_ARB_explicit_attrib_location : enable\0A\00", align 1
@ARB_FRAGMENT_COORD_CONVENTIONS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"#extension GL_ARB_fragment_coord_conventions : enable\0A\00", align 1
@ARB_FRAGMENT_LAYER_VIEWPORT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"#extension GL_ARB_fragment_layer_viewport : enable\0A\00", align 1
@ARB_SHADER_TEXTURE_LOD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"#extension GL_ARB_shader_texture_lod : enable\0A\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"#extension GL_ARB_texture_rectangle : enable\0A\00", align 1
@WINED3DSPR_DEPTHOUTGE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"layout (depth_greater) out float gl_FragDepth;\0A\00", align 1
@WINED3DSPR_DEPTHOUTLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"layout (depth_less) out float gl_FragDepth;\0A\00", align 1
@WINED3D_SHADER_RESOURCE_TEXTURE_2D = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"Non-2D texture is flagged for NP2 texcoord fixup.\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"uniform vec4 %s_samplerNP2Fixup[%u];\0A\00", align 1
@vertexshader = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"uniform struct\0A{\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"    vec4 color;\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"    float density;\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"    float end;\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"    float scale;\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"} ffp_fog;\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"vec4 ffp_varying_diffuse;\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"vec4 ffp_varying_specular;\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"vec4 ffp_texcoord[%u];\0A\00", align 1
@MAX_TEXTURES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"float ffp_varying_fogcoord;\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"vec4 ffp_varying_texcoord[%u];\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"vec4 %s_in[%u];\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"uniform mat2 bumpenv_mat%u;\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"uniform float bumpenv_lum_scale%u;\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"uniform float bumpenv_lum_offset%u;\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"const vec4 srgb_const0 = \00", align 1
@wined3d_srgb_const0 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"const vec4 srgb_const1 = \00", align 1
@wined3d_srgb_const1 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [27 x i8] c"uniform vec4 ycorrection;\0A\00", align 1
@WINED3D_PIXEL_CENTER_INTEGER = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [54 x i8] c"layout(%spixel_center_integer) in vec4 gl_FragCoord;\0A\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"origin_upper_left, \00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"layout(origin_upper_left) in vec4 gl_FragCoord;\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"vec4 vpos;\0A\00", align 1
@WINED3D_CMP_ALWAYS = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [31 x i8] c"uniform float alpha_test_ref;\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"layout(location = %u, index = %u) \00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"out vec4 ps_out%u;\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"layout(location = %u) \00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"Insufficient uniforms to run this shader.\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"layout(early_fragment_tests) in;\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"vpos = gl_FragCoord;\0A\00", align 1
@.str.43 = private unnamed_addr constant [93 x i8] c"vpos = floor(vec4(0, ycorrection[0], 0, 0) + gl_FragCoord * vec4(1, ycorrection[1], 1, 1));\0A\00", align 1
@.str.44 = private unnamed_addr constant [86 x i8] c"vpos = vec4(0, ycorrection[0], 0, 0) + gl_FragCoord * vec4(1, ycorrection[1], 1, 1);\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"ffp_varying_diffuse = gl_Color;\0A\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"ffp_varying_specular = gl_SecondaryColor;\0A\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"ffp_texcoord[%u] = vec4(gl_PointCoord.xy, 0.0, 0.0);\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"ffp_texcoord[%u] = %s[%u];\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"gl_TexCoord\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"ffp_varying_texcoord\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"ffp_texcoord[%u] = vec4(0.0);\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"vec4 T%u = ffp_texcoord[%u];\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"ffp_varying_fogcoord = gl_FogFragCoord;\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer_list*, %struct.wined3d_shader*, %struct.ps_compile_args*, %struct.ps_np2fixup_info*)* @shader_glsl_generate_pshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_pshader(%struct.wined3d_context* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer_list* %2, %struct.wined3d_shader* %3, %struct.ps_compile_args* %4, %struct.ps_np2fixup_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_string_buffer_list*, align 8
  %11 = alloca %struct.wined3d_shader*, align 8
  %12 = alloca %struct.ps_compile_args*, align 8
  %13 = alloca %struct.ps_np2fixup_info*, align 8
  %14 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %15 = alloca %struct.wined3d_shader_version*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_gl_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.shader_glsl_ctx_priv, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ps_np2fixup_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_string_buffer_list* %2, %struct.wined3d_string_buffer_list** %10, align 8
  store %struct.wined3d_shader* %3, %struct.wined3d_shader** %11, align 8
  store %struct.ps_compile_args* %4, %struct.ps_compile_args** %12, align 8
  store %struct.ps_np2fixup_info* %5, %struct.ps_np2fixup_info** %13, align 8
  %29 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %29, i32 0, i32 3
  store %struct.wined3d_shader_reg_maps* %30, %struct.wined3d_shader_reg_maps** %14, align 8
  %31 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %31, i32 0, i32 3
  store %struct.wined3d_shader_version* %32, %struct.wined3d_shader_version** %15, align 8
  %33 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %15, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @shader_glsl_get_prefix(i32 %35)
  store i8* %36, i8** %16, align 8
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %38 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %37, i32 0, i32 1
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %38, align 8
  store %struct.wined3d_gl_info* %39, %struct.wined3d_gl_info** %17, align 8
  %40 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %41 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %40)
  store i64 %41, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %42 = call i32 @memset(%struct.shader_glsl_ctx_priv* %21, i32 0, i32 24)
  %43 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %44 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %21, i32 0, i32 2
  store %struct.ps_compile_args* %43, %struct.ps_compile_args** %44, align 8
  %45 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %13, align 8
  %46 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %21, i32 0, i32 0
  store %struct.ps_np2fixup_info* %45, %struct.ps_np2fixup_info** %46, align 8
  %47 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %10, align 8
  %48 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %21, i32 0, i32 1
  store %struct.wined3d_string_buffer_list* %47, %struct.wined3d_string_buffer_list** %48, align 8
  %49 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %51 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %49, %struct.wined3d_gl_info* %50)
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %54 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %52, %struct.wined3d_gl_info* %53)
  %55 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %56 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @ARB_CONSERVATIVE_DEPTH, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %6
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %64 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %6
  %66 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %67 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @ARB_DERIVATIVE_CONTROL, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %75 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %78 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %85 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @ARB_FRAGMENT_COORD_CONVENTIONS, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %93 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %83
  %95 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %96 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @ARB_FRAGMENT_LAYER_VIEWPORT, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @ARB_SHADER_TEXTURE_LOD, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %115 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %118 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %129 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %130 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %131 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %132 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %128, %struct.wined3d_string_buffer* %129, %struct.wined3d_shader* %130, %struct.wined3d_shader_reg_maps* %131, %struct.shader_glsl_ctx_priv* %21)
  %133 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %134 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @ARB_CONSERVATIVE_DEPTH, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %127
  %141 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %142 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WINED3DSPR_DEPTHOUTGE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %150 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %163

151:                                              ; preds = %140
  %152 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %153 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @WINED3DSPR_DEPTHOUTLE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %161 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %151
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %166 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %241

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %21, i32 0, i32 0
  %171 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %170, align 8
  store %struct.ps_np2fixup_info* %171, %struct.ps_np2fixup_info** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %172

172:                                              ; preds = %221, %169
  %173 = load i32, i32* %19, align 4
  %174 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %175 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %174, i32 0, i32 2
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ult i32 %173, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %172
  %181 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %182 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %181, i32 0, i32 7
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %180
  %191 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %192 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %19, align 4
  %195 = shl i32 1, %194
  %196 = and i32 %193, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %190, %180
  br label %221

199:                                              ; preds = %190
  %200 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %201 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %200, i32 0, i32 7
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load i32, i32* %19, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @WINED3D_SHADER_RESOURCE_TEXTURE_2D, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %221

212:                                              ; preds = %199
  %213 = load i32, i32* %25, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %25, align 4
  %215 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %24, align 8
  %216 = getelementptr inbounds %struct.ps_np2fixup_info, %struct.ps_np2fixup_info* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %213, i32* %220, align 4
  br label %221

221:                                              ; preds = %212, %210, %198
  %222 = load i32, i32* %19, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %172

224:                                              ; preds = %172
  %225 = load i32, i32* %25, align 4
  %226 = add i32 %225, 1
  %227 = lshr i32 %226, 1
  %228 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %24, align 8
  %229 = getelementptr inbounds %struct.ps_np2fixup_info, %struct.ps_np2fixup_info* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %231 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %24, align 8
  %234 = getelementptr inbounds %struct.ps_np2fixup_info, %struct.ps_np2fixup_info* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %236 = load i8*, i8** %16, align 8
  %237 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %24, align 8
  %238 = getelementptr inbounds %struct.ps_np2fixup_info, %struct.ps_np2fixup_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %235, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %236, i32 %239)
  br label %241

241:                                              ; preds = %224, %164
  %242 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %15, align 8
  %243 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %244, 3
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %248 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @vertexshader, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %324

252:                                              ; preds = %246, %241
  %253 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %254 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %255 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %256 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %257 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %258 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %257, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %259 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %260 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %261 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %262 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %263 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %264 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %265 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %266 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %252
  %269 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %270 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %269, i32 0)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %274 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %273, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %268
  %276 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %277 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %276, i32 1)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %281 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %280, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %275
  %283 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %284 = load i32, i32* @MAX_TEXTURES, align 4
  %285 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %283, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %284)
  %286 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %287 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %286, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %323

288:                                              ; preds = %252
  %289 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %290 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %289, i32 0)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %288
  %293 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %294 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %295 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %296 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_in_varying(%struct.wined3d_gl_info* %293, %struct.wined3d_string_buffer* %294, i32 %297, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  br label %299

299:                                              ; preds = %292, %288
  %300 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %301 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %300, i32 1)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %305 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %306 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %307 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_in_varying(%struct.wined3d_gl_info* %304, %struct.wined3d_string_buffer* %305, i32 %308, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %310

310:                                              ; preds = %303, %299
  %311 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %312 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %313 = load i32, i32* @FALSE, align 4
  %314 = load i32, i32* @MAX_TEXTURES, align 4
  %315 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_in_varying(%struct.wined3d_gl_info* %311, %struct.wined3d_string_buffer* %312, i32 %313, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 %314)
  %316 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %317 = load i32, i32* @MAX_TEXTURES, align 4
  %318 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %316, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %317)
  %319 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %320 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %321 = load i32, i32* @FALSE, align 4
  %322 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) @declare_in_varying(%struct.wined3d_gl_info* %319, %struct.wined3d_string_buffer* %320, i32 %321, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %323

323:                                              ; preds = %310, %282
  br label %324

324:                                              ; preds = %323, %246
  %325 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %15, align 8
  %326 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp sge i32 %327, 3
  br i1 %328, label %329, label %371

329:                                              ; preds = %324
  %330 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %15, align 8
  %331 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %334 = call i32 @vec4_varyings(i32 %332, %struct.wined3d_gl_info* %333)
  %335 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %336 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %335, i32 0, i32 2
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @min(i32 %334, i32 %339)
  store i32 %340, i32* %26, align 4
  %341 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %342 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @vertexshader, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %366

346:                                              ; preds = %329
  %347 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %348 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %347, i32 0, i32 6
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %366

351:                                              ; preds = %346
  %352 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %353 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %354 = load i32, i32* %26, align 4
  %355 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %356 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %15, align 8
  %361 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp sge i32 %362, 4
  %364 = zext i1 %363 to i32
  %365 = call i32 @shader_glsl_declare_shader_inputs(%struct.wined3d_gl_info* %352, %struct.wined3d_string_buffer* %353, i32 %354, i32 %359, i32 %364)
  br label %366

366:                                              ; preds = %351, %346, %329
  %367 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %368 = load i8*, i8** %16, align 8
  %369 = load i32, i32* %26, align 4
  %370 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %367, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %368, i32 %369)
  br label %371

371:                                              ; preds = %366, %324
  store i32 0, i32* %19, align 4
  %372 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %373 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  store i32 %374, i32* %23, align 4
  br label %375

375:                                              ; preds = %406, %371
  %376 = load i32, i32* %23, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %411

378:                                              ; preds = %375
  %379 = load i32, i32* %23, align 4
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  br label %406

383:                                              ; preds = %378
  %384 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %385 = load i32, i32* %19, align 4
  %386 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %384, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %385)
  %387 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %388 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %19, align 4
  %391 = shl i32 1, %390
  %392 = and i32 %389, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %383
  %395 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %396 = load i32, i32* %19, align 4
  %397 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %395, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i32 %396)
  %398 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %399 = load i32, i32* %19, align 4
  %400 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %398, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i32 %399)
  %401 = load i32, i32* %20, align 4
  %402 = add i32 %401, 1
  store i32 %402, i32* %20, align 4
  br label %403

403:                                              ; preds = %394, %383
  %404 = load i32, i32* %20, align 4
  %405 = add i32 %404, 1
  store i32 %405, i32* %20, align 4
  br label %406

406:                                              ; preds = %403, %382
  %407 = load i32, i32* %23, align 4
  %408 = ashr i32 %407, 1
  store i32 %408, i32* %23, align 4
  %409 = load i32, i32* %19, align 4
  %410 = add i32 %409, 1
  store i32 %410, i32* %19, align 4
  br label %375

411:                                              ; preds = %375
  %412 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %413 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %412, i32 0, i32 7
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %411
  %417 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %418 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %417, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %419 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %420 = load i32, i32* @wined3d_srgb_const0, align 4
  %421 = call i32 @shader_glsl_append_imm_vec4(%struct.wined3d_string_buffer* %419, i32 %420)
  %422 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %423 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %422, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %424 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %425 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  %426 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %427 = load i32, i32* @wined3d_srgb_const1, align 4
  %428 = call i32 @shader_glsl_append_imm_vec4(%struct.wined3d_string_buffer* %426, i32 %427)
  %429 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %430 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %429, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %431

431:                                              ; preds = %416, %411
  %432 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %433 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %432, i32 0, i32 4
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %431
  %437 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %438 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %437, i32 0, i32 5
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %504

441:                                              ; preds = %436, %431
  %442 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %443 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %442, i32 0, i32 5
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %454, label %446

446:                                              ; preds = %441
  %447 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %448 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %447, i32 0, i32 0
  %449 = load i64*, i64** %448, align 8
  %450 = load i64, i64* @ARB_FRAGMENT_COORD_CONVENTIONS, align 8
  %451 = getelementptr inbounds i64, i64* %449, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %459, label %454

454:                                              ; preds = %446, %441
  %455 = load i32, i32* %20, align 4
  %456 = add i32 %455, 1
  store i32 %456, i32* %20, align 4
  %457 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %458 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %457, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  br label %459

459:                                              ; preds = %454, %446
  %460 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %461 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %460, i32 0, i32 4
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %503

464:                                              ; preds = %459
  %465 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %466 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %465, i32 0, i32 0
  %467 = load i64*, i64** %466, align 8
  %468 = load i64, i64* @ARB_FRAGMENT_COORD_CONVENTIONS, align 8
  %469 = getelementptr inbounds i64, i64* %467, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %500

472:                                              ; preds = %464
  %473 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %474 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %473, i32 0, i32 0
  %475 = load %struct.TYPE_10__*, %struct.TYPE_10__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @WINED3D_PIXEL_CENTER_INTEGER, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %490

481:                                              ; preds = %472
  %482 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %483 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %484 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %483, i32 0, i32 6
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  %487 = zext i1 %486 to i64
  %488 = select i1 %486, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)
  %489 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %482, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i8* %488)
  br label %499

490:                                              ; preds = %472
  %491 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %492 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %491, i32 0, i32 6
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %490
  %496 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %497 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %496, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i64 0, i64 0))
  br label %498

498:                                              ; preds = %495, %490
  br label %499

499:                                              ; preds = %498, %481
  br label %500

500:                                              ; preds = %499, %464
  %501 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %502 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %501, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  br label %503

503:                                              ; preds = %500, %459
  br label %504

504:                                              ; preds = %503, %436
  %505 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %506 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = add nsw i64 %507, 1
  %509 = load i64, i64* @WINED3D_CMP_ALWAYS, align 8
  %510 = icmp ne i64 %508, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %504
  %512 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %513 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %512, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0))
  br label %514

514:                                              ; preds = %511, %504
  %515 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %516 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %576, label %518

518:                                              ; preds = %514
  %519 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %520 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %519, i32 0, i32 5
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %551

523:                                              ; preds = %518
  store i32 0, i32* %19, align 4
  br label %524

524:                                              ; preds = %547, %523
  %525 = load i32, i32* %19, align 4
  %526 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %527 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = mul nsw i32 %529, 2
  %531 = icmp ult i32 %525, %530
  br i1 %531, label %532, label %550

532:                                              ; preds = %524
  %533 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %534 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %543

536:                                              ; preds = %532
  %537 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %538 = load i32, i32* %19, align 4
  %539 = udiv i32 %538, 2
  %540 = load i32, i32* %19, align 4
  %541 = urem i32 %540, 2
  %542 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %537, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0), i32 %539, i32 %541)
  br label %543

543:                                              ; preds = %536, %532
  %544 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %545 = load i32, i32* %19, align 4
  %546 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %545)
  br label %547

547:                                              ; preds = %543
  %548 = load i32, i32* %19, align 4
  %549 = add i32 %548, 1
  store i32 %549, i32* %19, align 4
  br label %524

550:                                              ; preds = %524
  br label %575

551:                                              ; preds = %518
  store i32 0, i32* %19, align 4
  br label %552

552:                                              ; preds = %571, %551
  %553 = load i32, i32* %19, align 4
  %554 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %555 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = icmp ult i32 %553, %557
  br i1 %558, label %559, label %574

559:                                              ; preds = %552
  %560 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %561 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %567

563:                                              ; preds = %559
  %564 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %565 = load i32, i32* %19, align 4
  %566 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %564, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 %565)
  br label %567

567:                                              ; preds = %563, %559
  %568 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %569 = load i32, i32* %19, align 4
  %570 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %568, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %569)
  br label %571

571:                                              ; preds = %567
  %572 = load i32, i32* %19, align 4
  %573 = add i32 %572, 1
  store i32 %573, i32* %19, align 4
  br label %552

574:                                              ; preds = %552
  br label %575

575:                                              ; preds = %574, %550
  br label %576

576:                                              ; preds = %575, %514
  %577 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %578 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %577, i32 0, i32 2
  %579 = load %struct.TYPE_8__*, %struct.TYPE_8__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = load i32, i32* %20, align 4
  %583 = zext i32 %582 to i64
  %584 = add nsw i64 %581, %583
  %585 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %586 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %586, i32 0, i32 2
  %588 = load i64, i64* %587, align 8
  %589 = icmp sge i64 %584, %588
  br i1 %589, label %590, label %592

590:                                              ; preds = %576
  %591 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0))
  br label %592

592:                                              ; preds = %590, %576
  %593 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %594 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %592
  %600 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %601 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %600, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  br label %602

602:                                              ; preds = %599, %592
  %603 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %604 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %603, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0))
  %605 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %606 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %605, i32 0, i32 4
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %637

609:                                              ; preds = %602
  %610 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %611 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %610, i32 0, i32 0
  %612 = load i64*, i64** %611, align 8
  %613 = load i64, i64* @ARB_FRAGMENT_COORD_CONVENTIONS, align 8
  %614 = getelementptr inbounds i64, i64* %612, i64 %613
  %615 = load i64, i64* %614, align 8
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %609
  %618 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %619 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %618, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0))
  br label %636

620:                                              ; preds = %609
  %621 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %622 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %621, i32 0, i32 0
  %623 = load %struct.TYPE_10__*, %struct.TYPE_10__** %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 4
  %626 = load i32, i32* @WINED3D_PIXEL_CENTER_INTEGER, align 4
  %627 = and i32 %625, %626
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %632

629:                                              ; preds = %620
  %630 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %631 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %630, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.43, i64 0, i64 0))
  br label %635

632:                                              ; preds = %620
  %633 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %634 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %633, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.44, i64 0, i64 0))
  br label %635

635:                                              ; preds = %632, %629
  br label %636

636:                                              ; preds = %635, %617
  br label %637

637:                                              ; preds = %636, %602
  %638 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %639 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %638, i32 0, i32 3
  %640 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = icmp slt i32 %641, 3
  br i1 %642, label %649, label %643

643:                                              ; preds = %637
  %644 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %645 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %644, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* @vertexshader, align 8
  %648 = icmp ne i64 %646, %647
  br i1 %648, label %649, label %727

649:                                              ; preds = %643, %637
  %650 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %651 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 8
  store i32 %652, i32* %28, align 4
  %653 = load i64, i64* %18, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %670

655:                                              ; preds = %649
  %656 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %657 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %656, i32 0)
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %655
  %660 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %661 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %660, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0))
  br label %662

662:                                              ; preds = %659, %655
  %663 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %664 = call i64 @glsl_is_color_reg_read(%struct.wined3d_shader* %663, i32 1)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %669

666:                                              ; preds = %662
  %667 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %668 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %667, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0))
  br label %669

669:                                              ; preds = %666, %662
  br label %670

670:                                              ; preds = %669, %649
  store i32 0, i32* %27, align 4
  br label %671

671:                                              ; preds = %715, %670
  %672 = load i32, i32* %28, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %720

674:                                              ; preds = %671
  %675 = load i32, i32* %28, align 4
  %676 = and i32 %675, 1
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %714

678:                                              ; preds = %674
  %679 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %680 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %679, i32 0, i32 4
  %681 = load i64, i64* %680, align 8
  %682 = icmp ne i64 %681, 0
  br i1 %682, label %683, label %687

683:                                              ; preds = %678
  %684 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %685 = load i32, i32* %27, align 4
  %686 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %684, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.47, i64 0, i64 0), i32 %685)
  br label %709

687:                                              ; preds = %678
  %688 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %689 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %688, i32 0, i32 3
  %690 = load i32, i32* %689, align 8
  %691 = load i32, i32* %27, align 4
  %692 = shl i32 1, %691
  %693 = and i32 %690, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %704

695:                                              ; preds = %687
  %696 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %697 = load i32, i32* %27, align 4
  %698 = load i64, i64* %18, align 8
  %699 = icmp ne i64 %698, 0
  %700 = zext i1 %699 to i64
  %701 = select i1 %699, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0)
  %702 = load i32, i32* %27, align 4
  %703 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %696, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 %697, i8* %701, i32 %702)
  br label %708

704:                                              ; preds = %687
  %705 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %706 = load i32, i32* %27, align 4
  %707 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %705, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 %706)
  br label %708

708:                                              ; preds = %704, %695
  br label %709

709:                                              ; preds = %708, %683
  %710 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %711 = load i32, i32* %27, align 4
  %712 = load i32, i32* %27, align 4
  %713 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %710, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0), i32 %711, i32 %712)
  br label %714

714:                                              ; preds = %709, %674
  br label %715

715:                                              ; preds = %714
  %716 = load i32, i32* %28, align 4
  %717 = ashr i32 %716, 1
  store i32 %717, i32* %28, align 4
  %718 = load i32, i32* %27, align 4
  %719 = add i32 %718, 1
  store i32 %719, i32* %27, align 4
  br label %671

720:                                              ; preds = %671
  %721 = load i64, i64* %18, align 8
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %720
  %724 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %725 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %724, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0))
  br label %726

726:                                              ; preds = %723, %720
  br label %727

727:                                              ; preds = %726, %643
  %728 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %729 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %728, i32 0, i32 3
  %730 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 4
  %732 = icmp sge i32 %731, 3
  br i1 %732, label %733, label %748

733:                                              ; preds = %727
  %734 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %735 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %736 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %737 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %736, i32 0, i32 0
  %738 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %739 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %740 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %741 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %742 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = icmp sge i32 %744, 4
  %746 = zext i1 %745 to i32
  %747 = call i32 @shader_glsl_input_pack(%struct.wined3d_shader* %734, %struct.wined3d_string_buffer* %735, i32* %737, %struct.wined3d_shader_reg_maps* %738, %struct.ps_compile_args* %739, %struct.wined3d_gl_info* %740, i32 %746)
  br label %748

748:                                              ; preds = %733, %727
  %749 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %750 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %751 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %752 = call i32 @shader_generate_code(%struct.wined3d_shader* %749, %struct.wined3d_string_buffer* %750, %struct.wined3d_shader_reg_maps* %751, %struct.shader_glsl_ctx_priv* %21, i32* null, i32* null)
  %753 = call i64 @FAILED(i32 %752)
  %754 = icmp ne i64 %753, 0
  br i1 %754, label %755, label %756

755:                                              ; preds = %748
  store i32 0, i32* %7, align 4
  br label %783

756:                                              ; preds = %748
  %757 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %758 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %757, i32 0, i32 3
  %759 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = icmp slt i32 %760, 4
  br i1 %761, label %762, label %768

762:                                              ; preds = %756
  %763 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %764 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %765 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %766 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %767 = call i32 @shader_glsl_generate_ps_epilogue(%struct.wined3d_gl_info* %763, %struct.wined3d_string_buffer* %764, %struct.wined3d_shader* %765, %struct.ps_compile_args* %766)
  br label %768

768:                                              ; preds = %762, %756
  %769 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %770 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %769, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  %771 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %772 = call i32 @glCreateShader(i32 %771)
  %773 = call i32 @GL_EXTCALL(i32 %772)
  store i32 %773, i32* %22, align 4
  %774 = load i32, i32* %22, align 4
  %775 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i32 %774)
  %776 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  %777 = load i32, i32* %22, align 4
  %778 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %779 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 4
  %781 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %776, i32 %777, i32 %780)
  %782 = load i32, i32* %22, align 4
  store i32 %782, i32* %7, align 4
  br label %783

783:                                              ; preds = %768, %755
  %784 = load i32, i32* %7, align 4
  ret i32 %784
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @glsl_is_color_reg_read(%struct.wined3d_shader*, i32) #1

declare dso_local i32 @declare_in_varying(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vec4_varyings(i32, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_declare_shader_inputs(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_append_imm_vec4(%struct.wined3d_string_buffer*, i32) #1

declare dso_local i32 @shader_glsl_input_pack(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, i32*, %struct.wined3d_shader_reg_maps*, %struct.ps_compile_args*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @shader_glsl_generate_ps_epilogue(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.ps_compile_args*) #1

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
