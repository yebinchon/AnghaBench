; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_internal_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_internal_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.wined3d_adapter = type { i32 }
%struct.wined3d_format = type { i64, i64, i32*, i64, i32 }
%struct.wined3d_format_texture_info = type { i32 }
%struct.wined3d_gl_info = type { i32, %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i32* }

@MAX_MULTISAMPLE_TYPES = common dso_local global i32 0, align 4
@ARB_INTERNALFORMAT_QUERY2 = common dso_local global i64 0, align 8
@GL_VERTEX_TEXTURE = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_VTF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vertex texture usage\00", align 1
@GL_FILTER = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_FILTERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"filtering\00", align 1
@GL_SRGB_READ = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sRGB read\00", align 1
@GL_SRGB_WRITE = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_SRGB_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"sRGB write\00", align 1
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@WINED3D_QUIRK_LIMITED_TEX_FILTERING = common dso_local global i32 0, align 4
@WINED3DFMT_R32G32B32A32_FLOAT = common dso_local global i64 0, align 8
@WINED3DFMT_R32_FLOAT = common dso_local global i64 0, align 8
@EXT_TEXTURE_SRGB = common dso_local global i64 0, align 8
@ARB_DEPTH_TEXTURE = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_TEXTURE = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_1D = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_3D = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_CUBE = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_RECT = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_RB = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_RENDERTARGET = common dso_local global i32 0, align 4
@ARB_INTERNALFORMAT_QUERY = common dso_local global i64 0, align 8
@ARB_TEXTURE_MULTISAMPLE = common dso_local global i64 0, align 8
@GL_TEXTURE_2D_MULTISAMPLE = common dso_local global i32 0, align 4
@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@GL_NUM_SAMPLE_COUNTS = common dso_local global i32 0, align 4
@GL_SAMPLES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"query sample counts\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_adapter*, %struct.wined3d_format*, %struct.wined3d_format_texture_info*, %struct.wined3d_gl_info*, i64, i64)* @query_internal_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_internal_format(%struct.wined3d_adapter* %0, %struct.wined3d_format* %1, %struct.wined3d_format_texture_info* %2, %struct.wined3d_gl_info* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.wined3d_adapter*, align 8
  %8 = alloca %struct.wined3d_format*, align 8
  %9 = alloca %struct.wined3d_format_texture_info*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wined3d_adapter* %0, %struct.wined3d_adapter** %7, align 8
  store %struct.wined3d_format* %1, %struct.wined3d_format** %8, align 8
  store %struct.wined3d_format_texture_info* %2, %struct.wined3d_format_texture_info** %9, align 8
  store %struct.wined3d_gl_info* %3, %struct.wined3d_gl_info** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i32, i32* @MAX_MULTISAMPLE_TYPES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %24 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @ARB_INTERNALFORMAT_QUERY2, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %6
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %32 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %33 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %34 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @GL_VERTEX_TEXTURE, align 4
  %37 = load i32, i32* @WINED3DFMT_FLAG_VTF, align 4
  %38 = call i32 @query_format_flag(%struct.wined3d_gl_info* %31, %struct.wined3d_format* %32, i64 %35, i32 %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %40 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %41 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %42 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @GL_FILTER, align 4
  %45 = load i32, i32* @WINED3DFMT_FLAG_FILTERING, align 4
  %46 = call i32 @query_format_flag(%struct.wined3d_gl_info* %39, %struct.wined3d_format* %40, i64 %43, i32 %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %30
  %50 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %51 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %54 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %49, %30
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %59 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %60 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %61 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GL_SRGB_READ, align 4
  %64 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %65 = call i32 @query_format_flag(%struct.wined3d_gl_info* %58, %struct.wined3d_format* %59, i64 %62, i32 %63, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %70 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %71 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %72 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @GL_SRGB_WRITE, align 4
  %75 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %76 = call i32 @query_format_flag(%struct.wined3d_gl_info* %69, %struct.wined3d_format* %70, i64 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %81

77:                                               ; preds = %57
  %78 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %79 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %80 = call i32 @format_clear_flag(%struct.wined3d_format* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  %82 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %83 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %89 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %81
  %94 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %95 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %98 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %118

99:                                               ; preds = %81
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 8
  %101 = load i64, i64* @ORM_FBO, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %113 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %116 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %103, %99
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %49
  br label %292

120:                                              ; preds = %6
  %121 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %122 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %120
  %130 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %131 = load i32, i32* @WINED3DFMT_FLAG_VTF, align 4
  %132 = call i32 @format_clear_flag(%struct.wined3d_format* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %120
  %134 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %135 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @WINED3D_QUIRK_LIMITED_TEX_FILTERING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %133
  %141 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %142 = load i32, i32* @WINED3DFMT_FLAG_FILTERING, align 4
  %143 = call i32 @format_set_flag(%struct.wined3d_format* %141, i32 %142)
  br label %161

144:                                              ; preds = %133
  %145 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %146 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @WINED3DFMT_R32G32B32A32_FLOAT, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %144
  %151 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %152 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @WINED3DFMT_R32_FLOAT, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %158 = load i32, i32* @WINED3DFMT_FLAG_VTF, align 4
  %159 = call i32 @format_clear_flag(%struct.wined3d_format* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %150, %144
  br label %161

161:                                              ; preds = %160, %140
  %162 = load i64, i64* %12, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %161
  %165 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %166 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %169 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %167, %170
  br i1 %171, label %172, label %211

172:                                              ; preds = %164, %161
  %173 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %174 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %173, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* @EXT_TEXTURE_SRGB, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %172
  %181 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %182 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %185 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %187 = load i32, i32* @WINED3DFMT_FLAG_SRGB_READ, align 4
  %188 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @format_clear_flag(%struct.wined3d_format* %186, i32 %189)
  br label %210

191:                                              ; preds = %172
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 8
  %193 = load i64, i64* @ORM_FBO, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %197 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %196, i32 0, i32 2
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %205 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %208 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %203, %195, %191
  br label %210

210:                                              ; preds = %209, %180
  br label %211

211:                                              ; preds = %210, %164
  %212 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %213 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %211
  %222 = load i64, i64* %11, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %221
  %225 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %226 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %227 = call i32 @format_clear_flag(%struct.wined3d_format* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %221, %211
  %229 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %230 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i64, i64* @ARB_DEPTH_TEXTURE, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %291, label %236

236:                                              ; preds = %228
  %237 = load %struct.wined3d_format_texture_info*, %struct.wined3d_format_texture_info** %9, align 8
  %238 = getelementptr inbounds %struct.wined3d_format_texture_info, %struct.wined3d_format_texture_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %241 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %291

245:                                              ; preds = %236
  %246 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %249 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_1D, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %247
  store i32 %254, i32* %252, align 4
  %255 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %258 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %256
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %267 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_3D, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %265
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %274 = xor i32 %273, -1
  %275 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %276 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_CUBE, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, %274
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* @WINED3DFMT_FLAG_TEXTURE, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %285 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_RECT, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, %283
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %245, %236, %228
  br label %292

292:                                              ; preds = %291, %119
  %293 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %294 = call i32 @query_view_class(%struct.wined3d_format* %293)
  %295 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %296 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %413

299:                                              ; preds = %292
  %300 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %301 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i64, i64* @WINED3D_GL_RES_TYPE_RB, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %307 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %305, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %413

313:                                              ; preds = %299
  %314 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %315 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %314, i32 0, i32 2
  %316 = load i64*, i64** %315, align 8
  %317 = load i64, i64* @ARB_INTERNALFORMAT_QUERY, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %384

321:                                              ; preds = %313
  %322 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %323 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %322, i32 0, i32 2
  %324 = load i64*, i64** %323, align 8
  %325 = load i64, i64* @ARB_TEXTURE_MULTISAMPLE, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %321
  %330 = load i32, i32* @GL_TEXTURE_2D_MULTISAMPLE, align 4
  br label %333

331:                                              ; preds = %321
  %332 = load i32, i32* @GL_RENDERBUFFER, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  store i32 %334, i32* %18, align 4
  store i32 0, i32* %13, align 4
  %335 = load i32, i32* %18, align 4
  %336 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %337 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* @GL_NUM_SAMPLE_COUNTS, align 4
  %340 = call i32 @glGetInternalformativ(i32 %335, i64 %338, i32 %339, i32 1, i32* %13)
  %341 = call i32 @GL_EXTCALL(i32 %340)
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* @MAX_MULTISAMPLE_TYPES, align 4
  %344 = call i32 @min(i32 %342, i32 %343)
  store i32 %344, i32* %13, align 4
  %345 = load i32, i32* %18, align 4
  %346 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %347 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* @GL_SAMPLES, align 4
  %350 = load i32, i32* %13, align 4
  %351 = call i32 @glGetInternalformativ(i32 %345, i64 %348, i32 %349, i32 %350, i32* %22)
  %352 = call i32 @GL_EXTCALL(i32 %351)
  %353 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %354

354:                                              ; preds = %380, %333
  %355 = load i32, i32* %16, align 4
  %356 = load i32, i32* %13, align 4
  %357 = icmp ult i32 %355, %356
  br i1 %357, label %358, label %383

358:                                              ; preds = %354
  %359 = load i32, i32* %16, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %22, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  %364 = load i32, i32* @CHAR_BIT, align 4
  %365 = sext i32 %364 to i64
  %366 = mul i64 4, %365
  %367 = icmp ugt i64 %363, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %358
  br label %380

369:                                              ; preds = %358
  %370 = load i32, i32* %16, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %22, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sub i32 %373, 1
  %375 = shl i32 1, %374
  %376 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %377 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %369, %368
  %381 = load i32, i32* %16, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %16, align 4
  br label %354

383:                                              ; preds = %354
  br label %412

384:                                              ; preds = %313
  %385 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %386 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @CHAR_BIT, align 4
  %390 = sext i32 %389 to i64
  %391 = mul i64 4, %390
  %392 = trunc i64 %391 to i32
  %393 = call i32 @min(i32 %388, i32 %392)
  %394 = call i32 @wined3d_log2i(i32 %393)
  store i32 %394, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %395

395:                                              ; preds = %408, %384
  %396 = load i32, i32* %16, align 4
  %397 = load i32, i32* %17, align 4
  %398 = icmp ule i32 %396, %397
  br i1 %398, label %399, label %411

399:                                              ; preds = %395
  %400 = load i32, i32* %16, align 4
  %401 = shl i32 1, %400
  %402 = sub i32 %401, 1
  %403 = shl i32 1, %402
  %404 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %405 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %399
  %409 = load i32, i32* %16, align 4
  %410 = add i32 %409, 1
  store i32 %410, i32* %16, align 4
  br label %395

411:                                              ; preds = %395
  br label %412

412:                                              ; preds = %411, %383
  br label %413

413:                                              ; preds = %412, %299, %292
  %414 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %414)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @query_format_flag(%struct.wined3d_gl_info*, %struct.wined3d_format*, i64, i32, i32, i8*) #2

declare dso_local i32 @format_clear_flag(%struct.wined3d_format*, i32) #2

declare dso_local i32 @format_set_flag(%struct.wined3d_format*, i32) #2

declare dso_local i32 @query_view_class(%struct.wined3d_format*) #2

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glGetInternalformativ(i32, i64, i32, i32, i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @checkGLcall(i8*) #2

declare dso_local i32 @wined3d_log2i(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
