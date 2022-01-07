; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2gldx.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_dxva2gldx.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_6__, %struct.TYPE_6__, i32*, i32, %struct.priv*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.priv = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32*)* }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, i32, i32 }

@SHARED_SURFACE_D3DFMT = common dso_local global i32 0, align 4
@D3DMULTISAMPLE_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed creating offscreen Direct3D surface: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed setting Direct3D/OpenGL share handle for surface: %s\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@WGL_ACCESS_READ_ONLY_NV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to register Direct3D surface with OpenGL: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed locking texture for access by OpenGL %s\0A\00", align 1
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
  %9 = alloca %struct.ra_tex_params, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %10 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %10, i32 0, i32 5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.priv_owner*, %struct.priv_owner** %13, align 8
  store %struct.priv_owner* %14, %struct.priv_owner** %4, align 8
  %15 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %16 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %15, i32 0, i32 4
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %5, align 8
  %18 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %19 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_7__* @ra_gl_get(i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  %22 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %23 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %28 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  store i32* null, i32** %8, align 8
  %32 = load %struct.priv*, %struct.priv** %5, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %36 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %40 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SHARED_SURFACE_D3DFMT, align 4
  %44 = load i32, i32* @D3DMULTISAMPLE_NONE, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = load %struct.priv*, %struct.priv** %5, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 3
  %48 = call i32 @IDirect3DDevice9Ex_CreateRenderTarget(i32 %34, i32 %38, i32 %42, i32 %43, i32 %44, i32 0, i32 %45, i32* %47, i32** %8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mp_HRESULT_to_str(i32 %54)
  %56 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %2, align 4
  br label %219

57:                                               ; preds = %1
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32 (i32, i32*)*, i32 (i32, i32*)** %62, align 8
  %64 = load %struct.priv*, %struct.priv** %5, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 %63(i32 %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %72 = call i32 (...) @mp_LastError_to_str()
  %73 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %2, align 4
  br label %219

74:                                               ; preds = %60, %57
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load i32 (i32, i32*)*, i32 (i32, i32*)** %76, align 8
  %78 = load %struct.priv*, %struct.priv** %5, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 0
  %80 = call i32 %77(i32 1, i32* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32 (i32, i32)*, i32 (i32, i32)** %82, align 8
  %84 = load i32, i32* @GL_TEXTURE_2D, align 4
  %85 = load %struct.priv*, %struct.priv** %5, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %83(i32 %84, i32 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %90, align 8
  %92 = load i32, i32* @GL_TEXTURE_2D, align 4
  %93 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %94 = load i32, i32* @GL_LINEAR, align 4
  %95 = call i32 %91(i32 %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %97, align 8
  %99 = load i32, i32* @GL_TEXTURE_2D, align 4
  %100 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %101 = load i32, i32* @GL_LINEAR, align 4
  %102 = call i32 %98(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %104, align 8
  %106 = load i32, i32* @GL_TEXTURE_2D, align 4
  %107 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %108 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %109 = call i32 %105(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %111, align 8
  %113 = load i32, i32* @GL_TEXTURE_2D, align 4
  %114 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %115 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %116 = call i32 %112(i32 %113, i32 %114, i32 %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32 (i32, i32)*, i32 (i32, i32)** %118, align 8
  %120 = load i32, i32* @GL_TEXTURE_2D, align 4
  %121 = call i32 %119(i32 %120, i32 0)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %123, align 8
  %125 = load %struct.priv*, %struct.priv** %5, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.priv*, %struct.priv** %5, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.priv*, %struct.priv** %5, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @GL_TEXTURE_2D, align 4
  %135 = load i32, i32* @WGL_ACCESS_READ_ONLY_NV, align 4
  %136 = call i32 %124(i32 %127, i32 %130, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.priv*, %struct.priv** %5, align 8
  %138 = getelementptr inbounds %struct.priv, %struct.priv* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.priv*, %struct.priv** %5, align 8
  %140 = getelementptr inbounds %struct.priv, %struct.priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %74
  %144 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %145 = call i32 (...) @mp_LastError_to_str()
  %146 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %144, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  store i32 -1, i32* %2, align 4
  br label %219

147:                                              ; preds = %74
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %149, align 8
  %151 = load %struct.priv*, %struct.priv** %5, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.priv*, %struct.priv** %5, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 1
  %156 = call i32 %150(i32 %153, i32 1, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %147
  %159 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %160 = call i32 (...) @mp_LastError_to_str()
  %161 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  store i32 -1, i32* %2, align 4
  br label %219

162:                                              ; preds = %147
  %163 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 0
  store i32 2, i32* %163, align 4
  %164 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 2
  store i32 1, i32* %165, align 4
  %166 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 3
  store i32 1, i32* %166, align 4
  %167 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 4
  %168 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %169 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ra_find_unorm_format(i32 %170, i32 1, i32 4)
  store i32 %171, i32* %167, align 4
  %172 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 5
  %173 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %174 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %172, align 4
  %177 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 6
  %178 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %179 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %177, align 4
  %182 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %9, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %162
  store i32 -1, i32* %2, align 4
  br label %219

186:                                              ; preds = %162
  %187 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %188 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.priv*, %struct.priv** %5, align 8
  %191 = getelementptr inbounds %struct.priv, %struct.priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ra_create_wrapped_tex(i32 %189, %struct.ra_tex_params* %9, i32 %192)
  %194 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %195 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %193, i32* %197, align 4
  %198 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %199 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %186
  store i32 -1, i32* %2, align 4
  br label %219

205:                                              ; preds = %186
  %206 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %207 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %206, i32 0, i32 0
  %208 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %209 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %208, i32 0, i32 1
  %210 = bitcast %struct.TYPE_6__* %207 to i8*
  %211 = bitcast %struct.TYPE_6__* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 24, i1 false)
  %212 = load i32, i32* @IMGFMT_RGB0, align 4
  %213 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %214 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 8
  %216 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %217 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %205, %204, %185, %158, %143, %70, %52
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_7__* @ra_gl_get(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_CreateRenderTarget(i32, i32, i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @mp_LastError_to_str(...) #1

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
