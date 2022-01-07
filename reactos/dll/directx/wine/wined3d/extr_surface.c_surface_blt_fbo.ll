; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_blt_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_blt_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { i32, %struct.wined3d_gl_info*, i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 (...)*, i32 (i32)*, i32 (i32, i32, i32, i32)*, i32 (i32)* }
%struct.TYPE_16__ = type { i32 (i64, i64, i64, i64, i64, i64, i64, i64, i32, i32)* }
%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_17__*, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.wined3d_texture* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"device %p, filter %s,\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"src_surface %p, src_location %s, src_rect %s,\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"dst_surface %p, dst_location %s, dst_rect %s.\0A\00", align 1
@GL_LINEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unsupported filter mode %s (%#x).\0A\00", align 1
@GL_NEAREST = common dso_local global i32 0, align 4
@WINED3D_LOCATION_RB_RESOLVED = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid context, skipping blit.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Source surface %p is onscreen.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Source surface %p is offscreen.\0A\00", align 1
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"glReadBuffer()\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Destination surface %p is onscreen.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Destination surface %p is offscreen.\0A\00", align 1
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@MAX_RENDER_TARGETS = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@WINED3D_RS_SCISSORTESTENABLE = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"glBlitFramebuffer()\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*, %struct.wined3d_context*, i32, %struct.wined3d_surface*, i32, %struct.TYPE_20__*, %struct.wined3d_surface*, i32, %struct.TYPE_20__*)* @surface_blt_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface_blt_fbo(%struct.wined3d_device* %0, %struct.wined3d_context* %1, i32 %2, %struct.wined3d_surface* %3, i32 %4, %struct.TYPE_20__* %5, %struct.wined3d_surface* %6, i32 %7, %struct.TYPE_20__* %8) #0 {
  %10 = alloca %struct.wined3d_device*, align 8
  %11 = alloca %struct.wined3d_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_surface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.wined3d_surface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.wined3d_texture*, align 8
  %22 = alloca %struct.wined3d_texture*, align 8
  %23 = alloca %struct.wined3d_gl_info*, align 8
  %24 = alloca %struct.wined3d_context*, align 8
  %25 = alloca %struct.wined3d_surface*, align 8
  %26 = alloca %struct.wined3d_surface*, align 8
  %27 = alloca %struct.TYPE_20__, align 8
  %28 = alloca %struct.TYPE_20__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %10, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %15, align 8
  store %struct.wined3d_surface* %6, %struct.wined3d_surface** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %18, align 8
  %32 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %33 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %32)
  store i32 %33, i32* %19, align 4
  %34 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %35 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %34)
  store i32 %35, i32* %20, align 4
  %36 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %37 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %36, i32 0, i32 0
  %38 = load %struct.wined3d_texture*, %struct.wined3d_texture** %37, align 8
  store %struct.wined3d_texture* %38, %struct.wined3d_texture** %21, align 8
  %39 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %40 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %39, i32 0, i32 0
  %41 = load %struct.wined3d_texture*, %struct.wined3d_texture** %40, align 8
  store %struct.wined3d_texture* %41, %struct.wined3d_texture** %22, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  store %struct.wined3d_context* %42, %struct.wined3d_context** %24, align 8
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %26, align 8
  %43 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %44 = bitcast %struct.wined3d_device* %43 to %struct.wined3d_surface*
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @debug_d3dtexturefiltertype(i32 %45)
  %47 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %44, i32 %46)
  %48 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @wined3d_debug_location(i32 %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %52 = call i32 @wine_dbgstr_rect(%struct.TYPE_20__* %51)
  %53 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_surface* %48, i32 %50, i32 %52)
  %54 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @wined3d_debug_location(i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %58 = call i32 @wine_dbgstr_rect(%struct.TYPE_20__* %57)
  %59 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_surface* %54, i32 %56, i32 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %61 = bitcast %struct.TYPE_20__* %27 to i8*
  %62 = bitcast %struct.TYPE_20__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 32, i1 false)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %64 = bitcast %struct.TYPE_20__* %28 to i8*
  %65 = bitcast %struct.TYPE_20__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 32, i1 false)
  %66 = load i32, i32* %12, align 4
  switch i32 %66, label %69 [
    i32 130, label %67
    i32 129, label %74
    i32 128, label %74
  ]

67:                                               ; preds = %9
  %68 = load i32, i32* @GL_LINEAR, align 4
  store i32 %68, i32* %29, align 4
  br label %76

69:                                               ; preds = %9
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @debug_d3dtexturefiltertype(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %9, %9, %69
  %75 = load i32, i32* @GL_NEAREST, align 4
  store i32 %75, i32* %29, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = load %struct.wined3d_texture*, %struct.wined3d_texture** %22, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @is_multisample_location(%struct.wined3d_texture* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %76
  %82 = load %struct.wined3d_texture*, %struct.wined3d_texture** %22, align 8
  %83 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %89 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %87, %93
  br i1 %94, label %123, label %95

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = call i64 @abs(i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %103, %105
  %107 = call i64 @abs(i64 %106)
  %108 = icmp ne i64 %101, %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %111, %113
  %115 = call i64 @abs(i64 %114)
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  %121 = call i64 @abs(i64 %120)
  %122 = icmp ne i64 %115, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %109, %95, %81
  %124 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %123, %109, %76
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** %22, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %126, i32 %127, %struct.wined3d_context* %128, i32 %129)
  %131 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %132 = load i32, i32* %19, align 4
  %133 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %134 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = urem i32 %132, %135
  %137 = call i32 @texture2d_is_full_rect(%struct.wined3d_texture* %131, i32 %136, %struct.TYPE_20__* %28)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %125
  %140 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %140, i32 %141, %struct.wined3d_context* %142, i32 %143)
  br label %151

145:                                              ; preds = %125
  %146 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @wined3d_texture_prepare_location(%struct.wined3d_texture* %146, i32 %147, %struct.wined3d_context* %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  store %struct.wined3d_surface* %156, %struct.wined3d_surface** %25, align 8
  br label %165

157:                                              ; preds = %151
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  store %struct.wined3d_surface* %162, %struct.wined3d_surface** %25, align 8
  br label %164

163:                                              ; preds = %157
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %25, align 8
  br label %164

164:                                              ; preds = %163, %161
  br label %165

165:                                              ; preds = %164, %155
  %166 = load %struct.wined3d_context*, %struct.wined3d_context** %11, align 8
  %167 = call %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context* %166)
  store %struct.wined3d_surface* %167, %struct.wined3d_surface** %26, align 8
  %168 = load %struct.wined3d_surface*, %struct.wined3d_surface** %26, align 8
  %169 = load %struct.wined3d_surface*, %struct.wined3d_surface** %25, align 8
  %170 = icmp ne %struct.wined3d_surface* %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load %struct.wined3d_device*, %struct.wined3d_device** %10, align 8
  %173 = load %struct.wined3d_surface*, %struct.wined3d_surface** %25, align 8
  %174 = icmp ne %struct.wined3d_surface* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.wined3d_surface*, %struct.wined3d_surface** %25, align 8
  %177 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %176, i32 0, i32 0
  %178 = load %struct.wined3d_texture*, %struct.wined3d_texture** %177, align 8
  br label %180

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi %struct.wined3d_texture* [ %178, %175 ], [ null, %179 ]
  %182 = load %struct.wined3d_surface*, %struct.wined3d_surface** %25, align 8
  %183 = icmp ne %struct.wined3d_surface* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.wined3d_surface*, %struct.wined3d_surface** %25, align 8
  %186 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %185)
  br label %188

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %184
  %189 = phi i32 [ %186, %184 ], [ 0, %187 ]
  %190 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %172, %struct.wined3d_texture* %181, i32 %189)
  store %struct.wined3d_context* %190, %struct.wined3d_context** %24, align 8
  br label %192

191:                                              ; preds = %165
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %26, align 8
  br label %192

192:                                              ; preds = %191, %188
  %193 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %194 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %199 = call i32 @context_release(%struct.wined3d_context* %198)
  %200 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %358

201:                                              ; preds = %192
  %202 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %203 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %202, i32 0, i32 1
  %204 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %203, align 8
  store %struct.wined3d_gl_info* %204, %struct.wined3d_gl_info** %23, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %210 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.wined3d_surface* %209)
  %211 = load %struct.wined3d_texture*, %struct.wined3d_texture** %22, align 8
  %212 = call i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %211)
  store i32 %212, i32* %30, align 4
  %213 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %214 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %215 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @surface_translate_drawable_coords(%struct.wined3d_surface* %213, i32 %216, %struct.TYPE_20__* %27)
  br label %222

218:                                              ; preds = %201
  %219 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %220 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.wined3d_surface* %219)
  %221 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  store i32 %221, i32* %30, align 4
  br label %222

222:                                              ; preds = %218, %208
  %223 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %224 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %225 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @context_apply_fbo_state_blit(%struct.wined3d_context* %223, i32 %224, %struct.wined3d_surface* %225, i32* null, i32 %226)
  %228 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  %229 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 3
  %232 = load i32 (i32)*, i32 (i32)** %231, align 8
  %233 = load i32, i32* %30, align 4
  %234 = call i32 %232(i32 %233)
  %235 = call i32 @checkGLcall(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %236 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %237 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %238 = call i32 @context_check_fbo_status(%struct.wined3d_context* %236, i32 %237)
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %222
  %243 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %244 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), %struct.wined3d_surface* %243)
  %245 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %246 = call i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %245)
  store i32 %246, i32* %30, align 4
  %247 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %248 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %249 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @surface_translate_drawable_coords(%struct.wined3d_surface* %247, i32 %250, %struct.TYPE_20__* %28)
  br label %256

252:                                              ; preds = %222
  %253 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %254 = call i32 (i8*, %struct.wined3d_surface*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.wined3d_surface* %253)
  %255 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  store i32 %255, i32* %30, align 4
  br label %256

256:                                              ; preds = %252, %242
  %257 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %258 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %259 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @context_apply_fbo_state_blit(%struct.wined3d_context* %257, i32 %258, %struct.wined3d_surface* %259, i32* null, i32 %260)
  %262 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %263 = load i32, i32* %30, align 4
  %264 = call i32 @context_set_draw_buffer(%struct.wined3d_context* %262, i32 %263)
  %265 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %266 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %267 = call i32 @context_check_fbo_status(%struct.wined3d_context* %265, i32 %266)
  %268 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %269 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %270 = call i32 @context_invalidate_state(%struct.wined3d_context* %268, i32 %269)
  %271 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  %272 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 2
  %275 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %274, align 8
  %276 = load i32, i32* @GL_TRUE, align 4
  %277 = load i32, i32* @GL_TRUE, align 4
  %278 = load i32, i32* @GL_TRUE, align 4
  %279 = load i32, i32* @GL_TRUE, align 4
  %280 = call i32 %275(i32 %276, i32 %277, i32 %278, i32 %279)
  store i32 0, i32* %31, align 4
  br label %281

281:                                              ; preds = %291, %256
  %282 = load i32, i32* %31, align 4
  %283 = load i32, i32* @MAX_RENDER_TARGETS, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %281
  %286 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %287 = load i32, i32* %31, align 4
  %288 = call i32 @WINED3D_RS_COLORWRITE(i32 %287)
  %289 = call i32 @STATE_RENDER(i32 %288)
  %290 = call i32 @context_invalidate_state(%struct.wined3d_context* %286, i32 %289)
  br label %291

291:                                              ; preds = %285
  %292 = load i32, i32* %31, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %31, align 4
  br label %281

294:                                              ; preds = %281
  %295 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  %296 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 1
  %299 = load i32 (i32)*, i32 (i32)** %298, align 8
  %300 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %301 = call i32 %299(i32 %300)
  %302 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %303 = load i32, i32* @WINED3D_RS_SCISSORTESTENABLE, align 4
  %304 = call i32 @STATE_RENDER(i32 %303)
  %305 = call i32 @context_invalidate_state(%struct.wined3d_context* %302, i32 %304)
  %306 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  %307 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i32 (i64, i64, i64, i64, i64, i64, i64, i64, i32, i32)*, i32 (i64, i64, i64, i64, i64, i64, i64, i64, i32, i32)** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %327 = load i32, i32* %29, align 4
  %328 = call i32 %309(i64 %311, i64 %313, i64 %315, i64 %317, i64 %319, i64 %321, i64 %323, i64 %325, i32 %326, i32 %327)
  %329 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %330 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @wined3d_settings, i32 0, i32 0), align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %344, label %332

332:                                              ; preds = %294
  %333 = load i32, i32* %17, align 4
  %334 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %332
  %337 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %338 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %337, i32 0, i32 1
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 0
  %341 = load %struct.wined3d_texture*, %struct.wined3d_texture** %340, align 8
  %342 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %343 = icmp eq %struct.wined3d_texture* %341, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %336, %294
  %345 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  %346 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i32 (...)*, i32 (...)** %348, align 8
  %350 = call i32 (...) %349()
  br label %351

351:                                              ; preds = %344, %336, %332
  %352 = load %struct.wined3d_surface*, %struct.wined3d_surface** %26, align 8
  %353 = icmp ne %struct.wined3d_surface* %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load %struct.wined3d_context*, %struct.wined3d_context** %24, align 8
  %356 = load %struct.wined3d_surface*, %struct.wined3d_surface** %26, align 8
  %357 = call i32 @context_restore(%struct.wined3d_context* %355, %struct.wined3d_surface* %356)
  br label %358

358:                                              ; preds = %197, %354, %351
  ret void
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_surface*, ...) #1

declare dso_local i32 @debug_d3dtexturefiltertype(i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i64 @is_multisample_location(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @texture2d_is_full_rect(%struct.wined3d_texture*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @wined3d_texture_prepare_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, %struct.wined3d_texture*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture*) #1

declare dso_local i32 @surface_translate_drawable_coords(%struct.wined3d_surface*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @context_apply_fbo_state_blit(%struct.wined3d_context*, i32, %struct.wined3d_surface*, i32*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_set_draw_buffer(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i32 @WINED3D_RS_COLORWRITE(i32) #1

declare dso_local i32 @context_restore(%struct.wined3d_context*, %struct.wined3d_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
