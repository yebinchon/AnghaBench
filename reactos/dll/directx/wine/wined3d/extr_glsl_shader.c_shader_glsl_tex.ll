; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_tex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { %struct.TYPE_23__*, %struct.shader_glsl_ctx_priv* }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.shader_glsl_ctx_priv = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.glsl_sample_function = type { i64 }
%struct.glsl_src_param = type { i32* }

@WINED3D_PSARGS_TEXTRANSFORM_SHIFT = common dso_local global i64 0, align 8
@WINED3D_PSARGS_TEXTRANSFORM_MASK = common dso_local global i64 0, align 8
@WINED3D_PSARGS_PROJECTED = common dso_local global i64 0, align 8
@WINED3D_SHADER_RESOURCE_TEXTURE_CUBE = common dso_local global i32 0, align 4
@WINED3D_GLSL_SAMPLE_PROJECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"WINED3D_TTFF_PROJECTED with WINED3D_TTFF_COUNT1?\0A\00", align 1
@WINED3DSP_WRITEMASK_1 = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_2 = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_3 = common dso_local global i64 0, align 8
@WINED3DSPSM_DZ = common dso_local global i32 0, align 4
@WINED3DSPSM_DW = common dso_local global i32 0, align 4
@WINED3DSI_TEXLD_PROJECT = common dso_local global i32 0, align 4
@WINED3DSP_NOSWIZZLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"T%u%s\00", align 1
@WINED3DSI_TEXLD_BIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_tex(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.glsl_sample_function, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  %14 = alloca %struct.glsl_src_param, align 8
  %15 = alloca %struct.glsl_src_param, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @WINED3D_SHADER_VERSION(i32 %23, i32 %31)
  store i64 %32, i64* %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %36, align 8
  store %struct.shader_glsl_ctx_priv* %37, %struct.shader_glsl_ctx_priv** %9, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @WINED3D_SHADER_VERSION(i32 2, i32 0)
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %42, i32 0, i32 3
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %63

52:                                               ; preds = %1
  %53 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %53, i32 0, i32 2
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %52, %41
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @WINED3D_SHADER_VERSION(i32 1, i32 4)
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %9, align 8
  %69 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @WINED3D_PSARGS_TEXTRANSFORM_SHIFT, align 8
  %75 = mul i64 %73, %74
  %76 = lshr i64 %72, %75
  %77 = load i64, i64* @WINED3D_PSARGS_TEXTRANSFORM_MASK, align 8
  %78 = and i64 %76, %77
  store i64 %78, i64* %10, align 8
  %79 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %80 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @WINED3D_PSARGS_PROJECTED, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %67
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @WINED3D_SHADER_RESOURCE_TEXTURE_CUBE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i64, i64* @WINED3D_GLSL_SAMPLE_PROJECTED, align 8
  %100 = load i64, i64* %5, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @WINED3D_PSARGS_PROJECTED, align 8
  %104 = xor i64 %103, -1
  %105 = and i64 %102, %104
  switch i64 %105, label %114 [
    i64 132, label %106
    i64 131, label %108
    i64 130, label %110
    i64 129, label %112
    i64 128, label %112
  ]

106:                                              ; preds = %98
  %107 = call i32 @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %114

108:                                              ; preds = %98
  %109 = load i64, i64* @WINED3DSP_WRITEMASK_1, align 8
  store i64 %109, i64* %7, align 8
  br label %114

110:                                              ; preds = %98
  %111 = load i64, i64* @WINED3DSP_WRITEMASK_2, align 8
  store i64 %111, i64* %7, align 8
  br label %114

112:                                              ; preds = %98, %98
  %113 = load i64, i64* @WINED3DSP_WRITEMASK_3, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %98, %112, %110, %108, %106
  br label %115

115:                                              ; preds = %114, %94, %67
  br label %174

116:                                              ; preds = %63
  %117 = load i64, i64* %3, align 8
  %118 = call i64 @WINED3D_SHADER_VERSION(i32 2, i32 0)
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %122 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %121, i32 0, i32 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @WINED3DSPSM_DZ, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i64, i64* @WINED3D_GLSL_SAMPLE_PROJECTED, align 8
  %132 = load i64, i64* %5, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* @WINED3DSP_WRITEMASK_2, align 8
  store i64 %134, i64* %7, align 8
  br label %145

135:                                              ; preds = %120
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @WINED3DSPSM_DW, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i64, i64* @WINED3D_GLSL_SAMPLE_PROJECTED, align 8
  %141 = load i64, i64* %5, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* @WINED3DSP_WRITEMASK_3, align 8
  store i64 %143, i64* %7, align 8
  br label %144

144:                                              ; preds = %139, %135
  br label %145

145:                                              ; preds = %144, %130
  br label %173

146:                                              ; preds = %116
  %147 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @WINED3DSI_TEXLD_PROJECT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %155 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %154, i32 0, i32 1
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @WINED3D_SHADER_RESOURCE_TEXTURE_CUBE, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %153
  %168 = load i64, i64* @WINED3D_GLSL_SAMPLE_PROJECTED, align 8
  %169 = load i64, i64* %5, align 8
  %170 = or i64 %169, %168
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* @WINED3DSP_WRITEMASK_3, align 8
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %167, %153, %146
  br label %173

173:                                              ; preds = %172, %145
  br label %174

174:                                              ; preds = %173, %115
  %175 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %176 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_13__* %177, i64 %178, i64 %179, i64 %180, %struct.glsl_sample_function* %4)
  %182 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %4, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %7, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %4, i32 0, i32 0
  store i64 %186, i64* %187, align 8
  %188 = load i64, i64* %3, align 8
  %189 = call i64 @WINED3D_SHADER_VERSION(i32 2, i32 0)
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %174
  %192 = load i64, i64* @WINED3DSP_NOSWIZZLE, align 8
  store i64 %192, i64* %8, align 8
  br label %200

193:                                              ; preds = %174
  %194 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %195 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %194, i32 0, i32 2
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %8, align 8
  br label %200

200:                                              ; preds = %193, %191
  %201 = load i64, i64* %3, align 8
  %202 = call i64 @WINED3D_SHADER_VERSION(i32 1, i32 4)
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load i64, i64* %7, align 8
  %206 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %207 = call i32 @shader_glsl_write_mask_to_str(i64 %205, i8* %206)
  %208 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %209 = load i64, i64* %6, align 8
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %213 = call i32 (%struct.wined3d_shader_instruction*, i64, %struct.glsl_sample_function*, i64, i32*, i32*, i32*, i32*, i8*, i64, ...) @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %208, i64 %209, %struct.glsl_sample_function* %4, i64 %210, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %211, i8* %212)
  br label %254

214:                                              ; preds = %200
  %215 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %216 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %217 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %216, i32 0, i32 2
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 0
  %220 = load i64, i64* %7, align 8
  %221 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %215, %struct.TYPE_14__* %219, i64 %220, %struct.glsl_src_param* %14)
  %222 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %223 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @WINED3DSI_TEXLD_BIAS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %214
  %229 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %230 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %231 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %230, i32 0, i32 2
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i64 0
  %234 = load i64, i64* @WINED3DSP_WRITEMASK_3, align 8
  %235 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %229, %struct.TYPE_14__* %233, i64 %234, %struct.glsl_src_param* %15)
  %236 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %8, align 8
  %239 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %15, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %14, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = ptrtoint i32* %242 to i64
  %244 = call i32 (%struct.wined3d_shader_instruction*, i64, %struct.glsl_sample_function*, i64, i32*, i32*, i32*, i32*, i8*, i64, ...) @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %236, i64 %237, %struct.glsl_sample_function* %4, i64 %238, i32* null, i32* null, i32* %240, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %243)
  br label %253

245:                                              ; preds = %214
  %246 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %247 = load i64, i64* %6, align 8
  %248 = load i64, i64* %8, align 8
  %249 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %14, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = ptrtoint i32* %250 to i64
  %252 = call i32 (%struct.wined3d_shader_instruction*, i64, %struct.glsl_sample_function*, i64, i32*, i32*, i32*, i32*, i8*, i64, ...) @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %246, i64 %247, %struct.glsl_sample_function* %4, i64 %248, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %251)
  br label %253

253:                                              ; preds = %245, %228
  br label %254

254:                                              ; preds = %253, %204
  %255 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %256 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %255, i32 0, i32 1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_13__* %257, %struct.glsl_sample_function* %4)
  ret void
}

declare dso_local i64 @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_13__*, i64, i64, i64, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i64, i8*) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i64, %struct.glsl_sample_function*, i64, i32*, i32*, i32*, i32*, i8*, i64, ...) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_14__*, i64, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_13__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
