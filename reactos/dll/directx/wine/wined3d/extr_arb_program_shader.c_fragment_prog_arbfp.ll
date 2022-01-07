; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_fragment_prog_arbfp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_fragment_prog_arbfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64, i32, %struct.wined3d_device*, %struct.wined3d_gl_info* }
%struct.wined3d_device = type { i32*, %struct.shader_arb_priv* }
%struct.shader_arb_priv = type { i32, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32 }
%struct.ffp_frag_settings = type { i32 }
%struct.arbfp_ffp_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ffp_frag_settings }

@.str = private unnamed_addr constant [37 x i8] c"context %p, state %p, state_id %#x.\0A\00", align 1
@WINED3D_RS_FOGENABLE = common dso_local global i32 0, align 4
@arb_program_shader_backend = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i32 0, align 4
@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i32 0, align 4
@WINED3D_TSS_CONSTANT = common dso_local global i32 0, align 4
@WINED3D_RS_TEXTUREFACTOR = common dso_local global i32 0, align 4
@WINED3D_RS_SPECULARENABLE = common dso_local global i32 0, align 4
@STATE_COLOR_KEY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Allocated fixed function replacement shader descriptor %p\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, desc->shader)\00", align 1
@WINED3D_SHADER_CONST_PS_F = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @fragment_prog_arbfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fragment_prog_arbfp(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_device*, align 8
  %9 = alloca %struct.shader_arb_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ffp_frag_settings, align 4
  %12 = alloca %struct.arbfp_ffp_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arbfp_ffp_desc*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 4
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %16, align 8
  store %struct.wined3d_gl_info* %17, %struct.wined3d_gl_info** %7, align 8
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 3
  %20 = load %struct.wined3d_device*, %struct.wined3d_device** %19, align 8
  store %struct.wined3d_device* %20, %struct.wined3d_device** %8, align 8
  %21 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %22 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %21, i32 0, i32 1
  %23 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %22, align 8
  store %struct.shader_arb_priv* %23, %struct.shader_arb_priv** %9, align 8
  %24 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %25 = call i64 @use_ps(%struct.wined3d_state* %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %27 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %26, %struct.wined3d_state* %27, i32 %28)
  %30 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %31 = load i32, i32* @WINED3D_RS_FOGENABLE, align 4
  %32 = call i32 @STATE_RENDER(i32 %31)
  %33 = call i64 @isStateDirty(%struct.wined3d_context* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %3
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %35
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %40 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @arb_program_shader_backend
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @MAX_TEXTURES, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %55 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @WINED3D_TSS_BUMPENV_MAT00, align 4
  %58 = call i32 @STATE_TEXTURESTAGE(i32 %56, i32 %57)
  %59 = call i32 @set_bumpmat_arbfp(%struct.wined3d_context* %54, %struct.wined3d_state* %55, i32 %58)
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %61 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @WINED3D_TSS_CONSTANT, align 4
  %64 = call i32 @STATE_TEXTURESTAGE(i32 %62, i32 %63)
  %65 = call i32 @state_tss_constant_arbfp(%struct.wined3d_context* %60, %struct.wined3d_state* %61, i32 %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %71 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %72 = load i32, i32* @WINED3D_RS_TEXTUREFACTOR, align 4
  %73 = call i32 @STATE_RENDER(i32 %72)
  %74 = call i32 @state_texfactor_arbfp(%struct.wined3d_context* %70, %struct.wined3d_state* %71, i32 %73)
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %76 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %77 = load i32, i32* @WINED3D_RS_SPECULARENABLE, align 4
  %78 = call i32 @STATE_RENDER(i32 %77)
  %79 = call i32 @state_arb_specularenable(%struct.wined3d_context* %75, %struct.wined3d_state* %76, i32 %78)
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %81 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %82 = load i32, i32* @STATE_COLOR_KEY, align 4
  %83 = call i32 @color_key_arbfp(%struct.wined3d_context* %80, %struct.wined3d_state* %81, i32 %82)
  br label %95

84:                                               ; preds = %43, %38, %35
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %89 = shl i32 1, %88
  %90 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %91 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87, %84
  br label %95

95:                                               ; preds = %94, %69
  br label %223

96:                                               ; preds = %3
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %195, label %99

99:                                               ; preds = %96
  %100 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %101 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = call i32 @gen_ffp_frag_op(%struct.wined3d_context* %100, %struct.wined3d_state* %101, %struct.ffp_frag_settings* %11, i64 %102)
  %104 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %9, align 8
  %105 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %104, i32 0, i32 1
  %106 = call i64 @find_ffp_frag_shader(i32* %105, %struct.ffp_frag_settings* %11)
  %107 = inttoptr i64 %106 to %struct.arbfp_ffp_desc*
  store %struct.arbfp_ffp_desc* %107, %struct.arbfp_ffp_desc** %12, align 8
  %108 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %12, align 8
  %109 = icmp ne %struct.arbfp_ffp_desc* %108, null
  br i1 %109, label %133, label %110

110:                                              ; preds = %99
  %111 = call %struct.arbfp_ffp_desc* @heap_alloc(i32 8)
  store %struct.arbfp_ffp_desc* %111, %struct.arbfp_ffp_desc** %14, align 8
  %112 = icmp ne %struct.arbfp_ffp_desc* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %223

115:                                              ; preds = %110
  %116 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %14, align 8
  %117 = getelementptr inbounds %struct.arbfp_ffp_desc, %struct.arbfp_ffp_desc* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = bitcast %struct.ffp_frag_settings* %118 to i8*
  %120 = bitcast %struct.ffp_frag_settings* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  %121 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %122 = call i32 @gen_arbfp_ffp_shader(%struct.ffp_frag_settings* %11, %struct.wined3d_gl_info* %121)
  %123 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %14, align 8
  %124 = getelementptr inbounds %struct.arbfp_ffp_desc, %struct.arbfp_ffp_desc* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %9, align 8
  %126 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %125, i32 0, i32 1
  %127 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %14, align 8
  %128 = getelementptr inbounds %struct.arbfp_ffp_desc, %struct.arbfp_ffp_desc* %127, i32 0, i32 1
  %129 = call i32 @add_ffp_frag_shader(i32* %126, %struct.TYPE_2__* %128)
  %130 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %14, align 8
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.arbfp_ffp_desc* %130)
  %132 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %14, align 8
  store %struct.arbfp_ffp_desc* %132, %struct.arbfp_ffp_desc** %12, align 8
  br label %133

133:                                              ; preds = %115, %99
  %134 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %135 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %12, align 8
  %136 = getelementptr inbounds %struct.arbfp_ffp_desc, %struct.arbfp_ffp_desc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @glBindProgramARB(i32 %134, i32 %137)
  %139 = call i32 @GL_EXTCALL(i32 %138)
  %140 = call i32 @checkGLcall(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.arbfp_ffp_desc*, %struct.arbfp_ffp_desc** %12, align 8
  %142 = getelementptr inbounds %struct.arbfp_ffp_desc, %struct.arbfp_ffp_desc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %9, align 8
  %145 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %147 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, @arb_program_shader_backend
  br i1 %149, label %150, label %191

150:                                              ; preds = %133
  %151 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %152 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %191

155:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %156

156:                                              ; preds = %173, %155
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @MAX_TEXTURES, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %162 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @WINED3D_TSS_BUMPENV_MAT00, align 4
  %165 = call i32 @STATE_TEXTURESTAGE(i32 %163, i32 %164)
  %166 = call i32 @set_bumpmat_arbfp(%struct.wined3d_context* %161, %struct.wined3d_state* %162, i32 %165)
  %167 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %168 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @WINED3D_TSS_CONSTANT, align 4
  %171 = call i32 @STATE_TEXTURESTAGE(i32 %169, i32 %170)
  %172 = call i32 @state_tss_constant_arbfp(%struct.wined3d_context* %167, %struct.wined3d_state* %168, i32 %171)
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %156

176:                                              ; preds = %156
  %177 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %178 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %179 = load i32, i32* @WINED3D_RS_TEXTUREFACTOR, align 4
  %180 = call i32 @STATE_RENDER(i32 %179)
  %181 = call i32 @state_texfactor_arbfp(%struct.wined3d_context* %177, %struct.wined3d_state* %178, i32 %180)
  %182 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %183 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %184 = load i32, i32* @WINED3D_RS_SPECULARENABLE, align 4
  %185 = call i32 @STATE_RENDER(i32 %184)
  %186 = call i32 @state_arb_specularenable(%struct.wined3d_context* %182, %struct.wined3d_state* %183, i32 %185)
  %187 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %188 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %189 = load i32, i32* @STATE_COLOR_KEY, align 4
  %190 = call i32 @color_key_arbfp(%struct.wined3d_context* %187, %struct.wined3d_state* %188, i32 %189)
  br label %191

191:                                              ; preds = %176, %150, %133
  %192 = load i64, i64* @FALSE, align 8
  %193 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %194 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %216

195:                                              ; preds = %96
  %196 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %197 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %215, label %200

200:                                              ; preds = %195
  %201 = load %struct.wined3d_device*, %struct.wined3d_device** %8, align 8
  %202 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, @arb_program_shader_backend
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @WINED3D_SHADER_CONST_PS_F, align 4
  %207 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %208 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i64, i64* @TRUE, align 8
  %213 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %214 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %211, %195
  br label %216

216:                                              ; preds = %215, %191
  %217 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %218 = shl i32 1, %217
  %219 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %220 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %216, %113, %95
  ret void
}

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @isStateDirty(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

declare dso_local i32 @set_bumpmat_arbfp(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @state_tss_constant_arbfp(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @state_texfactor_arbfp(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @state_arb_specularenable(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @color_key_arbfp(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @gen_ffp_frag_op(%struct.wined3d_context*, %struct.wined3d_state*, %struct.ffp_frag_settings*, i64) #1

declare dso_local i64 @find_ffp_frag_shader(i32*, %struct.ffp_frag_settings*) #1

declare dso_local %struct.arbfp_ffp_desc* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gen_arbfp_ffp_shader(%struct.ffp_frag_settings*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @add_ffp_frag_shader(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindProgramARB(i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
