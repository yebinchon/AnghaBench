; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_23__*, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.wined3d_shader*, %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_device* }
%struct.wined3d_device = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.shader_arb_ctx_priv = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_22__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64* }
%struct.wined3d_string_buffer = type { i32 }
%struct.color_fixup_masks = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@MAX_FRAGMENT_SAMPLERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"1D\00", align 1
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"RECT\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Only ordinary sampling from NP2 textures is supported.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CUBE\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WINED3DSPDM_SATURATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"_SAT\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@TEX_DERIV = common dso_local global i32 0, align 4
@TEX_PROJ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"Projected texture sampling with custom derivatives\0A\00", align 1
@TEX_BIAS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Biased texture sampling with custom derivatives\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"TXD%s %s, %s, %s, %s, texture[%u], %s;\0A\00", align 1
@TEX_LOD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"Projected texture sampling with explicit lod\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Biased texture sampling with explicit lod\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"TXL%s %s, %s, texture[%u], %s;\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Biased and Projected texture sampling\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"TXB%s %s, %s, texture[%u], %s;\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"TXP%s %s, %s, texture[%u], %s;\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"MUL TA, np2fixup[%u].%s, %s;\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"zwxy\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xyzw\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"TEX%s %s, TA, texture[%u], %s;\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"TEX%s %s, %s, texture[%u], %s;\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@ARB_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i64, i8*, i8*, i32, i8*, i8*)* @shader_hw_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_sample(%struct.wined3d_shader_instruction* %0, i64 %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.wined3d_shader_instruction*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_string_buffer*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.shader_arb_ctx_priv*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.wined3d_shader*, align 8
  %23 = alloca %struct.wined3d_device*, align 8
  %24 = alloca %struct.wined3d_gl_info*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.color_fixup_masks, align 8
  %27 = alloca %struct.color_fixup_masks, align 8
  %28 = alloca i8, align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %43, align 8
  store %struct.wined3d_string_buffer* %44, %struct.wined3d_string_buffer** %16, align 8
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %18, align 8
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %49, align 8
  store %struct.shader_arb_ctx_priv* %50, %struct.shader_arb_ctx_priv** %19, align 8
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 1
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @shader_is_pshader_version(i32 %58)
  store i64 %59, i64* %21, align 8
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %25, align 8
  %61 = load i64, i64* %21, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %7
  %64 = load i64, i64* @MAX_FRAGMENT_SAMPLERS, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %63, %7
  %68 = load i32, i32* %15, align 4
  switch i32 %68, label %142 [
    i32 131, label %69
    i32 130, label %70
    i32 129, label %140
    i32 128, label %141
  ]

69:                                               ; preds = %67
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %145

70:                                               ; preds = %67
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %71, i32 0, i32 1
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.wined3d_shader*, %struct.wined3d_shader** %74, align 8
  store %struct.wined3d_shader* %75, %struct.wined3d_shader** %22, align 8
  %76 = load %struct.wined3d_shader*, %struct.wined3d_shader** %22, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %76, i32 0, i32 0
  %78 = load %struct.wined3d_device*, %struct.wined3d_device** %77, align 8
  store %struct.wined3d_device* %78, %struct.wined3d_device** %23, align 8
  %79 = load %struct.wined3d_device*, %struct.wined3d_device** %23, align 8
  %80 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store %struct.wined3d_gl_info* %82, %struct.wined3d_gl_info** %24, align 8
  %83 = load i64, i64* %21, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %70
  %86 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %87 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %85
  %98 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %24, align 8
  %99 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %107

106:                                              ; preds = %97, %85, %70
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %107

107:                                              ; preds = %106, %105
  %108 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %108, i32 0, i32 1
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @shader_is_pshader_version(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %107
  %119 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %120 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 1, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %137

135:                                              ; preds = %130
  %136 = load i64, i64* @TRUE, align 8
  store i64 %136, i64* %18, align 8
  br label %137

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %137, %118
  br label %139

139:                                              ; preds = %138, %107
  br label %145

140:                                              ; preds = %67
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  br label %145

141:                                              ; preds = %67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  br label %145

142:                                              ; preds = %67
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %145

145:                                              ; preds = %142, %141, %140, %139, %69
  %146 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %147 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %146, i32 0, i32 0
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @WINED3DSPDM_SATURATE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %20, align 8
  br label %157

156:                                              ; preds = %145
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %20, align 8
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @MAX_FRAGMENT_SAMPLERS, align 8
  %160 = icmp uge i64 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %157
  %162 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %163 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %162, i32 0, i32 2
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* @MAX_FRAGMENT_SAMPLERS, align 8
  %170 = sub i64 %168, %169
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %9, align 8
  br label %173

173:                                              ; preds = %161, %157
  %174 = load i64, i64* %21, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %209

176:                                              ; preds = %173
  %177 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %178 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %177, i32 0, i32 0
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %8, align 8
  %187 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %186, i32 0, i32 0
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call { i64, i64 } @calc_color_correction(i32 %185, i32 %191)
  %193 = bitcast %struct.color_fixup_masks* %27 to { i64, i64 }*
  %194 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 0
  %195 = extractvalue { i64, i64 } %192, 0
  store i64 %195, i64* %194, align 8
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %193, i32 0, i32 1
  %197 = extractvalue { i64, i64 } %192, 1
  store i64 %197, i64* %196, align 8
  %198 = bitcast %struct.color_fixup_masks* %26 to i8*
  %199 = bitcast %struct.color_fixup_masks* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 16, i1 false)
  %200 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %26, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %176
  %204 = getelementptr inbounds %struct.color_fixup_masks, %struct.color_fixup_masks* %26, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203, %176
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %25, align 8
  br label %208

208:                                              ; preds = %207, %203
  br label %209

209:                                              ; preds = %208, %173
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @TEX_DERIV, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %209
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @TEX_PROJ, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = call i32 @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %214
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @TEX_BIAS, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 @FIXME(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %221
  %229 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %230 = load i8*, i8** %20, align 8
  %231 = load i8*, i8** %25, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %230, i8* %231, i8* %232, i8* %233, i8* %234, i64 %235, i8* %236)
  br label %341

238:                                              ; preds = %209
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @TEX_LOD, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %265

243:                                              ; preds = %238
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* @TEX_PROJ, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = call i32 @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %243
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @TEX_BIAS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %250
  %258 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %259 = load i8*, i8** %20, align 8
  %260 = load i8*, i8** %25, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = load i64, i64* %9, align 8
  %263 = load i8*, i8** %17, align 8
  %264 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %259, i8* %260, i8* %261, i64 %262, i8* %263)
  br label %340

265:                                              ; preds = %238
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @TEX_BIAS, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %265
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @TEX_PROJ, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %270
  %278 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %279 = load i8*, i8** %20, align 8
  %280 = load i8*, i8** %25, align 8
  %281 = load i8*, i8** %11, align 8
  %282 = load i64, i64* %9, align 8
  %283 = load i8*, i8** %17, align 8
  %284 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %279, i8* %280, i8* %281, i64 %282, i8* %283)
  br label %339

285:                                              ; preds = %265
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* @TEX_PROJ, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %285
  %291 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %292 = load i8*, i8** %20, align 8
  %293 = load i8*, i8** %25, align 8
  %294 = load i8*, i8** %11, align 8
  %295 = load i64, i64* %9, align 8
  %296 = load i8*, i8** %17, align 8
  %297 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %291, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %292, i8* %293, i8* %294, i64 %295, i8* %296)
  br label %338

298:                                              ; preds = %285
  %299 = load i64, i64* %18, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %329

301:                                              ; preds = %298
  %302 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %303 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %302, i32 0, i32 1
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = load i64, i64* %9, align 8
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  %310 = load i8, i8* %309, align 1
  store i8 %310, i8* %28, align 1
  %311 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %312 = load i8, i8* %28, align 1
  %313 = zext i8 %312 to i32
  %314 = ashr i32 %313, 1
  %315 = load i8, i8* %28, align 1
  %316 = zext i8 %315 to i32
  %317 = srem i32 %316, 2
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %321 = load i8*, i8** %11, align 8
  %322 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %311, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %314, i8* %320, i8* %321)
  %323 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %324 = load i8*, i8** %20, align 8
  %325 = load i8*, i8** %25, align 8
  %326 = load i64, i64* %9, align 8
  %327 = load i8*, i8** %17, align 8
  %328 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %323, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i8* %324, i8* %325, i64 %326, i8* %327)
  br label %337

329:                                              ; preds = %298
  %330 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %331 = load i8*, i8** %20, align 8
  %332 = load i8*, i8** %25, align 8
  %333 = load i8*, i8** %11, align 8
  %334 = load i64, i64* %9, align 8
  %335 = load i8*, i8** %17, align 8
  %336 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %330, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %331, i8* %332, i8* %333, i64 %334, i8* %335)
  br label %337

337:                                              ; preds = %329, %301
  br label %338

338:                                              ; preds = %337, %290
  br label %339

339:                                              ; preds = %338, %277
  br label %340

340:                                              ; preds = %339, %257
  br label %341

341:                                              ; preds = %340, %228
  %342 = load i64, i64* %21, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  %345 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %346 = load i8*, i8** %10, align 8
  %347 = load i8*, i8** %25, align 8
  %348 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %349 = load i32, i32* @ARB_ONE, align 4
  %350 = call i32 @arb_get_helper_value(i32 %348, i32 %349)
  %351 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %352 = load i32, i32* @ARB_TWO, align 4
  %353 = call i32 @arb_get_helper_value(i32 %351, i32 %352)
  %354 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  %355 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %354, i32 0, i32 0
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load i64, i64* %9, align 8
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @gen_color_correction(%struct.wined3d_string_buffer* %345, i8* %346, i8* %347, i32 %350, i32 %353, i32 %362, %struct.color_fixup_masks* byval(%struct.color_fixup_masks) align 8 %26)
  br label %364

364:                                              ; preds = %344, %341
  ret void
}

declare dso_local i64 @shader_is_pshader_version(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local { i64, i64 } @calc_color_correction(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @gen_color_correction(%struct.wined3d_string_buffer*, i8*, i8*, i32, i32, i32, %struct.color_fixup_masks* byval(%struct.color_fixup_masks) align 8) #1

declare dso_local i32 @arb_get_helper_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
