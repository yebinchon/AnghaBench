; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_init_vs_uniform_locations.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_init_vs_uniform_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.glsl_vs_program = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8**, i8**, i8*, i8**, i8**, i8** }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.wined3d_string_buffer = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"vs_c[%u]\00", align 1
@WINED3D_MAX_VS_CONSTS_F = common dso_local global i32 0, align 4
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vs_i[%u]\00", align 1
@WINED3D_MAX_CONSTS_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vs_b[%u]\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"pos_fixup\00", align 1
@MAX_VERTEX_INDEX_BLENDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ffp_modelview_matrix[%u]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ffp_normal_matrix[%u]\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"ffp_projection_matrix\00", align 1
@MAX_TEXTURES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"ffp_texture_matrix[%u]\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ffp_material.ambient\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ffp_material.diffuse\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ffp_material.specular\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ffp_material.emissive\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"ffp_material.shininess\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ffp_light_ambient\00", align 1
@MAX_ACTIVE_LIGHTS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"ffp_light[%u].diffuse\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ffp_light[%u].specular\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"ffp_light[%u].ambient\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"ffp_light[%u].position\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"ffp_light[%u].direction\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"ffp_light[%u].range\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"ffp_light[%u].falloff\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"ffp_light[%u].c_att\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"ffp_light[%u].l_att\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"ffp_light[%u].q_att\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"ffp_light[%u].cos_htheta\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"ffp_light[%u].cos_hphi\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"ffp_point.size\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ffp_point.size_min\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"ffp_point.size_max\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"ffp_point.c_att\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"ffp_point.l_att\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"ffp_point.q_att\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"clip_planes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, i32, %struct.glsl_vs_program*, i32)* @shader_glsl_init_vs_uniform_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_init_vs_uniform_locations(%struct.wined3d_gl_info* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.glsl_vs_program* %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.glsl_vs_program*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_string_buffer*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.glsl_vs_program* %3, %struct.glsl_vs_program** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %14 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %13, i32 0, i32 0
  %15 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %14)
  store %struct.wined3d_string_buffer* %15, %struct.wined3d_string_buffer** %12, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %36, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %26 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @glGetUniformLocation(i32 %24, i8* %27)
  %29 = call i8* @GL_EXTCALL(i32 %28)
  %30 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %31 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %30, i32 0, i32 21
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %29, i8** %35, align 8
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %41 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %40, i32 0, i32 21
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i32, i32* @WINED3D_MAX_VS_CONSTS_F, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i8** %45, i32 255, i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %73, %39
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %63 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @glGetUniformLocation(i32 %61, i8* %64)
  %66 = call i8* @GL_EXTCALL(i32 %65)
  %67 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %68 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %67, i32 0, i32 20
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %53

76:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @WINED3D_MAX_CONSTS_B, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %87 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @glGetUniformLocation(i32 %85, i8* %88)
  %90 = call i8* @GL_EXTCALL(i32 %89)
  %91 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %92 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %91, i32 0, i32 19
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @glGetUniformLocation(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i8* @GL_EXTCALL(i32 %102)
  %104 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %105 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %104, i32 0, i32 18
  store i8* %103, i8** %105, align 8
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %126, %100
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @MAX_VERTEX_INDEX_BLENDS, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %116 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @glGetUniformLocation(i32 %114, i8* %117)
  %119 = call i8* @GL_EXTCALL(i32 %118)
  %120 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %121 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %120, i32 0, i32 17
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %110
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %106

129:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %150, %129
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @MAX_VERTEX_INDEX_BLENDS, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %140 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @glGetUniformLocation(i32 %138, i8* %141)
  %143 = call i8* @GL_EXTCALL(i32 %142)
  %144 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %145 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %144, i32 0, i32 16
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %143, i8** %149, align 8
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %130

153:                                              ; preds = %130
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @glGetUniformLocation(i32 %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %156 = call i8* @GL_EXTCALL(i32 %155)
  %157 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %158 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %157, i32 0, i32 15
  store i8* %156, i8** %158, align 8
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %179, %153
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @MAX_TEXTURES, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %169 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @glGetUniformLocation(i32 %167, i8* %170)
  %172 = call i8* @GL_EXTCALL(i32 %171)
  %173 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %174 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %173, i32 0, i32 14
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  store i8* %172, i8** %178, align 8
  br label %179

179:                                              ; preds = %163
  %180 = load i32, i32* %11, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %159

182:                                              ; preds = %159
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @glGetUniformLocation(i32 %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %185 = call i8* @GL_EXTCALL(i32 %184)
  %186 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %187 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %186, i32 0, i32 13
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @glGetUniformLocation(i32 %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %190 = call i8* @GL_EXTCALL(i32 %189)
  %191 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %192 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %191, i32 0, i32 12
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @glGetUniformLocation(i32 %193, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %195 = call i8* @GL_EXTCALL(i32 %194)
  %196 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %197 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %196, i32 0, i32 11
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @glGetUniformLocation(i32 %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %200 = call i8* @GL_EXTCALL(i32 %199)
  %201 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %202 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %201, i32 0, i32 10
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @glGetUniformLocation(i32 %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %205 = call i8* @GL_EXTCALL(i32 %204)
  %206 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %207 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %206, i32 0, i32 9
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @glGetUniformLocation(i32 %208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %210 = call i8* @GL_EXTCALL(i32 %209)
  %211 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %212 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %211, i32 0, i32 8
  store i8* %210, i8** %212, align 8
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %410, %182
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %413

217:                                              ; preds = %213
  %218 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %223 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @glGetUniformLocation(i32 %221, i8* %224)
  %226 = call i8* @GL_EXTCALL(i32 %225)
  %227 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %228 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %227, i32 0, i32 7
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 11
  store i8* %226, i8** %233, align 8
  %234 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %239 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @glGetUniformLocation(i32 %237, i8* %240)
  %242 = call i8* @GL_EXTCALL(i32 %241)
  %243 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %244 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %243, i32 0, i32 7
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 10
  store i8* %242, i8** %249, align 8
  %250 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %255 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @glGetUniformLocation(i32 %253, i8* %256)
  %258 = call i8* @GL_EXTCALL(i32 %257)
  %259 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %260 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %259, i32 0, i32 7
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 9
  store i8* %258, i8** %265, align 8
  %266 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %271 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @glGetUniformLocation(i32 %269, i8* %272)
  %274 = call i8* @GL_EXTCALL(i32 %273)
  %275 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %276 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %275, i32 0, i32 7
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 8
  store i8* %274, i8** %281, align 8
  %282 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %282, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %287 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @glGetUniformLocation(i32 %285, i8* %288)
  %290 = call i8* @GL_EXTCALL(i32 %289)
  %291 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %292 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %291, i32 0, i32 7
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = load i32, i32* %11, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 7
  store i8* %290, i8** %297, align 8
  %298 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %298, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %8, align 4
  %302 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %303 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @glGetUniformLocation(i32 %301, i8* %304)
  %306 = call i8* @GL_EXTCALL(i32 %305)
  %307 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %308 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %307, i32 0, i32 7
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 6
  store i8* %306, i8** %313, align 8
  %314 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %314, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %319 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @glGetUniformLocation(i32 %317, i8* %320)
  %322 = call i8* @GL_EXTCALL(i32 %321)
  %323 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %324 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %323, i32 0, i32 7
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %324, align 8
  %326 = load i32, i32* %11, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 5
  store i8* %322, i8** %329, align 8
  %330 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %331 = load i32, i32* %11, align 4
  %332 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %330, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %331)
  %333 = load i32, i32* %8, align 4
  %334 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %335 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @glGetUniformLocation(i32 %333, i8* %336)
  %338 = call i8* @GL_EXTCALL(i32 %337)
  %339 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %340 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %339, i32 0, i32 7
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 4
  store i8* %338, i8** %345, align 8
  %346 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %346, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %347)
  %349 = load i32, i32* %8, align 4
  %350 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %351 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 @glGetUniformLocation(i32 %349, i8* %352)
  %354 = call i8* @GL_EXTCALL(i32 %353)
  %355 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %356 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %355, i32 0, i32 7
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** %356, align 8
  %358 = load i32, i32* %11, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 3
  store i8* %354, i8** %361, align 8
  %362 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %362, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %363)
  %365 = load i32, i32* %8, align 4
  %366 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %367 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @glGetUniformLocation(i32 %365, i8* %368)
  %370 = call i8* @GL_EXTCALL(i32 %369)
  %371 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %372 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %371, i32 0, i32 7
  %373 = load %struct.TYPE_2__*, %struct.TYPE_2__** %372, align 8
  %374 = load i32, i32* %11, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 2
  store i8* %370, i8** %377, align 8
  %378 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %379 = load i32, i32* %11, align 4
  %380 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %378, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %379)
  %381 = load i32, i32* %8, align 4
  %382 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %383 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @glGetUniformLocation(i32 %381, i8* %384)
  %386 = call i8* @GL_EXTCALL(i32 %385)
  %387 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %388 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %387, i32 0, i32 7
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** %388, align 8
  %390 = load i32, i32* %11, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 1
  store i8* %386, i8** %393, align 8
  %394 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %395 = load i32, i32* %11, align 4
  %396 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %394, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %395)
  %397 = load i32, i32* %8, align 4
  %398 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %399 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @glGetUniformLocation(i32 %397, i8* %400)
  %402 = call i8* @GL_EXTCALL(i32 %401)
  %403 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %404 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %403, i32 0, i32 7
  %405 = load %struct.TYPE_2__*, %struct.TYPE_2__** %404, align 8
  %406 = load i32, i32* %11, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  store i8* %402, i8** %409, align 8
  br label %410

410:                                              ; preds = %217
  %411 = load i32, i32* %11, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %11, align 4
  br label %213

413:                                              ; preds = %213
  %414 = load i32, i32* %8, align 4
  %415 = call i32 @glGetUniformLocation(i32 %414, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %416 = call i8* @GL_EXTCALL(i32 %415)
  %417 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %418 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %417, i32 0, i32 6
  store i8* %416, i8** %418, align 8
  %419 = load i32, i32* %8, align 4
  %420 = call i32 @glGetUniformLocation(i32 %419, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %421 = call i8* @GL_EXTCALL(i32 %420)
  %422 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %423 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %422, i32 0, i32 5
  store i8* %421, i8** %423, align 8
  %424 = load i32, i32* %8, align 4
  %425 = call i32 @glGetUniformLocation(i32 %424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %426 = call i8* @GL_EXTCALL(i32 %425)
  %427 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %428 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %427, i32 0, i32 4
  store i8* %426, i8** %428, align 8
  %429 = load i32, i32* %8, align 4
  %430 = call i32 @glGetUniformLocation(i32 %429, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %431 = call i8* @GL_EXTCALL(i32 %430)
  %432 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %433 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %432, i32 0, i32 3
  store i8* %431, i8** %433, align 8
  %434 = load i32, i32* %8, align 4
  %435 = call i32 @glGetUniformLocation(i32 %434, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %436 = call i8* @GL_EXTCALL(i32 %435)
  %437 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %438 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %437, i32 0, i32 2
  store i8* %436, i8** %438, align 8
  %439 = load i32, i32* %8, align 4
  %440 = call i32 @glGetUniformLocation(i32 %439, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %441 = call i8* @GL_EXTCALL(i32 %440)
  %442 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %443 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %442, i32 0, i32 1
  store i8* %441, i8** %443, align 8
  %444 = load i32, i32* %8, align 4
  %445 = call i32 @glGetUniformLocation(i32 %444, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  %446 = call i8* @GL_EXTCALL(i32 %445)
  %447 = load %struct.glsl_vs_program*, %struct.glsl_vs_program** %9, align 8
  %448 = getelementptr inbounds %struct.glsl_vs_program, %struct.glsl_vs_program* %447, i32 0, i32 0
  store i8* %446, i8** %448, align 8
  %449 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %450 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %449, i32 0, i32 0
  %451 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %452 = call i32 @string_buffer_release(i32* %450, %struct.wined3d_string_buffer* %451)
  ret void
}

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i32) #1

declare dso_local i8* @GL_EXTCALL(i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @string_buffer_release(i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
