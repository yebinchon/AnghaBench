; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_input_pack.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_input_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i8*, i32, i64, i32 }
%struct.wined3d_shader_reg_maps = type { i32 }
%struct.ps_compile_args = type { i64, i32, i64 }
%struct.wined3d_gl_info = type { i64* }

@vertexshader = common dso_local global i64 0, align 8
@WINED3D_SV_POSITION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"ps_in[%u]%s = vpos%s;\0A\00", align 1
@WINED3D_DECL_USAGE_TEXCOORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ps_in[%u] = vec4(gl_PointCoord.xy, 0.0, 0.0);\0A\00", align 1
@WINED3D_SV_IS_FRONT_FACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"ps_in[%u]%s = uintBitsToFloat(gl_FrontFacing ? 0xffffffffu : 0u);\0A\00", align 1
@WINED3D_SV_RENDER_TARGET_ARRAY_INDEX = common dso_local global i64 0, align 8
@ARB_FRAGMENT_LAYER_VIEWPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"ps_in[%u]%s = intBitsToFloat(gl_Layer);\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"ARB_fragment_layer_viewport is not supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unhandled sysval semantic %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ps_in[%u]%s = %s%u%s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ps_in[%u]%s = %s[%u]%s;\0A\00", align 1
@pretransformed = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"gl_TexCoord\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ffp_varying_texcoord\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"ps_in[%u]%s = vec4(0.0, 0.0, 0.0, 0.0)%s;\0A\00", align 1
@WINED3D_DECL_USAGE_COLOR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"ps_in[%u]%s = vec4(ffp_varying_diffuse)%s;\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"ps_in[%u]%s = vec4(ffp_varying_specular)%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, %struct.ps_compile_args*, %struct.wined3d_gl_info*, i64)* @shader_glsl_input_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_input_pack(%struct.wined3d_shader* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader_signature* %2, %struct.wined3d_shader_reg_maps* %3, %struct.ps_compile_args* %4, %struct.wined3d_gl_info* %5, i64 %6) #0 {
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_shader_signature*, align 8
  %11 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %12 = alloca %struct.ps_compile_args*, align 8
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_shader_signature_element*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [6 x i8], align 1
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_shader_signature* %2, %struct.wined3d_shader_signature** %10, align 8
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %11, align 8
  store %struct.ps_compile_args* %4, %struct.ps_compile_args** %12, align 8
  store %struct.wined3d_gl_info* %5, %struct.wined3d_gl_info** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %358, %7
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %10, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %361

26:                                               ; preds = %20
  %27 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %10, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %27, i32 0, i32 1
  %29 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %29, i64 %31
  store %struct.wined3d_shader_signature_element* %32, %struct.wined3d_shader_signature_element** %16, align 8
  %33 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 1, %38
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %358

43:                                               ; preds = %26
  %44 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %17, align 8
  %47 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %54 = call i32 @shader_glsl_write_mask_to_str(i32 %52, i8* %53)
  %55 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %56 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @vertexshader, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %193

60:                                               ; preds = %43
  %61 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WINED3D_SV_POSITION, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %66
  %70 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %71 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %84 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %82, i8* %83, i8* %84)
  br label %192

86:                                               ; preds = %66, %60
  %87 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %88 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i8*, i8** %17, align 8
  %93 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %94 = call i64 @shader_match_semantic(i8* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %98 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = zext i32 %100 to i64
  %102 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  br label %191

103:                                              ; preds = %91, %86
  %104 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %105 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WINED3D_SV_IS_FRONT_FACE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %111 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %112 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %110, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %114, i8* %115)
  br label %190

117:                                              ; preds = %103
  %118 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WINED3D_SV_RENDER_TARGET_ARRAY_INDEX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %145

123:                                              ; preds = %117
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %123
  %127 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %128 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @ARB_FRAGMENT_LAYER_VIEWPORT, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %136 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %141 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %139, i8* %140)
  br label %144

142:                                              ; preds = %126
  %143 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %134
  br label %189

145:                                              ; preds = %123, %117
  %146 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %147 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %152 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)
  %161 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %162 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %167 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %174 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %175 = call i32 @shader_glsl_shader_input_name(%struct.wined3d_gl_info* %174)
  %176 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %177 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %182 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %188 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %156, i8* %160, i64 %172, i8* %173, i32 %175, i32 %186, i8* %187)
  br label %189

189:                                              ; preds = %155, %144
  br label %190

190:                                              ; preds = %189, %109
  br label %191

191:                                              ; preds = %190, %96
  br label %192

192:                                              ; preds = %191, %69
  br label %357

193:                                              ; preds = %43
  %194 = load i8*, i8** %17, align 8
  %195 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %196 = call i64 @shader_match_semantic(i8* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %274

198:                                              ; preds = %193
  %199 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %200 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  %204 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %205 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %206 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %211 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %204, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %216)
  br label %273

218:                                              ; preds = %198
  %219 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %220 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @pretransformed, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %255

224:                                              ; preds = %218
  %225 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %226 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = shl i32 1, %228
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %255

232:                                              ; preds = %224
  %233 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %234 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %235 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %240 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %247 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %248 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %247)
  %249 = icmp ne i64 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)
  %252 = load i32, i32* %18, align 4
  %253 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %254 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %245, i8* %246, i8* %251, i32 %252, i8* %253)
  br label %272

255:                                              ; preds = %224, %218
  %256 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %257 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %258 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %263 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %270 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %271 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %268, i8* %269, i8* %270)
  br label %272

272:                                              ; preds = %255, %232
  br label %273

273:                                              ; preds = %272, %203
  br label %356

274:                                              ; preds = %193
  %275 = load i8*, i8** %17, align 8
  %276 = load i32, i32* @WINED3D_DECL_USAGE_COLOR, align 4
  %277 = call i64 @shader_match_semantic(i8* %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %338

279:                                              ; preds = %274
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %299, label %282

282:                                              ; preds = %279
  %283 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %284 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %285 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %290 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %288, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %297 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %298 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %283, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i64 %295, i8* %296, i8* %297)
  br label %337

299:                                              ; preds = %279
  %300 = load i32, i32* %18, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %319

302:                                              ; preds = %299
  %303 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %304 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %305 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %310 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %308, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %317 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %318 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %303, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i64 %315, i8* %316, i8* %317)
  br label %336

319:                                              ; preds = %299
  %320 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %321 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %322 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %327 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %325, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %334 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %335 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %320, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %332, i8* %333, i8* %334)
  br label %336

336:                                              ; preds = %319, %302
  br label %337

337:                                              ; preds = %336, %282
  br label %355

338:                                              ; preds = %274
  %339 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %340 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %341 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %346 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %344, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %353 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %354 = call i32 (%struct.wined3d_string_buffer*, i8*, i64, ...) @shader_addline(%struct.wined3d_string_buffer* %339, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %351, i8* %352, i8* %353)
  br label %355

355:                                              ; preds = %338, %337
  br label %356

356:                                              ; preds = %355, %273
  br label %357

357:                                              ; preds = %356, %192
  br label %358

358:                                              ; preds = %357, %42
  %359 = load i32, i32* %15, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %15, align 4
  br label %20

361:                                              ; preds = %20
  ret void
}

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i64, ...) #1

declare dso_local i64 @shader_match_semantic(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @shader_glsl_shader_input_name(%struct.wined3d_gl_info*) #1

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
