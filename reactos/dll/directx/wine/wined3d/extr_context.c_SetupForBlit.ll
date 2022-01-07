; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_SetupForBlit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_SetupForBlit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.wined3d_context*)* }
%struct.wined3d_context = type { i64, i64, i64*, i8*, i8*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i32)*, i32 (i32, i32, i32, i32)*, i32 (...)*, i32 (i32)*, i32 (i32, i32, float)*, i32 (i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Setting up context %p for blitting\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Context is already set up for blitting, nothing to do\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"glDisable GL_TEXTURE_CUBE_MAP_ARB\00", align 1
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"glDisable GL_TEXTURE_3D\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"glDisable GL_TEXTURE_RECTANGLE_ARB\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"glDisable GL_TEXTURE_2D\00", align 1
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@GL_REPLACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);\00", align 1
@WINED3D_UNMAPPED_STAGE = common dso_local global i64 0, align 8
@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_OP = common dso_local global i32 0, align 4
@GL_TEXTURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"glMatrixMode(GL_TEXTURE)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"glLoadIdentity()\00", align 1
@EXT_TEXTURE_LOD_BIAS = common dso_local global i64 0, align 8
@GL_TEXTURE_FILTER_CONTROL_EXT = common dso_local global i32 0, align 4
@GL_TEXTURE_LOD_BIAS_EXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"glTexEnvf GL_TEXTURE_LOD_BIAS_EXT ...\00", align 1
@GL_MODELVIEW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"glMatrixMode(GL_MODELVIEW)\00", align 1
@GL_ALPHA_TEST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"glDisable(GL_ALPHA_TEST)\00", align 1
@WINED3D_RS_ALPHATESTENABLE = common dso_local global i32 0, align 4
@GL_LIGHTING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"glDisable GL_LIGHTING\00", align 1
@WINED3D_RS_LIGHTING = common dso_local global i32 0, align 4
@GL_FOG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"glDisable GL_FOG\00", align 1
@WINED3D_RS_FOGENABLE = common dso_local global i32 0, align 4
@ARB_SAMPLER_OBJECTS = common dso_local global i64 0, align 8
@WINED3D_TS_TEXTURE0 = common dso_local global i64 0, align 8
@GL_DEPTH_TEST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"glDisable GL_DEPTH_TEST\00", align 1
@WINED3D_RS_ZENABLE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"glDisable GL_BLEND\00", align 1
@WINED3D_RS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"glDisable GL_CULL_FACE\00", align 1
@WINED3D_RS_CULLMODE = common dso_local global i32 0, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"glDisable GL_STENCIL_TEST\00", align 1
@WINED3D_RS_STENCILENABLE = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"glDisable GL_SCISSOR_TEST\00", align 1
@WINED3D_RS_SCISSORTESTENABLE = common dso_local global i32 0, align 4
@ARB_POINT_SPRITE = common dso_local global i64 0, align 8
@GL_POINT_SPRITE_ARB = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"glDisable GL_POINT_SPRITE_ARB\00", align 1
@WINED3D_RS_POINTSPRITEENABLE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"glColorMask\00", align 1
@MAX_RENDER_TARGETS = common dso_local global i32 0, align 4
@EXT_SECONDARY_COLOR = common dso_local global i64 0, align 8
@GL_COLOR_SUM_EXT = common dso_local global i32 0, align 4
@WINED3D_RS_SPECULARENABLE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"glDisable(GL_COLOR_SUM_EXT)\00", align 1
@STATE_VDECL = common dso_local global i32 0, align 4
@WINED3D_RS_CLIPPING = common dso_local global i32 0, align 4
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@GL_LOWER_LEFT = common dso_local global i32 0, align 4
@GL_NEGATIVE_ONE_TO_ONE = common dso_local global i32 0, align 4
@STATE_VIEWPORT = common dso_local global i32 0, align 4
@WINED3D_TS_PROJECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*, %struct.wined3d_context*)* @SetupForBlit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupForBlit(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 5
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %5, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %12)
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %15 = call i32 @context_get_rt_size(%struct.wined3d_context* %14, %struct.TYPE_11__* %7)
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %27, %20
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @set_blit_dimension(%struct.wined3d_gl_info* %35, i64 %37, i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %48 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %34, %27
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %539

51:                                               ; preds = %2
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %56 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %311

62:                                               ; preds = %51
  %63 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %64 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %162, %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %165

71:                                               ; preds = %68
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  %79 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %80 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @context_active_texture(%struct.wined3d_context* %79, %struct.wined3d_gl_info* %80, i32 %81)
  %83 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %84 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %71
  %91 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %92 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %97 = call i32 %95(i32 %96)
  %98 = call i32 @checkGLcall(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %90, %71
  %100 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %101 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32 (i32)*, i32 (i32)** %103, align 8
  %105 = load i32, i32* @GL_TEXTURE_3D, align 4
  %106 = call i32 %104(i32 %105)
  %107 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %109 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %99
  %116 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %117 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32 (i32)*, i32 (i32)** %119, align 8
  %121 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %122 = call i32 %120(i32 %121)
  %123 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %115, %99
  %125 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %126 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32 (i32)*, i32 (i32)** %128, align 8
  %130 = load i32, i32* @GL_TEXTURE_2D, align 4
  %131 = call i32 %129(i32 %130)
  %132 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %134 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %136, align 8
  %138 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %139 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %140 = load i32, i32* @GL_REPLACE, align 4
  %141 = call i32 %137(i32 %138, i32 %139, i32 %140)
  %142 = call i32 @checkGLcall(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %124
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @MAX_TEXTURES, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i32, i32* @WINED3D_TSS_COLOR_OP, align 4
  %154 = call i32 @STATE_TEXTURESTAGE(i64 %152, i32 %153)
  %155 = call i32 @context_invalidate_state(%struct.wined3d_context* %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %146
  %157 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @STATE_SAMPLER(i64 %158)
  %160 = call i32 @context_invalidate_state(%struct.wined3d_context* %157, i32 %159)
  br label %161

161:                                              ; preds = %156, %124
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %8, align 4
  br label %68

165:                                              ; preds = %68
  %166 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %167 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %168 = call i32 @context_active_texture(%struct.wined3d_context* %166, %struct.wined3d_gl_info* %167, i32 0)
  %169 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %170 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %165
  %177 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %178 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32 (i32)*, i32 (i32)** %180, align 8
  %182 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %183 = call i32 %181(i32 %182)
  %184 = call i32 @checkGLcall(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %176, %165
  %186 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %187 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32 (i32)*, i32 (i32)** %189, align 8
  %191 = load i32, i32* @GL_TEXTURE_3D, align 4
  %192 = call i32 %190(i32 %191)
  %193 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %194 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %195 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %185
  %202 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %203 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32 (i32)*, i32 (i32)** %205, align 8
  %207 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %208 = call i32 %206(i32 %207)
  %209 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %210

210:                                              ; preds = %201, %185
  %211 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %212 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32 (i32)*, i32 (i32)** %214, align 8
  %216 = load i32, i32* @GL_TEXTURE_2D, align 4
  %217 = call i32 %215(i32 %216)
  %218 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %219 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %220 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 5
  %223 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %222, align 8
  %224 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %225 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %226 = load i32, i32* @GL_REPLACE, align 4
  %227 = call i32 %223(i32 %224, i32 %225, i32 %226)
  %228 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %229 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load i32 (i32)*, i32 (i32)** %231, align 8
  %233 = load i32, i32* @GL_TEXTURE, align 4
  %234 = call i32 %232(i32 %233)
  %235 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %236 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %237 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32 (...)*, i32 (...)** %239, align 8
  %241 = call i32 (...) %240()
  %242 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %243 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %244 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* @EXT_TEXTURE_LOD_BIAS, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %210
  %251 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %252 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 4
  %255 = load i32 (i32, i32, float)*, i32 (i32, i32, float)** %254, align 8
  %256 = load i32, i32* @GL_TEXTURE_FILTER_CONTROL_EXT, align 4
  %257 = load i32, i32* @GL_TEXTURE_LOD_BIAS_EXT, align 4
  %258 = call i32 %255(i32 %256, i32 %257, float 0.000000e+00)
  %259 = call i32 @checkGLcall(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %260

260:                                              ; preds = %250, %210
  %261 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %262 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 3
  %265 = load i32 (i32)*, i32 (i32)** %264, align 8
  %266 = load i32, i32* @GL_MODELVIEW, align 4
  %267 = call i32 %265(i32 %266)
  %268 = call i32 @checkGLcall(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %269 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %270 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  %273 = load i32 (...)*, i32 (...)** %272, align 8
  %274 = call i32 (...) %273()
  %275 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %276 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %277 = call i64 @WINED3D_TS_WORLD_MATRIX(i32 0)
  %278 = call i32 @STATE_TRANSFORM(i64 %277)
  %279 = call i32 @context_invalidate_state(%struct.wined3d_context* %276, i32 %278)
  %280 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %281 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32 (i32)*, i32 (i32)** %283, align 8
  %285 = load i32, i32* @GL_ALPHA_TEST, align 4
  %286 = call i32 %284(i32 %285)
  %287 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %288 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %289 = load i32, i32* @WINED3D_RS_ALPHATESTENABLE, align 4
  %290 = call i32 @STATE_RENDER(i32 %289)
  %291 = call i32 @context_invalidate_state(%struct.wined3d_context* %288, i32 %290)
  %292 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %293 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = load i32 (i32)*, i32 (i32)** %295, align 8
  %297 = load i32, i32* @GL_LIGHTING, align 4
  %298 = call i32 %296(i32 %297)
  %299 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %300 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %301 = load i32, i32* @WINED3D_RS_LIGHTING, align 4
  %302 = call i32 @STATE_RENDER(i32 %301)
  %303 = call i32 @context_invalidate_state(%struct.wined3d_context* %300, i32 %302)
  %304 = load i32, i32* @GL_FOG, align 4
  %305 = call i32 @glDisableWINE(i32 %304)
  %306 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %307 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %308 = load i32, i32* @WINED3D_RS_FOGENABLE, align 4
  %309 = call i32 @STATE_RENDER(i32 %308)
  %310 = call i32 @context_invalidate_state(%struct.wined3d_context* %307, i32 %309)
  br label %311

311:                                              ; preds = %260, %51
  %312 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %313 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i64, i64* @ARB_SAMPLER_OBJECTS, align 8
  %316 = getelementptr inbounds i64, i64* %314, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %311
  %320 = call i32 @glBindSampler(i32 0, i32 0)
  %321 = call i32 @GL_EXTCALL(i32 %320)
  br label %322

322:                                              ; preds = %319, %311
  %323 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %324 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %325 = call i32 @context_active_texture(%struct.wined3d_context* %323, %struct.wined3d_gl_info* %324, i32 0)
  %326 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %327 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %326, i32 0, i32 2
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %6, align 8
  %331 = load i64, i64* %6, align 8
  %332 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %355

334:                                              ; preds = %322
  %335 = load i64, i64* %6, align 8
  %336 = load i64, i64* @MAX_TEXTURES, align 8
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %350

338:                                              ; preds = %334
  %339 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %340 = load i64, i64* @WINED3D_TS_TEXTURE0, align 8
  %341 = load i64, i64* %6, align 8
  %342 = add nsw i64 %340, %341
  %343 = call i32 @STATE_TRANSFORM(i64 %342)
  %344 = call i32 @context_invalidate_state(%struct.wined3d_context* %339, i32 %343)
  %345 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %346 = load i64, i64* %6, align 8
  %347 = load i32, i32* @WINED3D_TSS_COLOR_OP, align 4
  %348 = call i32 @STATE_TEXTURESTAGE(i64 %346, i32 %347)
  %349 = call i32 @context_invalidate_state(%struct.wined3d_context* %345, i32 %348)
  br label %350

350:                                              ; preds = %338, %334
  %351 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %352 = load i64, i64* %6, align 8
  %353 = call i32 @STATE_SAMPLER(i64 %352)
  %354 = call i32 @context_invalidate_state(%struct.wined3d_context* %351, i32 %353)
  br label %355

355:                                              ; preds = %350, %322
  %356 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %357 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32 (i32)*, i32 (i32)** %359, align 8
  %361 = load i32, i32* @GL_DEPTH_TEST, align 4
  %362 = call i32 %360(i32 %361)
  %363 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %364 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %365 = load i32, i32* @WINED3D_RS_ZENABLE, align 4
  %366 = call i32 @STATE_RENDER(i32 %365)
  %367 = call i32 @context_invalidate_state(%struct.wined3d_context* %364, i32 %366)
  %368 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %369 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load i32 (i32)*, i32 (i32)** %371, align 8
  %373 = load i32, i32* @GL_BLEND, align 4
  %374 = call i32 %372(i32 %373)
  %375 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %376 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %377 = load i32, i32* @WINED3D_RS_ALPHABLENDENABLE, align 4
  %378 = call i32 @STATE_RENDER(i32 %377)
  %379 = call i32 @context_invalidate_state(%struct.wined3d_context* %376, i32 %378)
  %380 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %381 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = load i32 (i32)*, i32 (i32)** %383, align 8
  %385 = load i32, i32* @GL_CULL_FACE, align 4
  %386 = call i32 %384(i32 %385)
  %387 = call i32 @checkGLcall(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %388 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %389 = load i32, i32* @WINED3D_RS_CULLMODE, align 4
  %390 = call i32 @STATE_RENDER(i32 %389)
  %391 = call i32 @context_invalidate_state(%struct.wined3d_context* %388, i32 %390)
  %392 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %393 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = load i32 (i32)*, i32 (i32)** %395, align 8
  %397 = load i32, i32* @GL_STENCIL_TEST, align 4
  %398 = call i32 %396(i32 %397)
  %399 = call i32 @checkGLcall(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %400 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %401 = load i32, i32* @WINED3D_RS_STENCILENABLE, align 4
  %402 = call i32 @STATE_RENDER(i32 %401)
  %403 = call i32 @context_invalidate_state(%struct.wined3d_context* %400, i32 %402)
  %404 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %405 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  %408 = load i32 (i32)*, i32 (i32)** %407, align 8
  %409 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %410 = call i32 %408(i32 %409)
  %411 = call i32 @checkGLcall(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %412 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %413 = load i32, i32* @WINED3D_RS_SCISSORTESTENABLE, align 4
  %414 = call i32 @STATE_RENDER(i32 %413)
  %415 = call i32 @context_invalidate_state(%struct.wined3d_context* %412, i32 %414)
  %416 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %417 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %416, i32 0, i32 0
  %418 = load i64*, i64** %417, align 8
  %419 = load i64, i64* @ARB_POINT_SPRITE, align 8
  %420 = getelementptr inbounds i64, i64* %418, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %436

423:                                              ; preds = %355
  %424 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %425 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i32 (i32)*, i32 (i32)** %427, align 8
  %429 = load i32, i32* @GL_POINT_SPRITE_ARB, align 4
  %430 = call i32 %428(i32 %429)
  %431 = call i32 @checkGLcall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %432 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %433 = load i32, i32* @WINED3D_RS_POINTSPRITEENABLE, align 4
  %434 = call i32 @STATE_RENDER(i32 %433)
  %435 = call i32 @context_invalidate_state(%struct.wined3d_context* %432, i32 %434)
  br label %436

436:                                              ; preds = %423, %355
  %437 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %438 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 1
  %441 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %440, align 8
  %442 = load i32, i32* @GL_TRUE, align 4
  %443 = load i32, i32* @GL_TRUE, align 4
  %444 = load i32, i32* @GL_TRUE, align 4
  %445 = load i32, i32* @GL_TRUE, align 4
  %446 = call i32 %441(i32 %442, i32 %443, i32 %444, i32 %445)
  %447 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %448

448:                                              ; preds = %458, %436
  %449 = load i32, i32* %8, align 4
  %450 = load i32, i32* @MAX_RENDER_TARGETS, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %461

452:                                              ; preds = %448
  %453 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %454 = load i32, i32* %8, align 4
  %455 = call i32 @WINED3D_RS_COLORWRITE(i32 %454)
  %456 = call i32 @STATE_RENDER(i32 %455)
  %457 = call i32 @context_invalidate_state(%struct.wined3d_context* %453, i32 %456)
  br label %458

458:                                              ; preds = %452
  %459 = load i32, i32* %8, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %8, align 4
  br label %448

461:                                              ; preds = %448
  %462 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %463 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %462, i32 0, i32 0
  %464 = load i64*, i64** %463, align 8
  %465 = load i64, i64* @EXT_SECONDARY_COLOR, align 8
  %466 = getelementptr inbounds i64, i64* %464, i64 %465
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %482

469:                                              ; preds = %461
  %470 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %471 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %472, i32 0, i32 0
  %474 = load i32 (i32)*, i32 (i32)** %473, align 8
  %475 = load i32, i32* @GL_COLOR_SUM_EXT, align 4
  %476 = call i32 %474(i32 %475)
  %477 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %478 = load i32, i32* @WINED3D_RS_SPECULARENABLE, align 4
  %479 = call i32 @STATE_RENDER(i32 %478)
  %480 = call i32 @context_invalidate_state(%struct.wined3d_context* %477, i32 %479)
  %481 = call i32 @checkGLcall(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %482

482:                                              ; preds = %469, %461
  %483 = load i8*, i8** @TRUE, align 8
  %484 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %485 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %484, i32 0, i32 3
  store i8* %483, i8** %485, align 8
  %486 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %487 = load i32, i32* @STATE_VDECL, align 4
  %488 = call i32 @context_invalidate_state(%struct.wined3d_context* %486, i32 %487)
  %489 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %490 = call i32 @context_enable_clip_distances(%struct.wined3d_context* %489, i32 0)
  %491 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %492 = load i32, i32* @WINED3D_RS_CLIPPING, align 4
  %493 = call i32 @STATE_RENDER(i32 %492)
  %494 = call i32 @context_invalidate_state(%struct.wined3d_context* %491, i32 %493)
  %495 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %496 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %495, i32 0, i32 0
  %497 = load i64*, i64** %496, align 8
  %498 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %499 = getelementptr inbounds i64, i64* %497, i64 %498
  %500 = load i64, i64* %499, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %482
  %503 = load i32, i32* @GL_LOWER_LEFT, align 4
  %504 = load i32, i32* @GL_NEGATIVE_ONE_TO_ONE, align 4
  %505 = call i32 @glClipControl(i32 %503, i32 %504)
  %506 = call i32 @GL_EXTCALL(i32 %505)
  br label %507

507:                                              ; preds = %502, %482
  %508 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @set_blit_dimension(%struct.wined3d_gl_info* %508, i64 %510, i64 %512)
  %514 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %515 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %514, i32 0, i32 1
  %516 = load %struct.TYPE_7__*, %struct.TYPE_7__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 0
  %518 = load i32 (i32, %struct.wined3d_context*)*, i32 (i32, %struct.wined3d_context*)** %517, align 8
  %519 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %520 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %523 = call i32 %518(i32 %521, %struct.wined3d_context* %522)
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %527 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %526, i32 0, i32 0
  store i64 %525, i64* %527, align 8
  %528 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %531 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %530, i32 0, i32 1
  store i64 %529, i64* %531, align 8
  %532 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %533 = load i32, i32* @STATE_VIEWPORT, align 4
  %534 = call i32 @context_invalidate_state(%struct.wined3d_context* %532, i32 %533)
  %535 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %536 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %537 = call i32 @STATE_TRANSFORM(i64 %536)
  %538 = call i32 @context_invalidate_state(%struct.wined3d_context* %535, i32 %537)
  br label %539

539:                                              ; preds = %507, %49
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @context_get_rt_size(%struct.wined3d_context*, %struct.TYPE_11__*) #1

declare dso_local i32 @set_blit_dimension(%struct.wined3d_gl_info*, i64, i64) #1

declare dso_local i32 @context_active_texture(%struct.wined3d_context*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i64, i32) #1

declare dso_local i32 @STATE_SAMPLER(i64) #1

declare dso_local i32 @STATE_TRANSFORM(i64) #1

declare dso_local i64 @WINED3D_TS_WORLD_MATRIX(i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i32 @glDisableWINE(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindSampler(i32, i32) #1

declare dso_local i32 @WINED3D_RS_COLORWRITE(i32) #1

declare dso_local i32 @context_enable_clip_distances(%struct.wined3d_context*, i32) #1

declare dso_local i32 @glClipControl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
