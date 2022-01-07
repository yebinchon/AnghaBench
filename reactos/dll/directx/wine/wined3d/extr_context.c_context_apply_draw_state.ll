; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_draw_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_draw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.wined3d_context = type { i32, i32*, i32*, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_9__, %struct.wined3d_gl_info*, %struct.StateEntry* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.wined3d_gl_info = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.StateEntry = type { i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)* }
%struct.wined3d_device = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)*, i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)* }
%struct.wined3d_state = type { i32*, i32*, i64, %struct.TYPE_7__*, %struct.wined3d_fb_state* }
%struct.TYPE_7__ = type { i64 }
%struct.wined3d_fb_state = type { i32, i32 }

@ARB_FRAMEBUFFER_NO_ATTACHMENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"OpenGL implementation does not support framebuffers with no attachments.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@WINED3D_PIPELINE_GRAPHICS = common dso_local global i64 0, align 8
@STATE_VDECL = common dso_local global i32 0, align 4
@STATE_STREAMSRC = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GRAPHICS_COUNT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_device*, %struct.wined3d_state*)* @context_apply_draw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_apply_draw_state(%struct.wined3d_context* %0, %struct.wined3d_device* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca %struct.wined3d_state*, align 8
  %8 = alloca %struct.StateEntry*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_fb_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %6, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %7, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 12
  %18 = load %struct.StateEntry*, %struct.StateEntry** %17, align 8
  store %struct.StateEntry* %18, %struct.StateEntry** %8, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 11
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %20, align 8
  store %struct.wined3d_gl_info* %21, %struct.wined3d_gl_info** %9, align 8
  %22 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %22, i32 0, i32 4
  %24 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %23, align 8
  store %struct.wined3d_fb_state* %24, %struct.wined3d_fb_state** %10, align 8
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %26 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %10, align 8
  %30 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %10, align 8
  %33 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @have_framebuffer_attachment(i32 %28, i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %3
  %38 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %39 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ARB_FRAMEBUFFER_NO_ATTACHMENTS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %361

48:                                               ; preds = %37
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @context_set_render_offscreen(%struct.wined3d_context* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %3
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @wined3d_settings, i32 0, i32 0), align 8
  %54 = load i64, i64* @ORM_FBO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %58 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %59 = call i64 @isStateDirty(%struct.wined3d_context* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %63 = load %struct.wined3d_fb_state*, %struct.wined3d_fb_state** %10, align 8
  %64 = getelementptr inbounds %struct.wined3d_fb_state, %struct.wined3d_fb_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @context_validate_onscreen_formats(%struct.wined3d_context* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %56, %52
  %68 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %70 = call i32 @context_update_tex_unit_map(%struct.wined3d_context* %68, %struct.wined3d_state* %69)
  %71 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %72 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %73 = call i32 @context_preload_textures(%struct.wined3d_context* %71, %struct.wined3d_state* %72)
  %74 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %75 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %76 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %77 = shl i32 1, %76
  %78 = xor i32 %77, -1
  %79 = call i32 @context_load_shader_resources(%struct.wined3d_context* %74, %struct.wined3d_state* %75, i32 %78)
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %81 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %82 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %88 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @WINED3D_PIPELINE_GRAPHICS, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @context_load_unordered_access_resources(%struct.wined3d_context* %80, i32 %86, i32 %92)
  %94 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %95 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %96 = call i32 @context_load_stream_output_buffers(%struct.wined3d_context* %94, %struct.wined3d_state* %95)
  %97 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %98 = load i32, i32* @STATE_VDECL, align 4
  %99 = call i64 @isStateDirty(%struct.wined3d_context* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %67
  %102 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %103 = load i32, i32* @STATE_STREAMSRC, align 4
  %104 = call i64 @isStateDirty(%struct.wined3d_context* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %108 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %109 = call i32 @STATE_SHADER(i32 %108)
  %110 = call i64 @isStateDirty(%struct.wined3d_context* %107, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106, %101, %67
  %113 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %114 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %115 = call i32 @context_update_stream_info(%struct.wined3d_context* %113, %struct.wined3d_state* %114)
  br label %163

116:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  %117 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %118 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %148, %116
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %130 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %133 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %145 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %146 = call i32 @wined3d_buffer_load(i64 %143, %struct.wined3d_context* %144, %struct.wined3d_state* %145)
  br label %147

147:                                              ; preds = %128, %124
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %121

153:                                              ; preds = %121
  %154 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %155 = load i32, i32* @STATE_STREAMSRC, align 4
  %156 = call i64 @isStateDirty(%struct.wined3d_context* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %160 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %161 = call i32 @context_update_stream_info(%struct.wined3d_context* %159, %struct.wined3d_state* %160)
  br label %162

162:                                              ; preds = %158, %153
  br label %163

163:                                              ; preds = %162, %112
  %164 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %165 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %170 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %176 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %179 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %180 = call i32 @wined3d_buffer_load(i64 %177, %struct.wined3d_context* %178, %struct.wined3d_state* %179)
  br label %187

181:                                              ; preds = %168
  %182 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %183 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %186 = call i32 @wined3d_buffer_load_sysmem(i64 %184, %struct.wined3d_context* %185)
  br label %187

187:                                              ; preds = %181, %174
  br label %188

188:                                              ; preds = %187, %163
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %239, %188
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %192 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ult i32 %190, %193
  br i1 %194, label %195, label %242

195:                                              ; preds = %189
  %196 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %197 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* @CHAR_BIT, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 4, %206
  %208 = udiv i64 %204, %207
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* @CHAR_BIT, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 4, %213
  %215 = sub i64 %214, 1
  %216 = and i64 %211, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = shl i32 1, %218
  %220 = xor i32 %219, -1
  %221 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %222 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, %220
  store i32 %228, i32* %226, align 4
  %229 = load %struct.StateEntry*, %struct.StateEntry** %8, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %229, i64 %231
  %233 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %232, i32 0, i32 0
  %234 = load i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)*, i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)** %233, align 8
  %235 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %236 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i32 %234(%struct.wined3d_context* %235, %struct.wined3d_state* %236, i32 %237)
  br label %239

239:                                              ; preds = %195
  %240 = load i32, i32* %11, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %189

242:                                              ; preds = %189
  %243 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %244 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %247 = shl i32 1, %246
  %248 = xor i32 %247, -1
  %249 = and i32 %245, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %242
  %252 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %253 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %252, i32 0, i32 1
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 1
  %256 = load i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)*, i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)** %255, align 8
  %257 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %258 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %261 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %262 = call i32 %256(i32 %259, %struct.wined3d_context* %260, %struct.wined3d_state* %261)
  %263 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %264 = shl i32 1, %263
  %265 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %266 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %251, %242
  %270 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %271 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %270, i32 0, i32 9
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %288

274:                                              ; preds = %269
  %275 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %276 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %275, i32 0, i32 1
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)*, i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)** %278, align 8
  %280 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %281 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %284 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %285 = call i32 %279(i32 %282, %struct.wined3d_context* %283, %struct.wined3d_state* %284)
  %286 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %287 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %286, i32 0, i32 9
  store i64 0, i64* %287, align 8
  br label %288

288:                                              ; preds = %274, %269
  %289 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %290 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %289, i32 0, i32 8
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %322

293:                                              ; preds = %288
  store i32 0, i32* %11, align 4
  br label %294

294:                                              ; preds = %303, %293
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* @WINED3D_SHADER_TYPE_GRAPHICS_COUNT, align 4
  %297 = icmp ult i32 %295, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %300 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @context_bind_shader_resources(%struct.wined3d_context* %299, %struct.wined3d_state* %300, i32 %301)
  br label %303

303:                                              ; preds = %298
  %304 = load i32, i32* %11, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %294

306:                                              ; preds = %294
  %307 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %308 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %307, i32 0, i32 8
  store i64 0, i64* %308, align 8
  %309 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %310 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %314 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %312, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %306
  %319 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %320 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %319, i32 0, i32 4
  store i32 1, i32* %320, align 4
  br label %321

321:                                              ; preds = %318, %306
  br label %322

322:                                              ; preds = %321, %288
  %323 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %324 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %323, i32 0, i32 7
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %346

327:                                              ; preds = %322
  %328 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %329 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %330 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %336 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* @WINED3D_PIPELINE_GRAPHICS, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @context_bind_unordered_access_views(%struct.wined3d_context* %328, i32 %334, i32 %340)
  %342 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %343 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %342, i32 0, i32 7
  store i64 0, i64* %343, align 8
  %344 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %345 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %344, i32 0, i32 5
  store i32 1, i32* %345, align 8
  br label %346

346:                                              ; preds = %327, %322
  %347 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @wined3d_settings, i32 0, i32 0), align 8
  %348 = load i64, i64* @ORM_FBO, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %352 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %353 = call i32 @context_check_fbo_status(%struct.wined3d_context* %351, i32 %352)
  br label %354

354:                                              ; preds = %350, %346
  %355 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %356 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %355, i32 0, i32 0
  store i32 0, i32* %356, align 8
  %357 = load i32, i32* @FALSE, align 4
  %358 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %359 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %358, i32 0, i32 6
  store i32 %357, i32* %359, align 4
  %360 = load i32, i32* @TRUE, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %354, %45
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local i32 @have_framebuffer_attachment(i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @context_set_render_offscreen(%struct.wined3d_context*, i32) #1

declare dso_local i64 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_validate_onscreen_formats(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_update_tex_unit_map(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_preload_textures(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_load_shader_resources(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @context_load_unordered_access_resources(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_load_stream_output_buffers(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @STATE_SHADER(i32) #1

declare dso_local i32 @context_update_stream_info(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @wined3d_buffer_load(i64, %struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @wined3d_buffer_load_sysmem(i64, %struct.wined3d_context*) #1

declare dso_local i32 @context_bind_shader_resources(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @context_bind_unordered_access_views(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
