; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_tex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_18__*, %struct.wined3d_shader_src_param*, %struct.wined3d_shader_dst_param* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__*, %struct.shader_arb_ctx_priv* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.shader_arb_ctx_priv = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.wined3d_shader_src_param = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"fragment.texcoord[%u]\00", align 1
@WINED3DSPSM_DW = common dso_local global i64 0, align 8
@WINED3DSPSM_NONE = common dso_local global i8* null, align 8
@WINED3DSPSM_DZ = common dso_local global i64 0, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4
@WINED3D_PSARGS_TEXTRANSFORM_SHIFT = common dso_local global i32 0, align 4
@WINED3D_PSARGS_PROJECTED = common dso_local global i32 0, align 4
@TEX_PROJ = common dso_local global i32 0, align 4
@WINED3D_TTFF_COUNT3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@WINED3DSI_TEXLD_PROJECT = common dso_local global i32 0, align 4
@WINED3DSI_TEXLD_BIAS = common dso_local global i32 0, align 4
@TEX_BIAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SWZ TA, %s, x, y, z, z;\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_tex(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.shader_arb_ctx_priv*, align 8
  %4 = alloca %struct.wined3d_shader_dst_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_shader_src_param, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca [40 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %17, align 8
  store %struct.shader_arb_ctx_priv* %18, %struct.shader_arb_ctx_priv** %3, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 3
  %21 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %20, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %21, i64 0
  store %struct.wined3d_shader_dst_param* %22, %struct.wined3d_shader_dst_param** %4, align 8
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %31, i32 0, i32 1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WINED3D_SHADER_VERSION(i32 %30, i32 %38)
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %43 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %44 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %41, %struct.wined3d_shader_dst_param* %42, i8* %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WINED3D_SHADER_VERSION(i32 2, i32 0)
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %1
  %49 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %67

56:                                               ; preds = %1
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %57, i32 0, i32 2
  %59 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %58, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %59, i64 1
  %61 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %56, %48
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @WINED3D_SHADER_VERSION(i32 1, i32 4)
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %103

75:                                               ; preds = %67
  %76 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %76, i32 0, i32 2
  %78 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %77, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %78, i64 0
  %80 = bitcast %struct.wined3d_shader_src_param* %6 to i8*
  %81 = bitcast %struct.wined3d_shader_src_param* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  %82 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WINED3DSPSM_DW, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i8*, i8** @WINED3DSPSM_NONE, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %6, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %75
  %91 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @WINED3DSPSM_DZ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i8*, i8** @WINED3DSPSM_NONE, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %6, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %101 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %102 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %100, %struct.wined3d_shader_src_param* %6, i32 0, i8* %101)
  br label %103

103:                                              ; preds = %99, %71
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @WINED3D_SHADER_VERSION(i32 1, i32 4)
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @MAX_TEXTURES, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %3, align 8
  %113 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @WINED3D_PSARGS_TEXTRANSFORM_SHIFT, align 4
  %120 = mul nsw i32 %118, %119
  %121 = ashr i32 %117, %120
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %111, %107
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @WINED3D_PSARGS_PROJECTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load i32, i32* @TEX_PROJ, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @WINED3D_PSARGS_PROJECTED, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = load i32, i32* @WINED3D_TTFF_COUNT3, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %11, align 8
  br label %139

139:                                              ; preds = %137, %127
  br label %140

140:                                              ; preds = %139, %122
  br label %197

141:                                              ; preds = %103
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @WINED3D_SHADER_VERSION(i32 2, i32 0)
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %147 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %146, i32 0, i32 2
  %148 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %147, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %148, i64 0
  %150 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* @WINED3DSPSM_DZ, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load i64, i64* @TRUE, align 8
  store i64 %158, i64* %11, align 8
  %159 = load i32, i32* @TEX_PROJ, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %172

162:                                              ; preds = %145
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* @WINED3DSPSM_DW, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @TEX_PROJ, align 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %167, %162
  br label %172

172:                                              ; preds = %171, %157
  br label %196

173:                                              ; preds = %141
  %174 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %175 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @WINED3DSI_TEXLD_PROJECT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* @TEX_PROJ, align 4
  %182 = load i32, i32* %10, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %180, %173
  %185 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %186 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @WINED3DSI_TEXLD_BIAS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @TEX_BIAS, align 4
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %191, %184
  br label %196

196:                                              ; preds = %195, %172
  br label %197

197:                                              ; preds = %196, %140
  %198 = load i64, i64* %11, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %202 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %207 = call i32 @shader_addline(i32 %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %206)
  %208 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %209 = call i32 @strcpy(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %210

210:                                              ; preds = %200, %197
  %211 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %212 = load i32, i32* %9, align 4
  %213 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %214 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @shader_hw_sample(%struct.wined3d_shader_instruction* %211, i32 %212, i8* %213, i8* %214, i32 %215, i32* null, i32* null)
  ret void
}

declare dso_local i32 @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, i8*) #1

declare dso_local i32 @shader_addline(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @shader_hw_sample(%struct.wined3d_shader_instruction*, i32, i8*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
