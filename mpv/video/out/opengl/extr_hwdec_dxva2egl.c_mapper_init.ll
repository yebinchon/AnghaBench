; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2egl.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_6__, %struct.TYPE_6__, i32*, i32, %struct.priv*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.priv = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)* }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, i32, i32 }

@D3DQUERYTYPE_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to create Direct3D query interface: %s\0A\00", align 1
@D3DISSUE_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to issue Direct3D END test query: %s\0A\00", align 1
@D3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@D3DFMT_A8R8G8B8 = common dso_local global i32 0, align 4
@D3DFMT_X8R8G8B8 = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to create Direct3D9 texture: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Failed to get Direct3D9 surface from texture: %s\0A\00", align 1
@EGL_WIDTH = common dso_local global i32 0, align 4
@EGL_HEIGHT = common dso_local global i32 0, align 4
@EGL_TEXTURE_FORMAT = common dso_local global i32 0, align 4
@EGL_TEXTURE_RGBA = common dso_local global i32 0, align 4
@EGL_TEXTURE_RGB = common dso_local global i32 0, align 4
@EGL_TEXTURE_TARGET = common dso_local global i32 0, align 4
@EGL_TEXTURE_2D = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to create EGL surface\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@IMGFMT_RGB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca %struct.ra_tex_params, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.priv_owner*, %struct.priv_owner** %14, align 8
  store %struct.priv_owner* %15, %struct.priv_owner** %4, align 8
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %17 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %16, i32 0, i32 4
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %5, align 8
  %19 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %20 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_7__* @ra_gl_get(i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %6, align 8
  %23 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %24 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.priv*, %struct.priv** %5, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %29 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.priv*, %struct.priv** %5, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.priv*, %struct.priv** %5, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @D3DQUERYTYPE_EVENT, align 4
  %37 = load %struct.priv*, %struct.priv** %5, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 6
  %39 = call i32 @IDirect3DDevice9_CreateQuery(i32 %35, i32 %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mp_HRESULT_to_str(i32 %45)
  %47 = call i32 @MP_FATAL(%struct.ra_hwdec_mapper* %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %276

48:                                               ; preds = %1
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @D3DISSUE_END, align 4
  %53 = call i32 @IDirect3DQuery9_Issue(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mp_HRESULT_to_str(i32 %59)
  %61 = call i32 @MP_FATAL(%struct.ra_hwdec_mapper* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %276

62:                                               ; preds = %48
  store i32* null, i32** %8, align 8
  %63 = load %struct.priv*, %struct.priv** %5, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %67 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %71 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @D3DUSAGE_RENDERTARGET, align 4
  %75 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %76 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* @D3DFMT_A8R8G8B8, align 4
  br label %83

81:                                               ; preds = %62
  %82 = load i32, i32* @D3DFMT_X8R8G8B8, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %86 = load %struct.priv*, %struct.priv** %5, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 4
  %88 = call i32 @IDirect3DDevice9Ex_CreateTexture(i32 %65, i32 %69, i32 %73, i32 1, i32 %74, i32 %84, i32 %85, i32* %87, i32** %8)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mp_HRESULT_to_str(i32 %94)
  %96 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %276

97:                                               ; preds = %83
  %98 = load %struct.priv*, %struct.priv** %5, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.priv*, %struct.priv** %5, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 3
  %103 = call i32 @IDirect3DTexture9_GetSurfaceLevel(i32 %100, i32 0, i32* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @mp_HRESULT_to_str(i32 %109)
  %111 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %276

112:                                              ; preds = %97
  %113 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %114 = load i32, i32* @EGL_WIDTH, align 4
  store i32 %114, i32* %113, align 4
  %115 = getelementptr inbounds i32, i32* %113, i64 1
  %116 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %117 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %115, align 4
  %120 = getelementptr inbounds i32, i32* %115, i64 1
  %121 = load i32, i32* @EGL_HEIGHT, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds i32, i32* %120, i64 1
  %123 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %124 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %122, align 4
  %127 = getelementptr inbounds i32, i32* %122, i64 1
  %128 = load i32, i32* @EGL_TEXTURE_FORMAT, align 4
  store i32 %128, i32* %127, align 4
  %129 = getelementptr inbounds i32, i32* %127, i64 1
  %130 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %131 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %112
  %135 = load i32, i32* @EGL_TEXTURE_RGBA, align 4
  br label %138

136:                                              ; preds = %112
  %137 = load i32, i32* @EGL_TEXTURE_RGB, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %129, align 4
  %140 = getelementptr inbounds i32, i32* %129, i64 1
  %141 = load i32, i32* @EGL_TEXTURE_TARGET, align 4
  store i32 %141, i32* %140, align 4
  %142 = getelementptr inbounds i32, i32* %140, i64 1
  %143 = load i32, i32* @EGL_TEXTURE_2D, align 4
  store i32 %143, i32* %142, align 4
  %144 = getelementptr inbounds i32, i32* %142, i64 1
  %145 = load i32, i32* @EGL_NONE, align 4
  store i32 %145, i32* %144, align 4
  %146 = load %struct.priv*, %struct.priv** %5, align 8
  %147 = getelementptr inbounds %struct.priv, %struct.priv* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %152 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %155 = call i64 @eglCreatePbufferFromClientBuffer(i32 %148, i32 %149, i32* %150, i32 %153, i32* %154)
  %156 = load %struct.priv*, %struct.priv** %5, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.priv*, %struct.priv** %5, align 8
  %159 = getelementptr inbounds %struct.priv, %struct.priv* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @EGL_NO_SURFACE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %138
  %164 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %165 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %276

166:                                              ; preds = %138
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32 (i32, i32*)*, i32 (i32, i32*)** %168, align 8
  %170 = load %struct.priv*, %struct.priv** %5, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 1
  %172 = call i32 %169(i32 1, i32* %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load i32, i32* @GL_TEXTURE_2D, align 4
  %177 = load %struct.priv*, %struct.priv** %5, align 8
  %178 = getelementptr inbounds %struct.priv, %struct.priv* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %175(i32 %176, i32 %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %182, align 8
  %184 = load i32, i32* @GL_TEXTURE_2D, align 4
  %185 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %186 = load i32, i32* @GL_LINEAR, align 4
  %187 = call i32 %183(i32 %184, i32 %185, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %189, align 8
  %191 = load i32, i32* @GL_TEXTURE_2D, align 4
  %192 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %193 = load i32, i32* @GL_LINEAR, align 4
  %194 = call i32 %190(i32 %191, i32 %192, i32 %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %196, align 8
  %198 = load i32, i32* @GL_TEXTURE_2D, align 4
  %199 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %200 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %201 = call i32 %197(i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %203, align 8
  %205 = load i32, i32* @GL_TEXTURE_2D, align 4
  %206 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %207 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %208 = call i32 %204(i32 %205, i32 %206, i32 %207)
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32 (i32, i32)*, i32 (i32, i32)** %210, align 8
  %212 = load i32, i32* @GL_TEXTURE_2D, align 4
  %213 = call i32 %211(i32 %212, i32 0)
  %214 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 0
  store i32 2, i32* %214, align 4
  %215 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 1
  store i32 1, i32* %215, align 4
  %216 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 2
  store i32 1, i32* %216, align 4
  %217 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 3
  store i32 1, i32* %217, align 4
  %218 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 4
  %219 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %220 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %223 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 4, i32 3
  %228 = call i32 @ra_find_unorm_format(i32 %221, i32 1, i32 %227)
  store i32 %228, i32* %218, align 4
  %229 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 5
  %230 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %231 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %229, align 4
  %234 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 6
  %235 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %236 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %234, align 4
  %239 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %166
  br label %276

243:                                              ; preds = %166
  %244 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %245 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.priv*, %struct.priv** %5, align 8
  %248 = getelementptr inbounds %struct.priv, %struct.priv* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @ra_create_wrapped_tex(i32 %246, %struct.ra_tex_params* %10, i32 %249)
  %251 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %252 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %250, i32* %254, align 4
  %255 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %256 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %243
  br label %276

262:                                              ; preds = %243
  %263 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %264 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %263, i32 0, i32 0
  %265 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %266 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %265, i32 0, i32 1
  %267 = bitcast %struct.TYPE_6__* %264 to i8*
  %268 = bitcast %struct.TYPE_6__* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 24, i1 false)
  %269 = load i32, i32* @IMGFMT_RGB0, align 4
  %270 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %271 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 8
  %273 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %274 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  store i32 0, i32* %2, align 4
  br label %277

276:                                              ; preds = %261, %242, %163, %107, %92, %57, %43
  store i32 -1, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %262
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local %struct.TYPE_7__* @ra_gl_get(i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateQuery(i32, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_FATAL(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @IDirect3DQuery9_Issue(i32, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_CreateTexture(i32, i32, i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, ...) #1

declare dso_local i32 @IDirect3DTexture9_GetSurfaceLevel(i32, i32, i32*) #1

declare dso_local i64 @eglCreatePbufferFromClientBuffer(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ra_find_unorm_format(i32, i32, i32) #1

declare dso_local i32 @ra_create_wrapped_tex(i32, %struct.ra_tex_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
