; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_clear_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_clear_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.wined3d_context = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_21__*, %struct.wined3d_gl_info* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_17__, i64*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (i32)*, i32 (i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_fb_state* }
%struct.wined3d_fb_state = type { %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** }
%struct.wined3d_rendertarget_view = type { %struct.TYPE_14__*, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { i32* }

@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid render target config, need at least one attachment.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@ARB_FRAMEBUFFER_SRGB = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER_SRGB = common dso_local global i32 0, align 4
@WINED3D_RS_SRGBWRITEENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"setting up state for clear\00", align 1
@WINED3D_RS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_SCISSORTESTENABLE = common dso_local global i32 0, align 4
@STATE_SCISSORRECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @context_apply_clear_state(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2, %struct.wined3d_fb_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_fb_state*, align 8
  %10 = alloca %struct.wined3d_rendertarget_view**, align 8
  %11 = alloca %struct.wined3d_rendertarget_view*, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wined3d_fb_state* %3, %struct.wined3d_fb_state** %9, align 8
  %16 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %9, align 8
  %17 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %16, i32 0, i32 1
  %18 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %17, align 8
  store %struct.wined3d_rendertarget_view** %18, %struct.wined3d_rendertarget_view*** %10, align 8
  %19 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %9, align 8
  %20 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %19, i32 0, i32 0
  %21 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %20, align 8
  store %struct.wined3d_rendertarget_view* %21, %struct.wined3d_rendertarget_view** %11, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 4
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  store %struct.wined3d_gl_info* %24, %struct.wined3d_gl_info** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %26 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %27 = call i64 @isStateDirty(%struct.wined3d_context* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %4
  %30 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %9, align 8
  %31 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %31, i32 0, i32 0
  %33 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %32, align 8
  %34 = icmp ne %struct.wined3d_fb_state* %30, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %38 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %235

42:                                               ; preds = %35, %29, %4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %45 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  %46 = call i32 @have_framebuffer_attachment(i32 %43, %struct.wined3d_rendertarget_view** %44, %struct.wined3d_rendertarget_view* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = call i32 @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %405

51:                                               ; preds = %42
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @wined3d_settings, i32 0, i32 0), align 8
  %53 = load i64, i64* @ORM_FBO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %219

55:                                               ; preds = %51
  %56 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %57 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  %58 = call i32 @context_validate_onscreen_formats(%struct.wined3d_context* %56, %struct.wined3d_rendertarget_view* %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %63 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %62, i64 0
  %64 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %63, align 8
  %65 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %64, i32 0, i32 1
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_19__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %203

69:                                               ; preds = %61, %55
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 3
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = call i32 @memset(%struct.TYPE_21__* %72, i32 0, i32 8)
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %167, %69
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %170

78:                                               ; preds = %74
  %79 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %79, i64 %81
  %83 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %82, align 8
  %84 = icmp ne %struct.wined3d_rendertarget_view* %83, null
  br i1 %84, label %85, label %142

85:                                               ; preds = %78
  %86 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %86, i64 %88
  %90 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %89, align 8
  %91 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %94 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %93, i32 0, i32 3
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 3
  store i32 %92, i32* %99, align 8
  %100 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %100, i64 %102
  %104 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %103, align 8
  %105 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %108 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %107, i32 0, i32 3
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %113, align 8
  %114 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %115 = load i32, i32* %15, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %114, i64 %116
  %118 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %117, align 8
  %119 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %122 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %121, i32 0, i32 3
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  store i32 %120, i32* %127, align 4
  %128 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %129 = load i32, i32* %15, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %128, i64 %130
  %132 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %131, align 8
  %133 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %136 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %135, i32 0, i32 3
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  store i32 %134, i32* %141, align 8
  br label %142

142:                                              ; preds = %85, %78
  %143 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %143, i64 %145
  %147 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %146, align 8
  %148 = icmp ne %struct.wined3d_rendertarget_view* %147, null
  br i1 %148, label %149, label %166

149:                                              ; preds = %142
  %150 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %151 = load i32, i32* %15, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %150, i64 %152
  %154 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %153, align 8
  %155 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @WINED3DFMT_NULL, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load i32, i32* %15, align 4
  %163 = shl i32 1, %162
  %164 = load i32, i32* %13, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %161, %149, %142
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %15, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %74

170:                                              ; preds = %74
  %171 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %172 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %173 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %174 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %173, i32 0, i32 3
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  %177 = call %struct.TYPE_20__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %176)
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %170
  %181 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %182 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %181, i64 0
  %183 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %182, align 8
  %184 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %183, i32 0, i32 1
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  br label %189

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %180
  %190 = phi i32 [ %187, %180 ], [ 0, %188 ]
  %191 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  %192 = icmp ne %struct.wined3d_rendertarget_view* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  %195 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  br label %200

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %193
  %201 = phi i32 [ %198, %193 ], [ 0, %199 ]
  %202 = call i32 @context_apply_fbo_state(%struct.wined3d_context* %171, i32 %172, %struct.TYPE_21__* %175, %struct.TYPE_20__* %177, i32 %190, i32 %201)
  br label %215

203:                                              ; preds = %61
  %204 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %205 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %206 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %207 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %208 = call i32 @context_apply_fbo_state(%struct.wined3d_context* %204, i32 %205, %struct.TYPE_21__* null, %struct.TYPE_20__* null, i32 %206, i32 %207)
  %209 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %210 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %209, i64 0
  %211 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %210, align 8
  %212 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %211, i32 0, i32 1
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = call i32 @context_generate_rt_mask_from_resource(%struct.TYPE_19__* %213)
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %203, %200
  %216 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %217 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %218 = call i32 @context_invalidate_state(%struct.wined3d_context* %216, i32 %217)
  br label %234

219:                                              ; preds = %51
  %220 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %225 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %224, i64 0
  %226 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %225, align 8
  %227 = call %struct.TYPE_20__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %226)
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  br label %231

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %223
  %232 = phi i32* [ %229, %223 ], [ null, %230 ]
  %233 = call i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context* %220, i32* %232)
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %231, %215
  br label %300

235:                                              ; preds = %35
  %236 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @wined3d_settings, i32 0, i32 0), align 8
  %237 = load i64, i64* @ORM_FBO, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %284

239:                                              ; preds = %235
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %244 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %243, i64 0
  %245 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %244, align 8
  %246 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %245, i32 0, i32 1
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %246, align 8
  %248 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_19__* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %284

250:                                              ; preds = %242, %239
  store i32 0, i32* %15, align 4
  br label %251

251:                                              ; preds = %280, %250
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %251
  %256 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %257 = load i32, i32* %15, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %256, i64 %258
  %260 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %259, align 8
  %261 = icmp ne %struct.wined3d_rendertarget_view* %260, null
  br i1 %261, label %262, label %279

262:                                              ; preds = %255
  %263 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %264 = load i32, i32* %15, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %263, i64 %265
  %267 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %266, align 8
  %268 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %267, i32 0, i32 0
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @WINED3DFMT_NULL, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %262
  %275 = load i32, i32* %15, align 4
  %276 = shl i32 1, %275
  %277 = load i32, i32* %13, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %13, align 4
  br label %279

279:                                              ; preds = %274, %262, %255
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %15, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %15, align 4
  br label %251

283:                                              ; preds = %251
  br label %299

284:                                              ; preds = %242, %235
  %285 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %284
  %289 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %10, align 8
  %290 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %289, i64 0
  %291 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %290, align 8
  %292 = call %struct.TYPE_20__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %291)
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  br label %296

295:                                              ; preds = %284
  br label %296

296:                                              ; preds = %295, %288
  %297 = phi i32* [ %294, %288 ], [ null, %295 ]
  %298 = call i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context* %285, i32* %297)
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %296, %283
  br label %300

300:                                              ; preds = %299, %234
  %301 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %302 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %301, i32 0, i32 2
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = icmp ne %struct.TYPE_15__* %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %307 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %306, i32 0, i32 2
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  br label %313

310:                                              ; preds = %300
  %311 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %312 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %311, i32 0, i32 0
  br label %313

313:                                              ; preds = %310, %305
  %314 = phi i32* [ %309, %305 ], [ %312, %310 ]
  store i32* %314, i32** %14, align 8
  %315 = load i32, i32* %13, align 4
  %316 = load i32*, i32** %14, align 8
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %315, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  %320 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %321 = load i32, i32* %13, align 4
  %322 = call i32 @context_apply_draw_buffers(%struct.wined3d_context* %320, i32 %321)
  %323 = load i32, i32* %13, align 4
  %324 = load i32*, i32** %14, align 8
  store i32 %323, i32* %324, align 4
  %325 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %326 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %327 = call i32 @context_invalidate_state(%struct.wined3d_context* %325, i32 %326)
  br label %328

328:                                              ; preds = %319, %313
  %329 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @wined3d_settings, i32 0, i32 0), align 8
  %330 = load i64, i64* @ORM_FBO, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %334 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %335 = call i32 @context_check_fbo_status(%struct.wined3d_context* %333, i32 %334)
  br label %336

336:                                              ; preds = %332, %328
  %337 = load i32, i32* @FALSE, align 4
  %338 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %339 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %341 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = load i32 (i32)*, i32 (i32)** %343, align 8
  %345 = load i32, i32* @GL_BLEND, align 4
  %346 = call i32 %344(i32 %345)
  %347 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %348 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 1
  %351 = load i32 (i32)*, i32 (i32)** %350, align 8
  %352 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %353 = call i32 %351(i32 %352)
  %354 = load i32, i32* %8, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %391

356:                                              ; preds = %336
  %357 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %358 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* @ARB_FRAMEBUFFER_SRGB, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %391

364:                                              ; preds = %356
  %365 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %366 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %367 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %9, align 8
  %368 = call i64 @needs_srgb_write(%struct.wined3d_context* %365, %struct.wined3d_state* %366, %struct.wined3d_fb_state* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %364
  %371 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %372 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 1
  %375 = load i32 (i32)*, i32 (i32)** %374, align 8
  %376 = load i32, i32* @GL_FRAMEBUFFER_SRGB, align 4
  %377 = call i32 %375(i32 %376)
  br label %386

378:                                              ; preds = %364
  %379 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %380 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  %383 = load i32 (i32)*, i32 (i32)** %382, align 8
  %384 = load i32, i32* @GL_FRAMEBUFFER_SRGB, align 4
  %385 = call i32 %383(i32 %384)
  br label %386

386:                                              ; preds = %378, %370
  %387 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %388 = load i32, i32* @WINED3D_RS_SRGBWRITEENABLE, align 4
  %389 = call i32 @STATE_RENDER(i32 %388)
  %390 = call i32 @context_invalidate_state(%struct.wined3d_context* %387, i32 %389)
  br label %391

391:                                              ; preds = %386, %356, %336
  %392 = call i32 @checkGLcall(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %393 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %394 = load i32, i32* @WINED3D_RS_ALPHABLENDENABLE, align 4
  %395 = call i32 @STATE_RENDER(i32 %394)
  %396 = call i32 @context_invalidate_state(%struct.wined3d_context* %393, i32 %395)
  %397 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %398 = load i32, i32* @WINED3D_RS_SCISSORTESTENABLE, align 4
  %399 = call i32 @STATE_RENDER(i32 %398)
  %400 = call i32 @context_invalidate_state(%struct.wined3d_context* %397, i32 %399)
  %401 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %402 = load i32, i32* @STATE_SCISSORRECT, align 4
  %403 = call i32 @context_invalidate_state(%struct.wined3d_context* %401, i32 %402)
  %404 = load i32, i32* @TRUE, align 4
  store i32 %404, i32* %5, align 4
  br label %405

405:                                              ; preds = %391, %48
  %406 = load i32, i32* %5, align 4
  ret i32 %406
}

declare dso_local i64 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @have_framebuffer_attachment(i32, %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @context_validate_onscreen_formats(%struct.wined3d_context*, %struct.wined3d_rendertarget_view*) #1

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @context_apply_fbo_state(%struct.wined3d_context*, i32, %struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view*) #1

declare dso_local i32 @context_generate_rt_mask_from_resource(%struct.TYPE_19__*) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context*, i32*) #1

declare dso_local i32 @context_apply_draw_buffers(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

declare dso_local i64 @needs_srgb_write(%struct.wined3d_context*, %struct.wined3d_state*, %struct.wined3d_fb_state*) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
