; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_read_from_framebuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_read_from_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__*, %struct.wined3d_device* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32)* }
%struct.wined3d_bo_address = type { i64, i32* }

@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Mapping offscreen render target.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Mapping %#x buffer.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"glReadBuffer\00", align 1
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@GL_PACK_ROW_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"glPixelStorei\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"glReadPixels\00", align 1
@GL_READ_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"glMapBuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_surface*, %struct.wined3d_context*, i64, i64)* @read_from_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_from_framebuffer(%struct.wined3d_surface* %0, %struct.wined3d_context* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.wined3d_surface*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_texture*, align 8
  %11 = alloca %struct.wined3d_device*, align 8
  %12 = alloca %struct.wined3d_context*, align 8
  %13 = alloca %struct.wined3d_surface*, align 8
  %14 = alloca %struct.wined3d_gl_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.wined3d_bo_address, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %28 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %29 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %30, i32 0, i32 0
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  store %struct.wined3d_texture* %32, %struct.wined3d_texture** %10, align 8
  %33 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %34 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.wined3d_device*, %struct.wined3d_device** %35, align 8
  store %struct.wined3d_device* %36, %struct.wined3d_device** %11, align 8
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_context* %37, %struct.wined3d_context** %12, align 8
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %13, align 8
  %38 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %38, i32 %39, %struct.wined3d_bo_address* %20, i64 %40)
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %43 = call %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context* %42)
  store %struct.wined3d_surface* %43, %struct.wined3d_surface** %13, align 8
  %44 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %45 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %46 = icmp ne %struct.wined3d_surface* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %4
  %48 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %48, %struct.wined3d_texture* %49, i32 %50)
  store %struct.wined3d_context* %51, %struct.wined3d_context** %12, align 8
  br label %53

52:                                               ; preds = %4
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %13, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %55 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %54, i32 0, i32 0
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %55, align 8
  store %struct.wined3d_gl_info* %56, %struct.wined3d_gl_info** %14, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %59 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %57, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %65 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %66 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @context_apply_fbo_state_blit(%struct.wined3d_context* %64, i32 %65, %struct.wined3d_surface* %66, i32* null, i64 %67)
  %69 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %70 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %71 = call i32 @context_check_fbo_status(%struct.wined3d_context* %69, i32 %70)
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %73 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %74 = call i32 @context_invalidate_state(%struct.wined3d_context* %72, i32 %73)
  br label %79

75:                                               ; preds = %53
  %76 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %77 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %78 = call i32 @context_apply_blit_state(%struct.wined3d_context* %76, %struct.wined3d_device* %77)
  br label %79

79:                                               ; preds = %75, %63
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @WINED3D_LOCATION_DRAWABLE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %85 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %84, i32 0, i32 1
  %86 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_8__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83, %79
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %91 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32 (i32)*, i32 (i32)** %93, align 8
  %95 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %96 = call i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context* %95)
  %97 = call i32 %94(i32 %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %24, align 4
  br label %112

99:                                               ; preds = %83
  %100 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %101 = call i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %100)
  store i32 %101, i32* %27, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = load i32, i32* %27, align 4
  %110 = call i32 %108(i32 %109)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %99, %88
  %113 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %119 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @glBindBuffer(i32 %118, i64 %120)
  %122 = call i32* @GL_EXTCALL(i32 %121)
  %123 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %127 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = urem i32 %125, %128
  store i32 %129, i32* %19, align 4
  %130 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %130, i32 %131, i32* %15, i32* %16)
  %133 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %134 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load i32, i32* @GL_PACK_ROW_LENGTH, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %141 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = udiv i32 %139, %145
  %147 = call i32 %137(i32 %138, i32 %146)
  %148 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %149, i32 %150)
  store i32 %151, i32* %17, align 4
  %152 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %152, i32 %153)
  store i32 %154, i32* %18, align 4
  %155 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %156 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32 (i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*)** %158, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %163 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %169 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 %159(i32 0, i32 0, i32 %160, i32 %161, i32 %167, i32 %173, i32* %175)
  %177 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %178 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  %179 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load i32, i32* @GL_PACK_ROW_LENGTH, align 4
  %184 = call i32 %182(i32 %183, i32 0)
  %185 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %186 = load i32, i32* %24, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %256, label %188

188:                                              ; preds = %124
  %189 = load i32, i32* %15, align 4
  %190 = call i32* @heap_alloc(i32 %189)
  store i32* %190, i32** %21, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  br label %257

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %199 = load i32, i32* @GL_READ_WRITE, align 4
  %200 = call i32 @glMapBuffer(i32 %198, i32 %199)
  %201 = call i32* @GL_EXTCALL(i32 %200)
  store i32* %201, i32** %26, align 8
  %202 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %206

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  store i32* %205, i32** %26, align 8
  br label %206

206:                                              ; preds = %203, %197
  %207 = load i32*, i32** %26, align 8
  store i32* %207, i32** %22, align 8
  %208 = load i32*, i32** %26, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %18, align 4
  %211 = sub i32 %210, 1
  %212 = mul i32 %209, %211
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  store i32* %214, i32** %23, align 8
  store i32 0, i32* %25, align 4
  br label %215

215:                                              ; preds = %242, %206
  %216 = load i32, i32* %25, align 4
  %217 = load i32, i32* %18, align 4
  %218 = udiv i32 %217, 2
  %219 = icmp ult i32 %216, %218
  br i1 %219, label %220, label %245

220:                                              ; preds = %215
  %221 = load i32*, i32** %21, align 8
  %222 = load i32*, i32** %22, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @memcpy(i32* %221, i32* %222, i32 %223)
  %225 = load i32*, i32** %22, align 8
  %226 = load i32*, i32** %23, align 8
  %227 = load i32, i32* %15, align 4
  %228 = call i32 @memcpy(i32* %225, i32* %226, i32 %227)
  %229 = load i32*, i32** %23, align 8
  %230 = load i32*, i32** %21, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @memcpy(i32* %229, i32* %230, i32 %231)
  %233 = load i32, i32* %15, align 4
  %234 = load i32*, i32** %22, align 8
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %22, align 8
  %237 = load i32, i32* %15, align 4
  %238 = load i32*, i32** %23, align 8
  %239 = zext i32 %237 to i64
  %240 = sub i64 0, %239
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32* %241, i32** %23, align 8
  br label %242

242:                                              ; preds = %220
  %243 = load i32, i32* %25, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %25, align 4
  br label %215

245:                                              ; preds = %215
  %246 = load i32*, i32** %21, align 8
  %247 = call i32 @heap_free(i32* %246)
  %248 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %253 = call i32 @glUnmapBuffer(i32 %252)
  %254 = call i32* @GL_EXTCALL(i32 %253)
  br label %255

255:                                              ; preds = %251, %245
  br label %256

256:                                              ; preds = %255, %124
  br label %257

257:                                              ; preds = %256, %192
  %258 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %263 = call i32 @glBindBuffer(i32 %262, i64 0)
  %264 = call i32* @GL_EXTCALL(i32 %263)
  %265 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %266

266:                                              ; preds = %261, %257
  %267 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %268 = icmp ne %struct.wined3d_surface* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load %struct.wined3d_context*, %struct.wined3d_context** %12, align 8
  %271 = load %struct.wined3d_surface*, %struct.wined3d_surface** %13, align 8
  %272 = call i32 @context_restore(%struct.wined3d_context* %270, %struct.wined3d_surface* %271)
  br label %273

273:                                              ; preds = %269, %266
  ret void
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i64) #1

declare dso_local %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, %struct.wined3d_texture*, i32) #1

declare dso_local i32 @context_apply_fbo_state_blit(%struct.wined3d_context*, i32, %struct.wined3d_surface*, i32*, i64) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_apply_blit_state(%struct.wined3d_context*, %struct.wined3d_device*) #1

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @context_get_offscreen_gl_buffer(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32* @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @glMapBuffer(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @glUnmapBuffer(i32) #1

declare dso_local i32 @context_restore(%struct.wined3d_context*, %struct.wined3d_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
