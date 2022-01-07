; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvrc_colorop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_nvidia_texture_shader.c_nvrc_colorop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32*, i32, i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32, i32)*, i32 (i32)*, i32 (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { i64**, i32* }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Setting color op for stage %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Using non 1:1 mapping: %d -> %d!\0A\00", align 1
@WINED3D_UNMAPPED_STAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Attempt to enable unsupported stage!\0A\00", align 1
@GL_REGISTER_COMBINERS_NV = common dso_local global i32 0, align 4
@GL_NUM_GENERAL_COMBINERS_NV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Stage disabled\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_2D)\00", align 1
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"glDisable(GL_TEXTURE_3D)\00", align 1
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"glDisable(GL_TEXTURE_CUBE_MAP_ARB)\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"glDisable(GL_TEXTURE_RECTANGLE_ARB)\00", align 1
@NV_TEXTURE_SHADER2 = common dso_local global i64 0, align 8
@GL_TEXTURE_SHADER_NV = common dso_local global i32 0, align 4
@GL_SHADER_OPERATION_NV = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3D_TSS_COLOR_OP = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG1 = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG2 = common dso_local global i64 0, align 8
@WINED3D_TSS_COLOR_ARG0 = common dso_local global i64 0, align 8
@WINED3D_TSS_RESULT_ARG = common dso_local global i64 0, align 8
@WINED3D_TOP_BUMPENVMAP_LUMINANCE = common dso_local global i64 0, align 8
@WINED3D_TOP_BUMPENVMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @nvrc_colorop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvrc_colorop(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @STATE_TEXTURESTAGE(i32 0, i32 0)
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %34 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %33, i32 0, i32 4
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %34, align 8
  store %struct.wined3d_gl_info* %35, %struct.wined3d_gl_info** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %39 = call i64 @use_ps(%struct.wined3d_state* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %345

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @WINED3D_UNMAPPED_STAGE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %60 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %58, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %345

66:                                               ; preds = %57, %54
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %68 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @context_active_texture(%struct.wined3d_context* %67, %struct.wined3d_gl_info* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %50
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %78 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load i32, i32* @GL_REGISTER_COMBINERS_NV, align 4
  %83 = call i32 %81(i32 %82)
  %84 = load i32, i32* @GL_NUM_GENERAL_COMBINERS_NV, align 4
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %86 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @glCombinerParameteriNV(i32 %84, i32 %87)
  %89 = call i32 @GL_EXTCALL(i32 %88)
  br label %98

90:                                               ; preds = %71
  %91 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %92 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = load i32, i32* @GL_REGISTER_COMBINERS_NV, align 4
  %97 = call i32 %95(i32 %96)
  br label %98

98:                                               ; preds = %90, %76
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %101 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %186

104:                                              ; preds = %98
  %105 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @WINED3D_UNMAPPED_STAGE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %185

109:                                              ; preds = %104
  %110 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %111 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = load i32, i32* @GL_TEXTURE_2D, align 4
  %116 = call i32 %114(i32 %115)
  %117 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %119 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32 (i32)*, i32 (i32)** %121, align 8
  %123 = load i32, i32* @GL_TEXTURE_3D, align 4
  %124 = call i32 %122(i32 %123)
  %125 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %127 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %109
  %134 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %135 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32 (i32)*, i32 (i32)** %137, align 8
  %139 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %140 = call i32 %138(i32 %139)
  %141 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %133, %109
  %143 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %144 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %152 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32 (i32)*, i32 (i32)** %154, align 8
  %156 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %157 = call i32 %155(i32 %156)
  %158 = call i32 @checkGLcall(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %159

159:                                              ; preds = %150, %142
  %160 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %161 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @NV_TEXTURE_SHADER2, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %170 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %176 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %178, align 8
  %180 = load i32, i32* @GL_TEXTURE_SHADER_NV, align 4
  %181 = load i32, i32* @GL_SHADER_OPERATION_NV, align 4
  %182 = load i32, i32* @GL_NONE, align 4
  %183 = call i32 %179(i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %174, %167, %159
  br label %185

185:                                              ; preds = %184, %104
  br label %345

186:                                              ; preds = %98
  %187 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @STATE_SAMPLER(i32 %188)
  %190 = call i32 @isStateDirty(%struct.wined3d_context* %187, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %220, label %192

192:                                              ; preds = %186
  %193 = load i64, i64* %8, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %192
  %196 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %197 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @NV_TEXTURE_SHADER2, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %207 = call i32 @nvts_activate_dimensions(%struct.wined3d_state* %204, i32 %205, %struct.wined3d_context* %206)
  br label %218

208:                                              ; preds = %195
  %209 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %210 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %217 = call i32 @texture_activate_dimensions(i32 %215, %struct.wined3d_gl_info* %216)
  br label %218

218:                                              ; preds = %208, %203
  br label %219

219:                                              ; preds = %218, %192
  br label %220

220:                                              ; preds = %219, %186
  %221 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %222 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %223 = load i32, i32* @FALSE, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %226 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %225, i32 0, i32 0
  %227 = load i64**, i64*** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64*, i64** %227, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %236 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %235, i32 0, i32 0
  %237 = load i64**, i64*** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64*, i64** %237, i64 %239
  %241 = load i64*, i64** %240, align 8
  %242 = load i64, i64* @WINED3D_TSS_COLOR_ARG1, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %246 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %245, i32 0, i32 0
  %247 = load i64**, i64*** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64*, i64** %247, i64 %249
  %251 = load i64*, i64** %250, align 8
  %252 = load i64, i64* @WINED3D_TSS_COLOR_ARG2, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %256 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %255, i32 0, i32 0
  %257 = load i64**, i64*** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64*, i64** %257, i64 %259
  %261 = load i64*, i64** %260, align 8
  %262 = load i64, i64* @WINED3D_TSS_COLOR_ARG0, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %267 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %266, i32 0, i32 0
  %268 = load i64**, i64*** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64*, i64** %268, i64 %270
  %272 = load i64*, i64** %271, align 8
  %273 = load i64, i64* @WINED3D_TSS_RESULT_ARG, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @set_tex_op_nvrc(%struct.wined3d_gl_info* %221, %struct.wined3d_state* %222, i32 %223, i32 %224, i64 %234, i64 %244, i64 %254, i64 %264, i32 %265, i64 %275)
  %277 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %278 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 8
  %280 = load i64, i64* @NV_TEXTURE_SHADER2, align 8
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %345

284:                                              ; preds = %220
  %285 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %286 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %285, i32 0, i32 0
  %287 = load i64**, i64*** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64*, i64** %287, i64 %289
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @WINED3D_TOP_BUMPENVMAP_LUMINANCE, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %310, label %297

297:                                              ; preds = %284
  %298 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %299 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %298, i32 0, i32 0
  %300 = load i64**, i64*** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64*, i64** %300, i64 %302
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* @WINED3D_TSS_COLOR_OP, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @WINED3D_TOP_BUMPENVMAP, align 8
  %309 = icmp eq i64 %307, %308
  br label %310

310:                                              ; preds = %297, %284
  %311 = phi i1 [ true, %284 ], [ %309, %297 ]
  %312 = zext i1 %311 to i32
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %11, align 8
  %314 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %315 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, 1
  %319 = shl i32 1, %318
  %320 = and i32 %316, %319
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = sext i32 %324 to i64
  store i64 %325, i64* %12, align 8
  %326 = load i64, i64* %11, align 8
  %327 = load i64, i64* %12, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %344

329:                                              ; preds = %310
  %330 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %331 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %332 = load i32, i32* %9, align 4
  %333 = add nsw i32 %332, 1
  %334 = call i32 @context_active_texture(%struct.wined3d_context* %330, %struct.wined3d_gl_info* %331, i32 %333)
  %335 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %336 = load i32, i32* %7, align 4
  %337 = add nsw i32 %336, 1
  %338 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %339 = call i32 @nvts_activate_dimensions(%struct.wined3d_state* %335, i32 %337, %struct.wined3d_context* %338)
  %340 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %341 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @context_active_texture(%struct.wined3d_context* %340, %struct.wined3d_gl_info* %341, i32 %342)
  br label %344

344:                                              ; preds = %329, %310
  br label %345

345:                                              ; preds = %41, %64, %185, %344, %220
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @context_active_texture(%struct.wined3d_context*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCombinerParameteriNV(i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_SAMPLER(i32) #1

declare dso_local i32 @nvts_activate_dimensions(%struct.wined3d_state*, i32, %struct.wined3d_context*) #1

declare dso_local i32 @texture_activate_dimensions(i32, %struct.wined3d_gl_info*) #1

declare dso_local i32 @set_tex_op_nvrc(%struct.wined3d_gl_info*, %struct.wined3d_state*, i32, i32, i64, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
