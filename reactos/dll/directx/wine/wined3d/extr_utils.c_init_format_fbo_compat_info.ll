; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_fbo_compat_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_fbo_compat_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.wined3d_caps_gl_ctx = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32, %struct.TYPE_9__, %struct.wined3d_format*, %struct.TYPE_8__, i64* }
%struct.TYPE_9__ = type { i32 (i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32*)* }
%struct.wined3d_format = type { i64, i64, i32*, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (i32)*, i32 (i32)* }
%struct.TYPE_6__ = type { i32 (i32, i64, i32, i32, i64*)* }

@ARB_INTERNALFORMAT_QUERY2 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER_RENDERABLE = common dso_local global i32 0, align 4
@GL_FULL_SUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Format %s is supported as FBO color attachment, resource type %u.\0A\00", align 1
@WINED3DFMT_FLAG_FBO_ATTACHABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER_BLEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Format %s supports post-pixelshader blending, resource type %u.\0A\00", align 1
@WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Format %s doesn't support post-pixelshader blending, resource typed %u.\0A\00", align 1
@WINED3DFMT_FLAG_RENDERTARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [120 x i8] c"Format %s with rendertarget flag is not supported as FBO color attachment and no fallback specified, resource type %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Format %s is not supported as FBO color attachment, resource type %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Format %s rtInternal format is supported as FBO color attachment, resource type %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"Format %s rtInternal format is not supported as FBO color attachment, resource type %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Format %s's sRGB format is FBO attachable, resource type %u.\0A\00", align 1
@WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB = common dso_local global i32 0, align 4
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [66 x i8] c"Format %s's sRGB format is not FBO attachable, resource type %u.\0A\00", align 1
@WINED3DFMT_FLAG_SRGB_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [79 x i8] c"Format %s needs different render target formats for different resource types.\0A\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"Skipping format %s because it's a compressed format.\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Checking if format %s is supported as FBO color attachment...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_caps_gl_ctx*)* @init_format_fbo_compat_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_format_fbo_compat_info(%struct.wined3d_caps_gl_ctx* %0) #0 {
  %2 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wined3d_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wined3d_format*, align 8
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %2, align 8
  %13 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %3, align 8
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @ARB_INTERNALFORMAT_QUERY2, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %344

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %340, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %343

30:                                               ; preds = %24
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %32 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %31, i32 0, i32 2
  %33 = load %struct.wined3d_format*, %struct.wined3d_format** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %33, i64 %35
  store %struct.wined3d_format* %36, %struct.wined3d_format** %8, align 8
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %40 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %43 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %340

47:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %315, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %51 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %318

55:                                               ; preds = %48
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @wined3d_gl_type_to_enum(i32 %61)
  %63 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %64 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @GL_FRAMEBUFFER_RENDERABLE, align 4
  %67 = call i32 %60(i32 %62, i64 %65, i32 %66, i32 1, i64* %7)
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @GL_FULL_SUPPORT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %142

71:                                               ; preds = %55
  %72 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %73 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @debug_d3dformat(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %79 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %80 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %78
  store i32 %86, i32* %84, align 4
  %87 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %88 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %91 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* @TRUE, align 8
  store i64 %92, i64* %10, align 8
  %93 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %94 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @wined3d_gl_type_to_enum(i32 %98)
  %100 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %101 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @GL_FRAMEBUFFER_BLEND, align 4
  %104 = call i32 %97(i32 %99, i64 %102, i32 %103, i32 1, i64* %7)
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @GL_FULL_SUPPORT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %71
  %109 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %110 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @debug_d3dformat(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING, align 4
  %116 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %117 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %115
  store i32 %123, i32* %121, align 4
  br label %141

124:                                              ; preds = %71
  %125 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %126 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @debug_d3dformat(i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* @WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %134 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %132
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %124, %108
  br label %227

142:                                              ; preds = %55
  %143 = load i64, i64* %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %186, label %145

145:                                              ; preds = %142
  %146 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %147 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %145
  %157 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %158 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @debug_d3dformat(i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @WARN(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %166 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %164
  store i32 %172, i32* %170, align 4
  br label %180

173:                                              ; preds = %145
  %174 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %175 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @debug_d3dformat(i32 %176)
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %156
  %181 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %182 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %185 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %226

186:                                              ; preds = %142
  %187 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %188 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @wined3d_gl_type_to_enum(i32 %192)
  %194 = load i64, i64* %11, align 8
  %195 = load i32, i32* @GL_FRAMEBUFFER_RENDERABLE, align 4
  %196 = call i32 %191(i32 %193, i64 %194, i32 %195, i32 1, i64* %7)
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* @GL_FULL_SUPPORT, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %186
  %201 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %202 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @debug_d3dformat(i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load i64, i64* @TRUE, align 8
  store i64 %207, i64* %9, align 8
  br label %225

208:                                              ; preds = %186
  %209 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %210 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @debug_d3dformat(i32 %211)
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @WARN(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %212, i32 %213)
  %215 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %218 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, %216
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %208, %200
  br label %226

226:                                              ; preds = %225, %180
  br label %227

227:                                              ; preds = %226, %141
  %228 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %229 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %232 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %292

235:                                              ; preds = %227
  %236 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %237 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32 (i32, i64, i32, i32, i64*)*, i32 (i32, i64, i32, i32, i64*)** %239, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @wined3d_gl_type_to_enum(i32 %241)
  %243 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %244 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* @GL_FRAMEBUFFER_RENDERABLE, align 4
  %247 = call i32 %240(i32 %242, i64 %245, i32 %246, i32 1, i64* %7)
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* @GL_FULL_SUPPORT, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %281

251:                                              ; preds = %235
  %252 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %253 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @debug_d3dformat(i32 %254)
  %256 = load i32, i32* %5, align 4
  %257 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %255, i32 %256)
  %258 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB, align 4
  %259 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %260 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %258
  store i32 %266, i32* %264, align 4
  %267 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %268 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %267, i32 0, i32 4
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %251
  %275 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %276 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %279 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %278, i32 0, i32 1
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %274, %251
  br label %291

281:                                              ; preds = %235
  %282 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %283 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @debug_d3dformat(i32 %284)
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %285, i32 %286)
  %288 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %289 = load i32, i32* @WINED3DFMT_FLAG_SRGB_WRITE, align 4
  %290 = call i32 @format_clear_flag(%struct.wined3d_format* %288, i32 %289)
  br label %291

291:                                              ; preds = %281, %280
  br label %314

292:                                              ; preds = %227
  %293 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %294 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %292
  %304 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB, align 4
  %305 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %306 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %304
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %303, %292
  br label %314

314:                                              ; preds = %313, %291
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %5, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %5, align 4
  br label %48

318:                                              ; preds = %48
  %319 = load i64, i64* %9, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %318
  %322 = load i64, i64* %10, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %339

324:                                              ; preds = %321
  %325 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %326 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @debug_d3dformat(i32 %327)
  %329 = call i32 @FIXME(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0), i32 %328)
  %330 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %331 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %332 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE_SRGB, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING, align 4
  %337 = or i32 %335, %336
  %338 = call i32 @format_clear_flag(%struct.wined3d_format* %330, i32 %337)
  br label %339

339:                                              ; preds = %324, %321, %318
  br label %340

340:                                              ; preds = %339, %46
  %341 = load i32, i32* %4, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %4, align 4
  br label %24

343:                                              ; preds = %24
  br label %443

344:                                              ; preds = %1
  %345 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wined3d_settings, i32 0, i32 0), align 8
  %346 = load i64, i64* @ORM_FBO, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %375

348:                                              ; preds = %344
  %349 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %350 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  %352 = load i32 (i32, i32*)*, i32 (i32, i32*)** %351, align 8
  %353 = call i32 %352(i32 1, i32* %6)
  %354 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %355 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32 (i32, i32)*, i32 (i32, i32)** %356, align 8
  %358 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %359 = load i32, i32* %6, align 4
  %360 = call i32 %357(i32 %358, i32 %359)
  %361 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %362 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load i32 (i32)*, i32 (i32)** %364, align 8
  %366 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %367 = call i32 %365(i32 %366)
  %368 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %369 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32 (i32)*, i32 (i32)** %371, align 8
  %373 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %374 = call i32 %372(i32 %373)
  br label %375

375:                                              ; preds = %348, %344
  store i32 0, i32* %4, align 4
  br label %376

376:                                              ; preds = %430, %375
  %377 = load i32, i32* %4, align 4
  %378 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %379 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp ult i32 %377, %380
  br i1 %381, label %382, label %433

382:                                              ; preds = %376
  %383 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %384 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %383, i32 0, i32 2
  %385 = load %struct.wined3d_format*, %struct.wined3d_format** %384, align 8
  %386 = load i32, i32* %4, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %385, i64 %387
  store %struct.wined3d_format* %388, %struct.wined3d_format** %12, align 8
  %389 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %390 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %382
  br label %430

394:                                              ; preds = %382
  %395 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %396 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %395, i32 0, i32 2
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %394
  %405 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %406 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @debug_d3dformat(i32 %407)
  %409 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %408)
  br label %430

410:                                              ; preds = %394
  %411 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wined3d_settings, i32 0, i32 0), align 8
  %412 = load i64, i64* @ORM_FBO, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %423

414:                                              ; preds = %410
  %415 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %416 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @debug_d3dformat(i32 %417)
  %419 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %418)
  %420 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %2, align 8
  %421 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %422 = call i32 @check_fbo_compat(%struct.wined3d_caps_gl_ctx* %420, %struct.wined3d_format* %421)
  br label %429

423:                                              ; preds = %410
  %424 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %425 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %428 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %427, i32 0, i32 0
  store i64 %426, i64* %428, align 8
  br label %429

429:                                              ; preds = %423, %414
  br label %430

430:                                              ; preds = %429, %404, %393
  %431 = load i32, i32* %4, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* %4, align 4
  br label %376

433:                                              ; preds = %376
  %434 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wined3d_settings, i32 0, i32 0), align 8
  %435 = load i64, i64* @ORM_FBO, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %443

437:                                              ; preds = %433
  %438 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %439 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  %441 = load i32 (i32, i32*)*, i32 (i32, i32*)** %440, align 8
  %442 = call i32 %441(i32 1, i32* %6)
  br label %443

443:                                              ; preds = %343, %437, %433
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wined3d_gl_type_to_enum(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @format_clear_flag(%struct.wined3d_format*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @check_fbo_compat(%struct.wined3d_caps_gl_ctx*, %struct.wined3d_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
