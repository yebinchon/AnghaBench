; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_compile_glsl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_compile_glsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i64, i32 (i8*, i32, i32*, i32*, i32*, i8*, i32, i32, i32, i32**, i32**)*, %struct.spirv_compiler* }
%struct.spirv_compiler = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.spirv_compiler*, i8*, i32, i8*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i64 }

@SPVC_SUCCESS = common dso_local global i64 0, align 8
@D3D_FEATURE_LEVEL_11_0 = common dso_local global i64 0, align 8
@D3D_FEATURE_LEVEL_10_1 = common dso_local global i64 0, align 8
@SPVC_BACKEND_HLSL = common dso_local global i32 0, align 4
@SPVC_CAPTURE_MODE_TAKE_OWNERSHIP = common dso_local global i32 0, align 4
@SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL = common dso_local global i32 0, align 4
@GLSL_SHADER_VERTEX = common dso_local global i32 0, align 4
@SPVC_COMPILER_OPTION_FLIP_VERTEX_Y = common dso_local global i32 0, align 4
@SPVC_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@D3DCOMPILE_OPTIMIZATION_LEVEL3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"D3DCompile failed: %s\0A%.*s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Compiled a %s shader in %lldus\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"shaderc: %lldus, SPIRV-Cross: %lldus, D3DCompile: %lldus\0A\00", align 1
@MSGL_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"SPIRV-Cross failed: %s\0A\00", align 1
@MSGL_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"GLSL source:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"HLSL source:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, i32, i8*, i32**)* @compile_glsl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_glsl(%struct.ra* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca %struct.ra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.ra_d3d11*, align 8
  %10 = alloca %struct.spirv_compiler*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_5__, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32** %3, i32*** %8, align 8
  %28 = load %struct.ra*, %struct.ra** %5, align 8
  %29 = getelementptr inbounds %struct.ra, %struct.ra* %28, i32 0, i32 1
  %30 = load %struct.ra_d3d11*, %struct.ra_d3d11** %29, align 8
  store %struct.ra_d3d11* %30, %struct.ra_d3d11** %9, align 8
  %31 = load %struct.ra_d3d11*, %struct.ra_d3d11** %9, align 8
  %32 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %31, i32 0, i32 2
  %33 = load %struct.spirv_compiler*, %struct.spirv_compiler** %32, align 8
  store %struct.spirv_compiler* %33, %struct.spirv_compiler** %10, align 8
  %34 = call i8* @talloc_new(i32* null)
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* @SPVC_SUCCESS, align 8
  store i64 %35, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i8* null, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %36 = load %struct.ra_d3d11*, %struct.ra_d3d11** %9, align 8
  %37 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @D3D_FEATURE_LEVEL_11_0, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 50, i32* %21, align 4
  br label %51

42:                                               ; preds = %4
  %43 = load %struct.ra_d3d11*, %struct.ra_d3d11** %9, align 8
  %44 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @D3D_FEATURE_LEVEL_10_1, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 41, i32* %21, align 4
  br label %50

49:                                               ; preds = %42
  store i32 40, i32* %21, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %41
  %52 = call i64 (...) @mp_time_us()
  store i64 %52, i64* %22, align 8
  %53 = load %struct.spirv_compiler*, %struct.spirv_compiler** %10, align 8
  %54 = getelementptr inbounds %struct.spirv_compiler, %struct.spirv_compiler* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.spirv_compiler*, i8*, i32, i8*, %struct.TYPE_5__*)*, i32 (%struct.spirv_compiler*, i8*, i32, i8*, %struct.TYPE_5__*)** %56, align 8
  %58 = load %struct.spirv_compiler*, %struct.spirv_compiler** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 %57(%struct.spirv_compiler* %58, i8* %59, i32 %60, i8* %61, %struct.TYPE_5__* %23)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %191

65:                                               ; preds = %51
  %66 = call i64 (...) @mp_time_us()
  store i64 %66, i64* %24, align 8
  %67 = call i64 @spvc_context_create(i32** %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @SPVC_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %191

72:                                               ; preds = %65
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i64 @spvc_context_parse_spirv(i32* %73, i32* %76, i32 %81, i32** %14)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @SPVC_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %191

87:                                               ; preds = %72
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* @SPVC_BACKEND_HLSL, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* @SPVC_CAPTURE_MODE_TAKE_OWNERSHIP, align 4
  %92 = call i64 @spvc_context_create_compiler(i32* %88, i32 %89, i32* %90, i32 %91, i32** %15)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @SPVC_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %191

97:                                               ; preds = %87
  %98 = load i32*, i32** %15, align 8
  %99 = call i64 @spvc_compiler_create_compiler_options(i32* %98, i32** %16)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @SPVC_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %191

104:                                              ; preds = %97
  %105 = load i32*, i32** %16, align 8
  %106 = load i32, i32* @SPVC_COMPILER_OPTION_HLSL_SHADER_MODEL, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i64 @spvc_compiler_options_set_uint(i32* %105, i32 %106, i32 %107)
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @SPVC_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %191

113:                                              ; preds = %104
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @GLSL_SHADER_VERTEX, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* @SPVC_COMPILER_OPTION_FLIP_VERTEX_Y, align 4
  %120 = load i32, i32* @SPVC_TRUE, align 4
  %121 = call i64 @spvc_compiler_options_set_bool(i32* %118, i32 %119, i32 %120)
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @SPVC_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %191

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = call i64 @spvc_compiler_install_compiler_options(i32* %128, i32* %129)
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @SPVC_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %191

135:                                              ; preds = %127
  %136 = load i32*, i32** %15, align 8
  %137 = call i64 @spvc_compiler_compile(i32* %136, i8** %17)
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* @SPVC_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %191

142:                                              ; preds = %135
  %143 = call i64 (...) @mp_time_us()
  store i64 %143, i64* %25, align 8
  %144 = load %struct.ra_d3d11*, %struct.ra_d3d11** %9, align 8
  %145 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %144, i32 0, i32 1
  %146 = load i32 (i8*, i32, i32*, i32*, i32*, i8*, i32, i32, i32, i32**, i32**)*, i32 (i8*, i32, i32*, i32*, i32*, i8*, i32, i32, i32, i32**, i32**)** %145, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = load %struct.ra*, %struct.ra** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @get_shader_target(%struct.ra* %150, i32 %151)
  %153 = load i32, i32* @D3DCOMPILE_OPTIMIZATION_LEVEL3, align 4
  %154 = load i32**, i32*** %8, align 8
  %155 = call i32 %146(i8* %147, i32 %149, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %153, i32 0, i32** %154, i32** %18)
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %20, align 4
  %157 = call i64 @FAILED(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %142
  %160 = load %struct.ra*, %struct.ra** %5, align 8
  %161 = load i32, i32* %20, align 4
  %162 = call i32 @mp_HRESULT_to_str(i32 %161)
  %163 = load i32*, i32** %18, align 8
  %164 = call i64 @ID3D10Blob_GetBufferSize(i32* %163)
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %18, align 8
  %167 = call i64 @ID3D10Blob_GetBufferPointer(i32* %166)
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @MP_ERR(%struct.ra* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %165, i8* %168)
  br label %191

170:                                              ; preds = %142
  %171 = call i64 (...) @mp_time_us()
  store i64 %171, i64* %26, align 8
  %172 = load %struct.ra*, %struct.ra** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @shader_type_name(i32 %173)
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* %22, align 8
  %178 = sub nsw i64 %176, %177
  %179 = call i32 (%struct.ra*, i8*, i64, i64, ...) @MP_VERBOSE(%struct.ra* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %175, i64 %178)
  %180 = load %struct.ra*, %struct.ra** %5, align 8
  %181 = load i64, i64* %24, align 8
  %182 = load i64, i64* %22, align 8
  %183 = sub nsw i64 %181, %182
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %24, align 8
  %186 = sub nsw i64 %184, %185
  %187 = load i64, i64* %26, align 8
  %188 = load i64, i64* %25, align 8
  %189 = sub nsw i64 %187, %188
  %190 = call i32 (%struct.ra*, i8*, i64, i64, ...) @MP_VERBOSE(%struct.ra* %180, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %183, i64 %186, i64 %189)
  store i32 1, i32* %19, align 4
  br label %191

191:                                              ; preds = %170, %159, %141, %134, %125, %112, %103, %96, %86, %71, %64
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @SPVC_SUCCESS, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load %struct.ra*, %struct.ra** %5, align 8
  %197 = load i32, i32* @MSGL_ERR, align 4
  %198 = load i32*, i32** %13, align 8
  %199 = call i32 @spvc_context_get_last_error_string(i32* %198)
  %200 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %196, i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %195, %191
  %202 = load i32, i32* %19, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @MSGL_DEBUG, align 4
  br label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @MSGL_ERR, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %27, align 4
  %210 = load %struct.ra*, %struct.ra** %5, align 8
  %211 = load i32, i32* %27, align 4
  %212 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %210, i32 %211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %213 = load %struct.ra*, %struct.ra** %5, align 8
  %214 = getelementptr inbounds %struct.ra, %struct.ra* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %27, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @mp_log_source(i32 %215, i32 %216, i8* %217)
  %219 = load i8*, i8** %17, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %208
  %222 = load %struct.ra*, %struct.ra** %5, align 8
  %223 = load i32, i32* %27, align 4
  %224 = call i32 (%struct.ra*, i32, i8*, ...) @MP_MSG(%struct.ra* %222, i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %225 = load %struct.ra*, %struct.ra** %5, align 8
  %226 = getelementptr inbounds %struct.ra, %struct.ra* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %27, align 4
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 @mp_log_source(i32 %227, i32 %228, i8* %229)
  br label %231

231:                                              ; preds = %221, %208
  %232 = load i32*, i32** %18, align 8
  %233 = call i32 @SAFE_RELEASE(i32* %232)
  %234 = load i32*, i32** %13, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32*, i32** %13, align 8
  %238 = call i32 @spvc_context_destroy(i32* %237)
  br label %239

239:                                              ; preds = %236, %231
  %240 = load i8*, i8** %11, align 8
  %241 = call i32 @talloc_free(i8* %240)
  %242 = load i32, i32* %19, align 4
  ret i32 %242
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i64 @spvc_context_create(i32**) #1

declare dso_local i64 @spvc_context_parse_spirv(i32*, i32*, i32, i32**) #1

declare dso_local i64 @spvc_context_create_compiler(i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @spvc_compiler_create_compiler_options(i32*, i32**) #1

declare dso_local i64 @spvc_compiler_options_set_uint(i32*, i32, i32) #1

declare dso_local i64 @spvc_compiler_options_set_bool(i32*, i32, i32) #1

declare dso_local i64 @spvc_compiler_install_compiler_options(i32*, i32*) #1

declare dso_local i64 @spvc_compiler_compile(i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_shader_target(%struct.ra*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, i32, i32, i8*) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i64 @ID3D10Blob_GetBufferSize(i32*) #1

declare dso_local i64 @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra*, i8*, i64, i64, ...) #1

declare dso_local i32 @shader_type_name(i32) #1

declare dso_local i32 @MP_MSG(%struct.ra*, i32, i8*, ...) #1

declare dso_local i32 @spvc_context_get_last_error_string(i32*) #1

declare dso_local i32 @mp_log_source(i32, i32, i8*) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

declare dso_local i32 @spvc_context_destroy(i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
