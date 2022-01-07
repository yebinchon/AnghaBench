; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ffp_vertex_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ffp_vertex_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attrib_info = type { [6 x i8], [24 x i8] }
%struct.shader_glsl_priv = type { i64, %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_ffp_vs_settings = type { i32, i32*, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.wined3d_gl_info = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.attrib_info.0 = type { i8*, i8* }

@shader_glsl_generate_ffp_vertex_shader.attrib_info = internal constant [7 x %struct.attrib_info] [%struct.attrib_info { [6 x i8] c"vec4\00\00", [24 x i8] c"ffp_attrib_position\00\00\00\00\00" }, %struct.attrib_info { [6 x i8] c"vec4\00\00", [24 x i8] c"ffp_attrib_blendweight\00\00" }, %struct.attrib_info { [6 x i8] c"vec4\00\00", [24 x i8] c"ffp_attrib_blendindices\00" }, %struct.attrib_info { [6 x i8] c"vec3\00\00", [24 x i8] c"ffp_attrib_normal\00\00\00\00\00\00\00" }, %struct.attrib_info { [6 x i8] c"float\00", [24 x i8] c"ffp_attrib_psize\00\00\00\00\00\00\00\00" }, %struct.attrib_info { [6 x i8] c"vec4\00\00", [24 x i8] c"ffp_attrib_diffuse\00\00\00\00\00\00" }, %struct.attrib_info { [6 x i8] c"vec4\00\00", [24 x i8] c"ffp_attrib_specular\00\00\00\00\00" }], align 16
@.str = private unnamed_addr constant [53 x i8] c"#extension GL_ARB_explicit_attrib_location : enable\0A\00", align 1
@WINED3D_FFP_ATTRIBS_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vec4\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"layout(location = %u) \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s vs_in%u;\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"uniform mat4 ffp_modelview_matrix[%u];\0A\00", align 1
@MAX_VERTEX_INDEX_BLENDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"uniform mat3 ffp_normal_matrix[%u];\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"uniform mat4 ffp_projection_matrix;\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"uniform mat4 ffp_texture_matrix[%u];\0A\00", align 1
@MAX_TEXTURES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"uniform struct\0A{\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"    vec4 emissive;\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"    vec4 ambient;\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"    vec4 diffuse;\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"    vec4 specular;\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"    float shininess;\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"} ffp_material;\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"uniform vec3 ffp_light_ambient;\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"    vec4 position;\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"    vec3 direction;\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"    float range;\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"    float falloff;\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"    float c_att;\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"    float l_att;\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"    float q_att;\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"    float cos_htheta;\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"    float cos_hphi;\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"} ffp_light[%u];\0A\00", align 1
@MAX_ACTIVE_LIGHTS = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"    float size;\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"    float size_min;\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"    float size_max;\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"} ffp_point;\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"vec4 ffp_varying_diffuse;\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"vec4 ffp_varying_specular;\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"vec4 ffp_varying_texcoord[%u];\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"float ffp_varying_fogcoord;\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"uniform vec4 clip_planes[%u];\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"\0Avoid main()\0A{\0A\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"float m;\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"vec3 r;\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"%s %s = vs_in%u%s;\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c".zyxw\00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"vec4 ffp_attrib_texcoord%u = vs_in%u;\0A\00", align 1
@WINED3D_FFP_TEXCOORD0 = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [35 x i8] c"ffp_attrib_blendweight[%u] = 1.0;\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"vec4 ec_pos = vec4(ffp_attrib_position.xyz, 1.0);\0A\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"gl_Position = ffp_projection_matrix * ec_pos;\0A\00", align 1
@.str.46 = private unnamed_addr constant [73 x i8] c"if (ffp_attrib_position.w != 0.0) gl_Position /= ffp_attrib_position.w;\0A\00", align 1
@.str.47 = private unnamed_addr constant [59 x i8] c"ffp_attrib_blendweight[%u] -= ffp_attrib_blendweight[%u];\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"vec4 ec_pos = vec4(0.0);\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"int(ffp_attrib_blendindices[%u] + 0.1)\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.51 = private unnamed_addr constant [90 x i8] c"ec_pos += ffp_attrib_blendweight[%u] * (ffp_modelview_matrix[%s] * ffp_attrib_position);\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"vec4 ec_pos = ffp_attrib_position;\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"gl_ClipVertex = ec_pos;\0A\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"gl_ClipDistance[%u] = dot(ec_pos, clip_planes[%u]);\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"ec_pos /= ec_pos.w;\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"vec3 normal = vec3(0.0);\0A\00", align 1
@.str.57 = private unnamed_addr constant [85 x i8] c"normal += ffp_attrib_blendweight[%u] * (ffp_normal_matrix[%s] * ffp_attrib_normal);\0A\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"normal = ffp_attrib_normal;\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"normal = normalize(normal);\0A\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"gl_FrontColor = ffp_varying_diffuse;\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"gl_FrontSecondaryColor = ffp_varying_specular;\0A\00", align 1
@.str.62 = private unnamed_addr constant [61 x i8] c"ffp_varying_diffuse = clamp(ffp_varying_diffuse, 0.0, 1.0);\0A\00", align 1
@.str.63 = private unnamed_addr constant [63 x i8] c"ffp_varying_specular = clamp(ffp_varying_specular, 0.0, 1.0);\0A\00", align 1
@.str.64 = private unnamed_addr constant [76 x i8] c"ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * ffp_attrib_texcoord%u;\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"ffp_varying_texcoord[%u] = vec4(0.0);\0A\00", align 1
@.str.66 = private unnamed_addr constant [72 x i8] c"ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * vec4(normal, 1.0);\0A\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * ec_pos;\0A\00", align 1
@.str.68 = private unnamed_addr constant [104 x i8] c"ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * vec4(reflect(normalize(ec_pos.xyz), normal), 1.0);\0A\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"r = reflect(normalize(ec_pos.xyz), normal);\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"m = 2.0 * length(vec3(r.x, r.y, r.z + 1.0));\0A\00", align 1
@.str.71 = private unnamed_addr constant [99 x i8] c"ffp_varying_texcoord[%u] = ffp_texture_matrix[%u] * vec4(r.x / m + 0.5, r.y / m + 0.5, 0.0, 1.0);\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"Unhandled texgen %#x.\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"gl_TexCoord[%u] = ffp_varying_texcoord[%u];\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"ffp_varying_fogcoord = ffp_attrib_specular.w * 255.0;\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"ffp_varying_fogcoord = length(ec_pos.xyz);\0A\00", align 1
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@.str.76 = private unnamed_addr constant [39 x i8] c"ffp_varying_fogcoord = gl_Position.z;\0A\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"ffp_varying_fogcoord = gl_Position.z * 0.5 + 0.5;\0A\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"ffp_varying_fogcoord = ec_pos.z;\0A\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"ffp_varying_fogcoord = abs(ec_pos.z);\0A\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"Unhandled fog mode %#x.\0A\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"gl_FogFragCoord = ffp_varying_fogcoord;\0A\00", align 1
@.str.82 = private unnamed_addr constant [131 x i8] c"gl_PointSize = %s / sqrt(ffp_point.c_att + ffp_point.l_att * length(ec_pos.xyz) + ffp_point.q_att * dot(ec_pos.xyz, ec_pos.xyz));\0A\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"ffp_attrib_psize\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"ffp_point.size\00", align 1
@.str.85 = private unnamed_addr constant [77 x i8] c"gl_PointSize = clamp(gl_PointSize, ffp_point.size_min, ffp_point.size_max);\0A\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_glsl_priv*, %struct.wined3d_ffp_vs_settings*, %struct.wined3d_gl_info*)* @shader_glsl_generate_ffp_vertex_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_ffp_vertex_shader(%struct.shader_glsl_priv* %0, %struct.wined3d_ffp_vs_settings* %1, %struct.wined3d_gl_info* %2) #0 {
  %4 = alloca %struct.shader_glsl_priv*, align 8
  %5 = alloca %struct.wined3d_ffp_vs_settings*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wined3d_string_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %4, align 8
  store %struct.wined3d_ffp_vs_settings* %1, %struct.wined3d_ffp_vs_settings** %5, align 8
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %6, align 8
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %18 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %4, align 8
  %20 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %19, i32 0, i32 1
  store %struct.wined3d_string_buffer* %20, %struct.wined3d_string_buffer** %8, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %26 = call i32 @string_buffer_clear(%struct.wined3d_string_buffer* %25)
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %29 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %27, %struct.wined3d_gl_info* %28)
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %31 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %3
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @WINED3D_FFP_ATTRIBS_COUNT, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ARRAY_SIZE(%struct.attrib_info.0* bitcast ([7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info to %struct.attrib_info.0*))
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [7 x %struct.attrib_info], [7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.attrib_info, %struct.attrib_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %49, i64 0, i64 0
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i8* [ %50, %45 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %51 ]
  store i8* %53, i8** %14, align 8
  %54 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %55 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %63 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %64 = call i32 @get_attribute_keyword(%struct.wined3d_gl_info* %63)
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %73 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %75 = load i32, i32* @MAX_VERTEX_INDEX_BLENDS, align 4
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %78 = load i32, i32* @MAX_VERTEX_INDEX_BLENDS, align 4
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %83 = load i32, i32* @MAX_TEXTURES, align 4
  %84 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %85 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %87 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %89 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %90 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %91 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %92 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %93 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %94 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %95 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %96 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %98 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %102 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %105 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %108 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %109 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %110 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %112 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %113 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %114 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %115 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %117 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %118 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %119 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %121 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %122 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %123 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %124 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %127 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %128 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %129 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %128)
  %130 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %131 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %71
  %135 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %136 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %137 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %138 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %139 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %140 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %141 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %142 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %143 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %144 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %145 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %146 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %147 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %148 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %149 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %150 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  br label %151

151:                                              ; preds = %134, %71
  %152 = load i64, i64* %7, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %156 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0))
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %158 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0))
  %159 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %160 = load i32, i32* @MAX_TEXTURES, align 4
  %161 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %160)
  %162 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %163 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0))
  br label %198

164:                                              ; preds = %151
  %165 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %166 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %165, i32 0, i32 13
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %171 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %172 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %169, %164
  %177 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %178 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %179 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %180 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i64, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %177, %struct.wined3d_string_buffer* %178, i64 %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0))
  %183 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %184 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %185 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %186 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %185, i32 0, i32 14
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i64, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %183, %struct.wined3d_string_buffer* %184, i64 %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0))
  %189 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %190 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %191 = load i64, i64* @FALSE, align 8
  %192 = load i32, i32* @MAX_TEXTURES, align 4
  %193 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i64, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %189, %struct.wined3d_string_buffer* %190, i64 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %192)
  %194 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %195 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %196 = load i64, i64* @FALSE, align 8
  %197 = call i32 (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i64, i8*, ...) @declare_out_varying(%struct.wined3d_gl_info* %194, %struct.wined3d_string_buffer* %195, i64 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0))
  br label %198

198:                                              ; preds = %176, %154
  %199 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %200 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0))
  %201 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %202 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %203 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %204 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %205

205:                                              ; preds = %241, %198
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @ARRAY_SIZE(%struct.attrib_info.0* bitcast ([7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info to %struct.attrib_info.0*))
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %209, label %244

209:                                              ; preds = %205
  %210 = load i32, i32* %12, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [7 x %struct.attrib_info], [7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.attrib_info, %struct.attrib_info* %212, i32 0, i32 1
  %214 = getelementptr inbounds [24 x i8], [24 x i8]* %213, i64 0, i64 0
  %215 = load i8, i8* %214, align 2
  %216 = icmp ne i8 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %209
  %218 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %219 = load i32, i32* %12, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [7 x %struct.attrib_info], [7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.attrib_info, %struct.attrib_info* %221, i32 0, i32 0
  %223 = getelementptr inbounds [6 x i8], [6 x i8]* %222, i64 0, i64 0
  %224 = load i32, i32* %12, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [7 x %struct.attrib_info], [7 x %struct.attrib_info]* @shader_glsl_generate_ffp_vertex_shader.attrib_info, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.attrib_info, %struct.attrib_info* %226, i32 0, i32 1
  %228 = getelementptr inbounds [24 x i8], [24 x i8]* %227, i64 0, i64 0
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %231 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = shl i32 1, %233
  %235 = and i32 %232, %234
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0)
  %239 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i8* %223, i8* %228, i32 %229, i8* %238)
  br label %240

240:                                              ; preds = %217, %209
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %12, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %205

244:                                              ; preds = %205
  store i32 0, i32* %12, align 4
  br label %245

245:                                              ; preds = %284, %244
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @MAX_TEXTURES, align 4
  %248 = icmp ult i32 %246, %247
  br i1 %248, label %249, label %287

249:                                              ; preds = %245
  %250 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %251 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 65535
  store i32 %257, i32* %15, align 4
  %258 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %259 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, -65536
  %266 = icmp eq i32 %265, 133
  br i1 %266, label %267, label %283

267:                                              ; preds = %249
  %268 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %269 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = shl i32 1, %271
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %267
  %276 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %15, align 4
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* @WINED3D_FFP_TEXCOORD0, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %276, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i32 %277, i64 %281)
  br label %283

283:                                              ; preds = %275, %267, %249
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %12, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %12, align 4
  br label %245

287:                                              ; preds = %245
  %288 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %289 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %290 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %288, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i32 %291)
  %293 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %294 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %293, i32 0, i32 7
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %287
  %298 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %299 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %298, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0))
  %300 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %301 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %300, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0))
  %302 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %303 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %302, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.46, i64 0, i64 0))
  br label %391

304:                                              ; preds = %287
  %305 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %306 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %305, i32 0, i32 11
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %354, label %309

309:                                              ; preds = %304
  store i32 0, i32* %12, align 4
  br label %310

310:                                              ; preds = %323, %309
  %311 = load i32, i32* %12, align 4
  %312 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %313 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = icmp ult i32 %311, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %310
  %317 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %318 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %319 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %12, align 4
  %322 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %317, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.47, i64 0, i64 0), i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %316
  %324 = load i32, i32* %12, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %12, align 4
  br label %310

326:                                              ; preds = %310
  %327 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %328 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %327, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %329

329:                                              ; preds = %350, %326
  %330 = load i32, i32* %12, align 4
  %331 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %332 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %333, 1
  %335 = icmp ult i32 %330, %334
  br i1 %335, label %336, label %353

336:                                              ; preds = %329
  %337 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %338 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %339 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %338, i32 0, i32 10
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)
  %344 = load i32, i32* %12, align 4
  %345 = call i32 @sprintf(i8* %337, i8* %343, i32 %344)
  %346 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %347 = load i32, i32* %12, align 4
  %348 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %349 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %346, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.51, i64 0, i64 0), i32 %347, i8* %348)
  br label %350

350:                                              ; preds = %336
  %351 = load i32, i32* %12, align 4
  %352 = add i32 %351, 1
  store i32 %352, i32* %12, align 4
  br label %329

353:                                              ; preds = %329
  br label %357

354:                                              ; preds = %304
  %355 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %356 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %355, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0))
  br label %357

357:                                              ; preds = %354, %353
  %358 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %359 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %358, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0))
  %360 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %361 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %360, i32 0, i32 13
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %388

364:                                              ; preds = %357
  %365 = load i64, i64* %7, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %369 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %368, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0))
  br label %387

370:                                              ; preds = %364
  store i32 0, i32* %12, align 4
  br label %371

371:                                              ; preds = %383, %370
  %372 = load i32, i32* %12, align 4
  %373 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %374 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp ult i32 %372, %376
  br i1 %377, label %378, label %386

378:                                              ; preds = %371
  %379 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %12, align 4
  %382 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %379, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.54, i64 0, i64 0), i32 %380, i32 %381)
  br label %383

383:                                              ; preds = %378
  %384 = load i32, i32* %12, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %12, align 4
  br label %371

386:                                              ; preds = %371
  br label %387

387:                                              ; preds = %386, %367
  br label %388

388:                                              ; preds = %387, %357
  %389 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %390 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %389, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0))
  br label %391

391:                                              ; preds = %388, %297
  %392 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %393 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %392, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i64 0, i64 0))
  %394 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %395 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %394, i32 0, i32 12
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %441

398:                                              ; preds = %391
  %399 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %400 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %399, i32 0, i32 11
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %429, label %403

403:                                              ; preds = %398
  store i32 0, i32* %12, align 4
  br label %404

404:                                              ; preds = %425, %403
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %407 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, 1
  %410 = icmp ult i32 %405, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %404
  %412 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %413 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %414 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %413, i32 0, i32 10
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)
  %419 = load i32, i32* %12, align 4
  %420 = call i32 @sprintf(i8* %412, i8* %418, i32 %419)
  %421 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %422 = load i32, i32* %12, align 4
  %423 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %424 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %421, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.57, i64 0, i64 0), i32 %422, i8* %423)
  br label %425

425:                                              ; preds = %411
  %426 = load i32, i32* %12, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %12, align 4
  br label %404

428:                                              ; preds = %404
  br label %432

429:                                              ; preds = %398
  %430 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %431 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %430, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0))
  br label %432

432:                                              ; preds = %429, %428
  %433 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %434 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %433, i32 0, i32 9
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %432
  %438 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %439 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %438, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0))
  br label %440

440:                                              ; preds = %437, %432
  br label %441

441:                                              ; preds = %440, %391
  %442 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %443 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %444 = load i64, i64* %10, align 8
  %445 = call i32 @shader_glsl_ffp_vertex_lighting(%struct.wined3d_string_buffer* %442, %struct.wined3d_ffp_vs_settings* %443, i64 %444)
  %446 = load i64, i64* %7, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %441
  %449 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %450 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %449, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i64 0, i64 0))
  %451 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %452 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %451, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i64 0, i64 0))
  br label %458

453:                                              ; preds = %441
  %454 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %455 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %454, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.62, i64 0, i64 0))
  %456 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %457 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %456, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.63, i64 0, i64 0))
  br label %458

458:                                              ; preds = %453, %448
  store i32 0, i32* %12, align 4
  br label %459

459:                                              ; preds = %545, %458
  %460 = load i32, i32* %12, align 4
  %461 = load i32, i32* @MAX_TEXTURES, align 4
  %462 = icmp ult i32 %460, %461
  br i1 %462, label %463, label %548

463:                                              ; preds = %459
  %464 = load i64, i64* %7, align 8
  store i64 %464, i64* %16, align 8
  %465 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %466 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %12, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = and i32 %471, -65536
  switch i32 %472, label %527 [
    i32 133, label %473
    i32 136, label %503
    i32 135, label %508
    i32 134, label %513
    i32 132, label %518
  ]

473:                                              ; preds = %463
  %474 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %475 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* %12, align 4
  %478 = shl i32 1, %477
  %479 = and i32 %476, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %473
  %482 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %483 = load i32, i32* %12, align 4
  %484 = load i32, i32* %12, align 4
  %485 = load i32, i32* %12, align 4
  %486 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %482, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.64, i64 0, i64 0), i32 %483, i32 %484, i32 %485)
  br label %502

487:                                              ; preds = %473
  %488 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %489 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %493 = call i32 @wined3d_max_compat_varyings(%struct.wined3d_gl_info* %492)
  %494 = icmp sge i32 %491, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %487
  %496 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %497 = load i32, i32* %12, align 4
  %498 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %496, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i64 0, i64 0), i32 %497)
  br label %501

499:                                              ; preds = %487
  %500 = load i64, i64* @FALSE, align 8
  store i64 %500, i64* %16, align 8
  br label %501

501:                                              ; preds = %499, %495
  br label %502

502:                                              ; preds = %501, %481
  br label %536

503:                                              ; preds = %463
  %504 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %505 = load i32, i32* %12, align 4
  %506 = load i32, i32* %12, align 4
  %507 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %504, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.66, i64 0, i64 0), i32 %505, i32 %506)
  br label %536

508:                                              ; preds = %463
  %509 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %510 = load i32, i32* %12, align 4
  %511 = load i32, i32* %12, align 4
  %512 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %509, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.67, i64 0, i64 0), i32 %510, i32 %511)
  br label %536

513:                                              ; preds = %463
  %514 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %515 = load i32, i32* %12, align 4
  %516 = load i32, i32* %12, align 4
  %517 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %514, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.68, i64 0, i64 0), i32 %515, i32 %516)
  br label %536

518:                                              ; preds = %463
  %519 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %520 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %519, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0))
  %521 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %522 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %521, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i64 0, i64 0))
  %523 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %524 = load i32, i32* %12, align 4
  %525 = load i32, i32* %12, align 4
  %526 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %523, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.71, i64 0, i64 0), i32 %524, i32 %525)
  br label %536

527:                                              ; preds = %463
  %528 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %529 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %528, i32 0, i32 1
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %12, align 4
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0), i32 %534)
  br label %536

536:                                              ; preds = %527, %518, %513, %508, %503, %502
  %537 = load i64, i64* %16, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %536
  %540 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %541 = load i32, i32* %12, align 4
  %542 = load i32, i32* %12, align 4
  %543 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %540, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i32 %541, i32 %542)
  br label %544

544:                                              ; preds = %539, %536
  br label %545

545:                                              ; preds = %544
  %546 = load i32, i32* %12, align 4
  %547 = add i32 %546, 1
  store i32 %547, i32* %12, align 4
  br label %459

548:                                              ; preds = %459
  %549 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %550 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %549, i32 0, i32 4
  %551 = load i32, i32* %550, align 8
  switch i32 %551, label %593 [
    i32 129, label %552
    i32 130, label %554
    i32 128, label %557
    i32 131, label %560
  ]

552:                                              ; preds = %548
  %553 = load i64, i64* @FALSE, align 8
  store i64 %553, i64* %9, align 8
  br label %598

554:                                              ; preds = %548
  %555 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %556 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %555, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i64 0, i64 0))
  br label %598

557:                                              ; preds = %548
  %558 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %559 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %558, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0))
  br label %598

560:                                              ; preds = %548
  %561 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %562 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %561, i32 0, i32 8
  %563 = load i32, i32* %562, align 8
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %580

565:                                              ; preds = %560
  %566 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %567 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %566, i32 0, i32 0
  %568 = load i32*, i32** %567, align 8
  %569 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %570 = getelementptr inbounds i32, i32* %568, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %576

573:                                              ; preds = %565
  %574 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %575 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %574, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i64 0, i64 0))
  br label %579

576:                                              ; preds = %565
  %577 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %578 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %577, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.77, i64 0, i64 0))
  br label %579

579:                                              ; preds = %576, %573
  br label %592

580:                                              ; preds = %560
  %581 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %582 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %581, i32 0, i32 7
  %583 = load i64, i64* %582, align 8
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %580
  %586 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %587 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %586, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.78, i64 0, i64 0))
  br label %591

588:                                              ; preds = %580
  %589 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %590 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %589, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.79, i64 0, i64 0))
  br label %591

591:                                              ; preds = %588, %585
  br label %592

592:                                              ; preds = %591, %579
  br label %598

593:                                              ; preds = %548
  %594 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %595 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %594, i32 0, i32 4
  %596 = load i32, i32* %595, align 8
  %597 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 %596)
  br label %598

598:                                              ; preds = %593, %592, %557, %554, %552
  %599 = load i64, i64* %9, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %598
  %602 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %603 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %602, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i64 0, i64 0))
  br label %604

604:                                              ; preds = %601, %598
  %605 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %606 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %605, i32 0, i32 6
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %620

609:                                              ; preds = %604
  %610 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %611 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %5, align 8
  %612 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %611, i32 0, i32 5
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  %615 = zext i1 %614 to i64
  %616 = select i1 %614, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0)
  %617 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %610, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.82, i64 0, i64 0), i8* %616)
  %618 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %619 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %618, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.85, i64 0, i64 0))
  br label %620

620:                                              ; preds = %609, %604
  %621 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %622 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %621, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0))
  %623 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %624 = call i32 @glCreateShader(i32 %623)
  %625 = call i32 @GL_EXTCALL(i32 %624)
  store i32 %625, i32* %11, align 4
  %626 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %627 = load i32, i32* %11, align 4
  %628 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  %629 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %626, i32 %627, i32 %630)
  %632 = load i32, i32* %11, align 4
  ret i32 %632
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @string_buffer_clear(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.attrib_info.0*) #1

declare dso_local i32 @get_attribute_keyword(%struct.wined3d_gl_info*) #1

declare dso_local i32 @declare_out_varying(%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, i64, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @shader_glsl_ffp_vertex_lighting(%struct.wined3d_string_buffer*, %struct.wined3d_ffp_vs_settings*, i64) #1

declare dso_local i32 @wined3d_max_compat_varyings(%struct.wined3d_gl_info*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @shader_glsl_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
