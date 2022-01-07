; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_bind.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.wined3d_format* }
%struct.wined3d_format = type { %struct.color_fixup_desc }
%struct.color_fixup_desc = type { i64, i64, i64, i64 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_8__, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i64, i32, i64*)*, i32 (i64, i32, i32)*, i32 (i32, i32*)* }
%struct.gl_texture = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { float, float, float, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8* }
%struct.anon = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"texture %p, context %p, srgb %#x.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@WINED3D_TEXTURE_IS_SRGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"glGenTextures\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Generated texture %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to generate a texture name.\0A\00", align 1
@WINED3D_TADDRESS_WRAP = common dso_local global i8* null, align 8
@WINED3D_TEXF_LINEAR = common dso_local global i8* null, align 8
@WINED3D_TEXF_POINT = common dso_local global i8* null, align 8
@WINED3D_CMP_LESSEQUAL = common dso_local global i32 0, align 4
@EXT_TEXTURE_SRGB_DECODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Setting GL_TEXTURE_MAX_LEVEL to %u.\0A\00", align 1
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"glTexParameteri(target, GL_TEXTURE_MAX_LEVEL, texture->level_count)\00", align 1
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i64 0, align 8
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_R = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_COND_NP2 = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"glTexParameteri\00", align 1
@WINED3D_TADDRESS_CLAMP = common dso_local global i8* null, align 8
@WINED3D_TEXF_NONE = common dso_local global i8* null, align 8
@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@ARB_DEPTH_TEXTURE = common dso_local global i64 0, align 8
@GL_DEPTH_TEXTURE_MODE_ARB = common dso_local global i32 0, align 4
@GL_INTENSITY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"glTexParameteri(GL_DEPTH_TEXTURE_MODE_ARB, GL_INTENSITY)\00", align 1
@wined3d_texture_bind.swizzle_source = internal constant [6 x i64] [i64 128, i64 130, i64 129, i64 131, i64 132, i64 133], align 16
@GL_TEXTURE_SWIZZLE_RGBA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"glTexParameteriv(GL_TEXTURE_SWIZZLE_RGBA)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_bind(%struct.wined3d_texture* %0, %struct.wined3d_context* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_format*, align 8
  %9 = alloca %struct.color_fixup_desc, align 8
  %10 = alloca %struct.gl_texture*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.anon, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %7, align 8
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.wined3d_format*, %struct.wined3d_format** %18, align 8
  store %struct.wined3d_format* %19, %struct.wined3d_format** %8, align 8
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %20, i32 0, i32 0
  %22 = bitcast %struct.color_fixup_desc* %9 to i8*
  %23 = bitcast %struct.color_fixup_desc* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 32, i1 false)
  %24 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %24, %struct.wined3d_context* %25, i8* %26)
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %30 = call i32 @needs_separate_srgb_gl_texture(%struct.wined3d_context* %28, %struct.wined3d_texture* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i8*, i8** @FALSE, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %32, %3
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %39 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call %struct.gl_texture* @wined3d_texture_get_gl_texture(%struct.wined3d_texture* %51, i8* %52)
  store %struct.gl_texture* %53, %struct.gl_texture** %10, align 8
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %55 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %58 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %65 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @context_bind_texture(%struct.wined3d_context* %62, i64 %63, i32 %66)
  br label %357

68:                                               ; preds = %50
  %69 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %70 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32 (i32, i32*)*, i32 (i32, i32*)** %72, align 8
  %74 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %75 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %74, i32 0, i32 1
  %76 = call i32 %73(i32 1, i32* %75)
  %77 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %79 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.wined3d_texture*
  %83 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_texture* %82)
  %84 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %85 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %68
  %89 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %357

90:                                               ; preds = %68
  %91 = load i8*, i8** @WINED3D_TADDRESS_WRAP, align 8
  %92 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %93 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** @WINED3D_TADDRESS_WRAP, align 8
  %96 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %97 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @WINED3D_TADDRESS_WRAP, align 8
  %100 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %101 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 13
  store i8* %99, i8** %102, align 8
  %103 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %104 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memset(i32 %106, i32 0, i32 4)
  %108 = load i8*, i8** @WINED3D_TEXF_LINEAR, align 8
  %109 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %110 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** @WINED3D_TEXF_POINT, align 8
  %113 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %114 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @WINED3D_TEXF_LINEAR, align 8
  %117 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %118 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  store i8* %116, i8** %119, align 8
  %120 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %121 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store float 0.000000e+00, float* %122, align 8
  %123 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %124 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store float -1.000000e+03, float* %125, align 4
  %126 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %127 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store float 1.000000e+03, float* %128, align 8
  %129 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %130 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  %132 = load i8*, i8** @FALSE, align 8
  %133 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %134 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 11
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @WINED3D_CMP_LESSEQUAL, align 4
  %137 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %138 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 10
  store i32 %136, i32* %139, align 8
  %140 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %141 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %140, i32 0, i32 0
  %142 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %141, align 8
  %143 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @EXT_TEXTURE_SRGB_DECODE, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %90
  %150 = load i8*, i8** @TRUE, align 8
  %151 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %152 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 9
  store i8* %150, i8** %153, align 8
  br label %159

154:                                              ; preds = %90
  %155 = load i8*, i8** %6, align 8
  %156 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %157 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  store i8* %155, i8** %158, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %161 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %163 = call i32 @wined3d_texture_set_dirty(%struct.wined3d_texture* %162)
  %164 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %167 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @context_bind_texture(%struct.wined3d_context* %164, i64 %165, i32 %168)
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @GL_TEXTURE_RECTANGLE_ARB, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %194

173:                                              ; preds = %159
  %174 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %175 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %struct.wined3d_texture*
  %180 = call i32 (i8*, %struct.wined3d_texture*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.wined3d_texture* %179)
  %181 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %182 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %184, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %188 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %189 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = call i32 %185(i64 %186, i32 %187, i32 %191)
  %193 = call i32 @checkGLcall(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %194

194:                                              ; preds = %173, %159
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* @GL_TEXTURE_CUBE_MAP_ARB, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %226

198:                                              ; preds = %194
  %199 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %200 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %202, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %206 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %207 = call i32 %203(i64 %204, i32 %205, i32 %206)
  %208 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %209 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %211, align 8
  %213 = load i64, i64* %11, align 8
  %214 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %215 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %216 = call i32 %212(i64 %213, i32 %214, i32 %215)
  %217 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %218 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %220, align 8
  %222 = load i64, i64* %11, align 8
  %223 = load i32, i32* @GL_TEXTURE_WRAP_R, align 4
  %224 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %225 = call i32 %221(i64 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %198, %194
  %227 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %228 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @WINED3D_TEXTURE_COND_NP2, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %291

233:                                              ; preds = %226
  %234 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %235 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %241 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %242 = call i32 %238(i64 %239, i32 %240, i32 %241)
  %243 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %244 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %246, align 8
  %248 = load i64, i64* %11, align 8
  %249 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %250 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %251 = call i32 %247(i64 %248, i32 %249, i32 %250)
  %252 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %253 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %255, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %259 = load i32, i32* @GL_NEAREST, align 4
  %260 = call i32 %256(i64 %257, i32 %258, i32 %259)
  %261 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %262 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %264, align 8
  %266 = load i64, i64* %11, align 8
  %267 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %268 = load i32, i32* @GL_NEAREST, align 4
  %269 = call i32 %265(i64 %266, i32 %267, i32 %268)
  %270 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i8*, i8** @WINED3D_TADDRESS_CLAMP, align 8
  %272 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %273 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 8
  store i8* %271, i8** %274, align 8
  %275 = load i8*, i8** @WINED3D_TADDRESS_CLAMP, align 8
  %276 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %277 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 7
  store i8* %275, i8** %278, align 8
  %279 = load i8*, i8** @WINED3D_TEXF_POINT, align 8
  %280 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %281 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 6
  store i8* %279, i8** %282, align 8
  %283 = load i8*, i8** @WINED3D_TEXF_POINT, align 8
  %284 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %285 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 5
  store i8* %283, i8** %286, align 8
  %287 = load i8*, i8** @WINED3D_TEXF_NONE, align 8
  %288 = load %struct.gl_texture*, %struct.gl_texture** %10, align 8
  %289 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 4
  store i8* %287, i8** %290, align 8
  br label %291

291:                                              ; preds = %233, %226
  %292 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %293 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %292, i32 0, i32 1
  %294 = load i64*, i64** %293, align 8
  %295 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %291
  %300 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %301 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load i64, i64* @ARB_DEPTH_TEXTURE, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %299
  %308 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %309 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  %312 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %311, align 8
  %313 = load i64, i64* %11, align 8
  %314 = load i32, i32* @GL_DEPTH_TEXTURE_MODE_ARB, align 4
  %315 = load i32, i32* @GL_INTENSITY, align 4
  %316 = call i32 %312(i64 %313, i32 %314, i32 %315)
  %317 = call i32 @checkGLcall(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  br label %318

318:                                              ; preds = %307, %299, %291
  %319 = call i32 @is_identity_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8 %9)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %357, label %321

321:                                              ; preds = %318
  %322 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %323 = load %struct.wined3d_format*, %struct.wined3d_format** %8, align 8
  %324 = call i64 @can_use_texture_swizzle(%struct.wined3d_gl_info* %322, %struct.wined3d_format* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %357

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %9, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds [6 x i64], [6 x i64]* @wined3d_texture_bind.swizzle_source, i64 0, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i64 %330, i64* %331, align 8
  %332 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %9, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds [6 x i64], [6 x i64]* @wined3d_texture_bind.swizzle_source, i64 0, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  store i64 %335, i64* %336, align 8
  %337 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %9, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds [6 x i64], [6 x i64]* @wined3d_texture_bind.swizzle_source, i64 0, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  store i64 %340, i64* %341, align 8
  %342 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %9, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds [6 x i64], [6 x i64]* @wined3d_texture_bind.swizzle_source, i64 0, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 3
  store i64 %345, i64* %346, align 8
  %347 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %348 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32 (i64, i32, i64*)*, i32 (i64, i32, i64*)** %350, align 8
  %352 = load i64, i64* %11, align 8
  %353 = load i32, i32* @GL_TEXTURE_SWIZZLE_RGBA, align 4
  %354 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %355 = call i32 %351(i64 %352, i32 %353, i64* %354)
  %356 = call i32 @checkGLcall(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %357

357:                                              ; preds = %61, %88, %326, %321, %318
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, ...) #2

declare dso_local i32 @needs_separate_srgb_gl_texture(%struct.wined3d_context*, %struct.wined3d_texture*) #2

declare dso_local %struct.gl_texture* @wined3d_texture_get_gl_texture(%struct.wined3d_texture*, i8*) #2

declare dso_local i32 @context_bind_texture(%struct.wined3d_context*, i64, i32) #2

declare dso_local i32 @checkGLcall(i8*) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @wined3d_texture_set_dirty(%struct.wined3d_texture*) #2

declare dso_local i32 @is_identity_fixup(%struct.color_fixup_desc* byval(%struct.color_fixup_desc) align 8) #2

declare dso_local i64 @can_use_texture_swizzle(%struct.wined3d_gl_info*, %struct.wined3d_format*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
