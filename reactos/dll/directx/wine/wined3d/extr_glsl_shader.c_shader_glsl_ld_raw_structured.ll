; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld_raw_structured.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld_raw_structured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i64, %struct.TYPE_12__*, %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_src_param* }
%struct.TYPE_12__ = type { %struct.wined3d_string_buffer*, %struct.shader_glsl_ctx_priv*, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_string_buffer = type { i32 }
%struct.shader_glsl_ctx_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_11__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.wined3d_shader_src_param = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSPR_RESOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid resource index %u.\0A\00", align 1
@WINED3D_SAMPLER_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"texelFetch\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sampler\00", align 1
@WINED3DSPR_UAV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"imageLoad\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid TGSM index %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@WINED3DSIH_LD_STRUCTURED = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"%s * %u + \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s / 4\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"tmp0.x = intBitsToFloat(%s);\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"floatBitsToInt(tmp0.x)\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s(%s_%s%u, %s + %u).x);\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%s_%s%u[%s + %u]);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_ld_raw_structured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ld_raw_structured(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_shader_src_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %12 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %13 = alloca %struct.wined3d_string_buffer*, align 8
  %14 = alloca %struct.glsl_src_param, align 4
  %15 = alloca %struct.glsl_src_param, align 4
  %16 = alloca %struct.wined3d_string_buffer*, align 8
  %17 = alloca %struct.wined3d_shader_dst_param, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %23, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @shader_glsl_get_prefix(i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 4
  %31 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %30, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %31, i64 %36
  store %struct.wined3d_shader_src_param* %37, %struct.wined3d_shader_src_param** %4, align 8
  store i32 0, i32* %10, align 4
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %41, align 8
  store %struct.wined3d_shader_reg_maps* %42, %struct.wined3d_shader_reg_maps** %11, align 8
  %43 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %46, align 8
  store %struct.shader_glsl_ctx_priv* %47, %struct.shader_glsl_ctx_priv** %12, align 8
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %51, align 8
  store %struct.wined3d_string_buffer* %52, %struct.wined3d_string_buffer** %13, align 8
  %53 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %4, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WINED3DSPR_RESOURCE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %1
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %68, i32 0, i32 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %70)
  %72 = icmp uge i32 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %269

76:                                               ; preds = %66
  %77 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %77, i32 0, i32 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %85, i32 0, i32 3
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @WINED3D_SAMPLER_DEFAULT, align 4
  %89 = call i32 @shader_glsl_find_sampler(i32* %86, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %137

90:                                               ; preds = %1
  %91 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %4, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WINED3DSPR_UAV, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %100 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %101)
  %103 = icmp uge i32 %98, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %269

107:                                              ; preds = %97
  %108 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %108, i32 0, i32 2
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  br label %136

117:                                              ; preds = %90
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %120 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp uge i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %269

126:                                              ; preds = %117
  %127 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %11, align 8
  %128 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %8, align 4
  store i8* null, i8** %18, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %136

136:                                              ; preds = %126, %107
  br label %137

137:                                              ; preds = %136, %76
  %138 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %12, align 8
  %139 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.wined3d_string_buffer* @string_buffer_get(i32 %140)
  store %struct.wined3d_string_buffer* %141, %struct.wined3d_string_buffer** %16, align 8
  %142 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %143 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WINED3DSIH_LD_STRUCTURED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %137
  %148 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %149 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %150 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %149, i32 0, i32 4
  %151 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %10, align 4
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %151, i64 %154
  %156 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %157 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %148, %struct.wined3d_shader_src_param* %155, i32 %156, %struct.glsl_src_param* %14)
  %158 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %159 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %14, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %147, %137
  %166 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %167 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %168 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %167, i32 0, i32 4
  %169 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %169, i64 %172
  %174 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %175 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %166, %struct.wined3d_shader_src_param* %173, i32 %174, %struct.glsl_src_param* %15)
  %176 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %177 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %15, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %180)
  %182 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %183 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %182, i32 0, i32 3
  %184 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %183, align 8
  %185 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %184, i64 0
  %186 = bitcast %struct.wined3d_shader_dst_param* %17 to i8*
  %187 = bitcast %struct.wined3d_shader_dst_param* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 8, i1 false)
  %188 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @shader_glsl_get_write_mask_size(i32 %189)
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %202

192:                                              ; preds = %165
  %193 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %194 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %195 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %198)
  %200 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %201 = call i32 @string_buffer_sprintf(%struct.wined3d_string_buffer* %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %202

202:                                              ; preds = %192, %165
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %260, %202
  %204 = load i32, i32* %5, align 4
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %206, label %263

206:                                              ; preds = %203
  %207 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %208 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %207, i32 0, i32 3
  %209 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %208, align 8
  %210 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %209, i64 0
  %211 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %214 = load i32, i32* %5, align 4
  %215 = shl i32 %213, %214
  %216 = and i32 %212, %215
  %217 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  %218 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %219 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %218, i32 0, i32 2
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %221, align 8
  %223 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %224 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %222, %struct.wined3d_shader_instruction* %223, %struct.wined3d_shader_dst_param* %17, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %206
  br label %260

230:                                              ; preds = %206
  %231 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %4, align 8
  %232 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @shader_glsl_swizzle_get_component(i32 %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i8*, i8** %18, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %249

238:                                              ; preds = %230
  %239 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %240 = load i8*, i8** %18, align 8
  %241 = load i8*, i8** %3, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %245 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %239, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %240, i8* %241, i8* %242, i32 %243, i32 %246, i32 %247)
  br label %259

249:                                              ; preds = %230
  %250 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %251 = load i8*, i8** %3, align 8
  %252 = load i8*, i8** %19, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %255 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %251, i8* %252, i32 %253, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %249, %238
  br label %260

260:                                              ; preds = %259, %229
  %261 = load i32, i32* %5, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %5, align 4
  br label %203

263:                                              ; preds = %203
  %264 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %12, align 8
  %265 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  %268 = call i32 @string_buffer_release(i32 %266, %struct.wined3d_string_buffer* %267)
  br label %269

269:                                              ; preds = %263, %123, %104, %73
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i32) #1

declare dso_local i32 @shader_glsl_swizzle_get_component(i32, i32) #1

declare dso_local i32 @string_buffer_release(i32, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
