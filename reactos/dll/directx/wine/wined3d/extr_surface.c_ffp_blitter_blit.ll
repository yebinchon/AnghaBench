; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_blit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.wined3d_blitter = type { %struct.TYPE_8__*, %struct.wined3d_blitter* }
%struct.TYPE_8__ = type { i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)* }
%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_13__, i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (...)*, i32 (i32)*, i32 (i32, float)*, i32 (i32)* }
%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.wined3d_resource, i32 }
%struct.TYPE_11__ = type { %struct.wined3d_texture* }
%struct.TYPE_10__ = type { i32, %struct.wined3d_color_key }
%struct.wined3d_color_key = type { i64 }
%struct.wined3d_resource = type { %struct.TYPE_9__*, %struct.wined3d_device* }
%struct.TYPE_9__ = type { i64 }
%struct.wined3d_device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Blt from surface %p to rendertarget %p\0A\00", align 1
@WINED3D_CKEY_SRC_BLT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Destination surface %p is onscreen.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Destination surface %p is offscreen.\0A\00", align 1
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"glEnable(target)\00", align 1
@WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST = common dso_local global i32 0, align 4
@GL_ALPHA_TEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"glEnable(GL_ALPHA_TEST)\00", align 1
@WINED3DFMT_P8_UINT = common dso_local global i64 0, align 8
@GL_NOTEQUAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"glAlphaFunc\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"glDisable(GL_ALPHA_TEST)\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_2D)\00", align 1
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"glDisable(GL_TEXTURE_CUBE_MAP_ARB)\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"glDisable(GL_TEXTURE_RECTANGLE_ARB)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)* @ffp_blitter_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffp_blitter_blit(%struct.wined3d_blitter* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_surface* %3, i32 %4, i32* %5, %struct.wined3d_surface* %6, i32 %7, i32* %8, %struct.wined3d_color_key* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_blitter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_context*, align 8
  %16 = alloca %struct.wined3d_surface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.wined3d_surface*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.wined3d_color_key*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.wined3d_texture*, align 8
  %26 = alloca %struct.wined3d_texture*, align 8
  %27 = alloca %struct.wined3d_gl_info*, align 8
  %28 = alloca %struct.wined3d_resource*, align 8
  %29 = alloca %struct.wined3d_resource*, align 8
  %30 = alloca %struct.wined3d_color_key, align 8
  %31 = alloca %struct.wined3d_device*, align 8
  %32 = alloca %struct.wined3d_blitter*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %15, align 8
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store %struct.wined3d_surface* %6, %struct.wined3d_surface** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store %struct.wined3d_color_key* %9, %struct.wined3d_color_key** %22, align 8
  store i32 %10, i32* %23, align 4
  %36 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %37 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %36)
  store i32 %37, i32* %24, align 4
  %38 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %39 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %38, i32 0, i32 0
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %39, align 8
  store %struct.wined3d_texture* %40, %struct.wined3d_texture** %25, align 8
  %41 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %42 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %41, i32 0, i32 0
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %42, align 8
  store %struct.wined3d_texture* %43, %struct.wined3d_texture** %26, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %45 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %44, i32 0, i32 1
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %45, align 8
  store %struct.wined3d_gl_info* %46, %struct.wined3d_gl_info** %27, align 8
  %47 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %48 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %47, i32 0, i32 2
  store %struct.wined3d_resource* %48, %struct.wined3d_resource** %28, align 8
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %50 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %49, i32 0, i32 2
  store %struct.wined3d_resource* %50, %struct.wined3d_resource** %29, align 8
  %51 = load %struct.wined3d_resource*, %struct.wined3d_resource** %29, align 8
  %52 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %51, i32 0, i32 1
  %53 = load %struct.wined3d_device*, %struct.wined3d_device** %52, align 8
  store %struct.wined3d_device* %53, %struct.wined3d_device** %31, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %56 = load %struct.wined3d_resource*, %struct.wined3d_resource** %28, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load %struct.wined3d_resource*, %struct.wined3d_resource** %29, align 8
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @ffp_blit_supported(i32 %54, %struct.wined3d_context* %55, %struct.wined3d_resource* %56, i32 %57, %struct.wined3d_resource* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %11
  %63 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %13, align 8
  %64 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %63, i32 0, i32 1
  %65 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %64, align 8
  store %struct.wined3d_blitter* %65, %struct.wined3d_blitter** %32, align 8
  %66 = icmp ne %struct.wined3d_blitter* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %32, align 8
  %69 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)*, i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_color_key*, i32)** %71, align 8
  %73 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %32, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %76 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %80 = load i32, i32* %20, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %83 = load i32, i32* %23, align 4
  %84 = call i32 %72(%struct.wined3d_blitter* %73, i32 %74, %struct.wined3d_context* %75, %struct.wined3d_surface* %76, i32 %77, i32* %78, %struct.wined3d_surface* %79, i32 %80, i32* %81, %struct.wined3d_color_key* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %317

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %11
  %87 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %88 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %89 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %87, %struct.wined3d_surface* %88)
  %90 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %91 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = bitcast %struct.wined3d_color_key* %30 to i8*
  %94 = bitcast %struct.wined3d_color_key* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  %95 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %96 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %33, align 4
  %99 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %100 = load i32, i32* @WINED3D_CKEY_SRC_BLT, align 4
  %101 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %102 = call i32 @wined3d_texture_set_color_key(%struct.wined3d_texture* %99, i32 %100, %struct.wined3d_color_key* %101)
  %103 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %104 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %103, %struct.wined3d_context* %104, i32 %105)
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %108 = load %struct.wined3d_device*, %struct.wined3d_device** %31, align 8
  %109 = call i32 @context_apply_blit_state(%struct.wined3d_context* %107, %struct.wined3d_device* %108)
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %86
  %114 = load i32*, i32** %21, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %34, align 4
  %116 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %117 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %118 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @surface_translate_drawable_coords(%struct.wined3d_surface* %116, i32 %119, i32* %34)
  store i32* %34, i32** %21, align 8
  br label %121

121:                                              ; preds = %113, %86
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @wined3d_settings, i32 0, i32 0), align 8
  %123 = load i64, i64* @ORM_FBO, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %121
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %131 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_surface* %130)
  %132 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %133 = call i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %132)
  store i32 %133, i32* %35, align 4
  br label %138

134:                                              ; preds = %125
  %135 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %136 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_surface* %135)
  %137 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  store i32 %137, i32* %35, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %140 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %141 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @context_apply_fbo_state_blit(%struct.wined3d_context* %139, i32 %140, %struct.wined3d_surface* %141, i32* null, i32 %142)
  %144 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %145 = load i32, i32* %35, align 4
  %146 = call i32 @context_set_draw_buffer(%struct.wined3d_context* %144, i32 %145)
  %147 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %148 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %149 = call i32 @context_check_fbo_status(%struct.wined3d_context* %147, i32 %148)
  %150 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %151 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %152 = call i32 @context_invalidate_state(%struct.wined3d_context* %150, i32 %151)
  br label %153

153:                                              ; preds = %138, %121
  %154 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %155 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32 (i32)*, i32 (i32)** %157, align 8
  %159 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %160 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %158(i32 %161)
  %163 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %153
  %168 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %169 = icmp ne %struct.wined3d_color_key* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %167, %153
  %171 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %172 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  %175 = load i32 (i32)*, i32 (i32)** %174, align 8
  %176 = load i32, i32* @GL_ALPHA_TEST, align 4
  %177 = call i32 %175(i32 %176)
  %178 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %170, %167
  %180 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %181 = icmp ne %struct.wined3d_color_key* %180, null
  br i1 %181, label %182, label %216

182:                                              ; preds = %179
  %183 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %184 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @WINED3DFMT_P8_UINT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %182
  %192 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %193 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32 (i32, float)*, i32 (i32, float)** %195, align 8
  %197 = load i32, i32* @GL_NOTEQUAL, align 4
  %198 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %199 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.wined3d_color_key, %struct.wined3d_color_key* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to float
  %204 = fdiv float %203, 2.550000e+02
  %205 = call i32 %196(i32 %197, float %204)
  br label %214

206:                                              ; preds = %182
  %207 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %208 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i32 (i32, float)*, i32 (i32, float)** %210, align 8
  %212 = load i32, i32* @GL_NOTEQUAL, align 4
  %213 = call i32 %211(i32 %212, float 0.000000e+00)
  br label %214

214:                                              ; preds = %206, %191
  %215 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %179
  %217 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %218 = load i32, i32* %24, align 4
  %219 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %220 = load i32*, i32** %18, align 8
  %221 = load i32*, i32** %21, align 8
  %222 = load i32, i32* %23, align 4
  %223 = call i32 @draw_textured_quad(%struct.wined3d_texture* %217, i32 %218, %struct.wined3d_context* %219, i32* %220, i32* %221, i32 %222)
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* @WINED3D_BLIT_OP_COLOR_BLIT_ALPHATEST, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %216
  %228 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %229 = icmp ne %struct.wined3d_color_key* %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %227, %216
  %231 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %232 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32 (i32)*, i32 (i32)** %234, align 8
  %236 = load i32, i32* @GL_ALPHA_TEST, align 4
  %237 = call i32 %235(i32 %236)
  %238 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %239

239:                                              ; preds = %230, %227
  %240 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %241 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load i32 (i32)*, i32 (i32)** %243, align 8
  %245 = load i32, i32* @GL_TEXTURE_2D, align 4
  %246 = call i32 %244(i32 %245)
  %247 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %248 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %249 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %248, i32 0, i32 1
  %250 = load i64*, i64** %249, align 8
  %251 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %239
  %256 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %257 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  %260 = load i32 (i32)*, i32 (i32)** %259, align 8
  %261 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %262 = call i32 %260(i32 %261)
  %263 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %264

264:                                              ; preds = %255, %239
  %265 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %266 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %265, i32 0, i32 1
  %267 = load i64*, i64** %266, align 8
  %268 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %264
  %273 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %274 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32 (i32)*, i32 (i32)** %276, align 8
  %278 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %279 = call i32 %277(i32 %278)
  %280 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %281

281:                                              ; preds = %272, %264
  %282 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @wined3d_settings, i32 0, i32 1), align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %297, label %284

284:                                              ; preds = %281
  %285 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %286 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %285, i32 0, i32 0
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = icmp ne %struct.TYPE_11__* %287, null
  br i1 %288, label %289, label %304

289:                                              ; preds = %284
  %290 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %291 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %290, i32 0, i32 0
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load %struct.wined3d_texture*, %struct.wined3d_texture** %293, align 8
  %295 = load %struct.wined3d_texture*, %struct.wined3d_texture** %26, align 8
  %296 = icmp eq %struct.wined3d_texture* %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %289, %281
  %298 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %27, align 8
  %299 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load i32 (...)*, i32 (...)** %301, align 8
  %303 = call i32 (...) %302()
  br label %304

304:                                              ; preds = %297, %289, %284
  %305 = load %struct.wined3d_texture*, %struct.wined3d_texture** %25, align 8
  %306 = load i32, i32* @WINED3D_CKEY_SRC_BLT, align 4
  %307 = load i32, i32* %33, align 4
  %308 = load i32, i32* @WINED3D_CKEY_SRC_BLT, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %313

312:                                              ; preds = %304
  br label %313

313:                                              ; preds = %312, %311
  %314 = phi %struct.wined3d_color_key* [ %30, %311 ], [ null, %312 ]
  %315 = call i32 @wined3d_texture_set_color_key(%struct.wined3d_texture* %305, i32 %306, %struct.wined3d_color_key* %314)
  %316 = load i32, i32* %20, align 4
  store i32 %316, i32* %12, align 4
  br label %317

317:                                              ; preds = %313, %67
  %318 = load i32, i32* %12, align 4
  ret i32 %318
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @ffp_blit_supported(i32, %struct.wined3d_context*, %struct.wined3d_resource*, i32, %struct.wined3d_resource*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_surface*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wined3d_texture_set_color_key(%struct.wined3d_texture*, i32, %struct.wined3d_color_key*) #1

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @context_apply_blit_state(%struct.wined3d_context*, %struct.wined3d_device*) #1

declare dso_local i32 @surface_translate_drawable_coords(%struct.wined3d_surface*, i32, i32*) #1

declare dso_local i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture*) #1

declare dso_local i32 @context_apply_fbo_state_blit(%struct.wined3d_context*, i32, %struct.wined3d_surface*, i32*, i32) #1

declare dso_local i32 @context_set_draw_buffer(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @draw_textured_quad(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
