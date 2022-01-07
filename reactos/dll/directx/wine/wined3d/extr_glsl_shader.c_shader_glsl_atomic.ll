; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_atomic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.wined3d_shader_instruction = type { i32, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.wined3d_string_buffer*, %struct.shader_glsl_ctx_priv*, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_string_buffer = type { i32 }
%struct.shader_glsl_ctx_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_13__*, %struct.TYPE_10__*, %struct.wined3d_shader_version }
%struct.TYPE_10__ = type { i32 }
%struct.wined3d_shader_version = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSPR_GROUPSHAREDMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid TGSM index %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@WINED3D_DATA_UINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@resource_type_info = common dso_local global %struct.TYPE_13__* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"atomicAnd\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"imageAtomicAnd\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"atomicCompSwap\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"imageAtomicCompSwap\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"atomicAdd\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"imageAtomicAdd\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"atomicMax\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"imageAtomicMax\00", align 1
@WINED3D_DATA_INT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Unhandled opcode %#x for unsigned integers.\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"atomicMin\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"imageAtomicMin\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"atomicOr\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"imageAtomicOr\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Unhandled opcode %#x for signed integers.\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"atomicXor\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"imageAtomicXor\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"atomicExchange\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"imageAtomicExchange\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Unhandled opcode %#x.\0A\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"%s * %u + %s / 4\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WINED3D_VIEW_BUFFER_RAW = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"/ 4\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"%s(%s_%s%u[%s], \00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%s(%s_%s%u, %s, \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_atomic(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %5 = alloca %struct.wined3d_shader_version*, align 8
  %6 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %7 = alloca %struct.glsl_src_param, align 4
  %8 = alloca %struct.glsl_src_param, align 4
  %9 = alloca %struct.glsl_src_param, align 4
  %10 = alloca %struct.glsl_src_param, align 4
  %11 = alloca %struct.wined3d_string_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_string_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 137, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 128
  br label %30

30:                                               ; preds = %25, %1
  %31 = phi i1 [ false, %1 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %3, align 8
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %37, align 8
  store %struct.wined3d_shader_reg_maps* %38, %struct.wined3d_shader_reg_maps** %4, align 8
  %39 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %39, i32 0, i32 3
  store %struct.wined3d_shader_version* %40, %struct.wined3d_shader_version** %5, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %44, align 8
  store %struct.shader_glsl_ctx_priv* %45, %struct.shader_glsl_ctx_priv** %6, align 8
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %46, i32 0, i32 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %49, align 8
  store %struct.wined3d_string_buffer* %50, %struct.wined3d_string_buffer** %11, align 8
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WINED3DSPR_GROUPSHAREDMEM, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %20, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %30
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp uge i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %399

85:                                               ; preds = %76
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %86 = load i32, i32* @WINED3D_DATA_UINT, align 4
  store i32 %86, i32* %14, align 4
  store i32 1, i32* %19, align 4
  %87 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  br label %146

95:                                               ; preds = %30
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %98 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %99)
  %101 = icmp uge i32 %96, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %399

105:                                              ; preds = %95
  %106 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %107 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @resource_type_info, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %115)
  %117 = icmp uge i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %399

121:                                              ; preds = %105
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  %122 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %123 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %122, i32 0, i32 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** @resource_type_info, align 8
  %131 = load i32, i32* %12, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  %137 = sub i32 %136, 1
  store i32 %137, i32* %19, align 4
  %138 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %138, i32 0, i32 1
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %121, %85
  %147 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %246 [
    i32 146, label %150
    i32 137, label %150
    i32 145, label %156
    i32 136, label %156
    i32 144, label %162
    i32 134, label %162
    i32 143, label %168
    i32 133, label %168
    i32 142, label %183
    i32 132, label %183
    i32 141, label %198
    i32 131, label %198
    i32 140, label %204
    i32 130, label %204
    i32 139, label %219
    i32 129, label %219
    i32 138, label %234
    i32 128, label %234
    i32 135, label %240
  ]

150:                                              ; preds = %146, %146
  %151 = load i64, i64* %20, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  br label %155

154:                                              ; preds = %150
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %155

155:                                              ; preds = %154, %153
  br label %251

156:                                              ; preds = %146, %146
  %157 = load i64, i64* %20, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %161

160:                                              ; preds = %156
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %161

161:                                              ; preds = %160, %159
  br label %251

162:                                              ; preds = %146, %146
  %163 = load i64, i64* %20, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %17, align 8
  br label %167

166:                                              ; preds = %162
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  br label %167

167:                                              ; preds = %166, %165
  br label %251

168:                                              ; preds = %146, %146
  %169 = load i64, i64* %20, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %173

172:                                              ; preds = %168
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %173

173:                                              ; preds = %172, %171
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @WINED3D_DATA_INT, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %179 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %180)
  br label %399

182:                                              ; preds = %173
  br label %251

183:                                              ; preds = %146, %146
  %184 = load i64, i64* %20, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %17, align 8
  br label %188

187:                                              ; preds = %183
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  br label %188

188:                                              ; preds = %187, %186
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @WINED3D_DATA_INT, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %194 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %195)
  br label %399

197:                                              ; preds = %188
  br label %251

198:                                              ; preds = %146, %146
  %199 = load i64, i64* %20, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %17, align 8
  br label %203

202:                                              ; preds = %198
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %17, align 8
  br label %203

203:                                              ; preds = %202, %201
  br label %251

204:                                              ; preds = %146, %146
  %205 = load i64, i64* %20, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %17, align 8
  br label %209

208:                                              ; preds = %204
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8
  br label %209

209:                                              ; preds = %208, %207
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @WINED3D_DATA_UINT, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %215 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %216)
  br label %399

218:                                              ; preds = %209
  br label %251

219:                                              ; preds = %146, %146
  %220 = load i64, i64* %20, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %17, align 8
  br label %224

223:                                              ; preds = %219
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %17, align 8
  br label %224

224:                                              ; preds = %223, %222
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @WINED3D_DATA_UINT, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %230 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %231)
  br label %399

233:                                              ; preds = %224
  br label %251

234:                                              ; preds = %146, %146
  %235 = load i64, i64* %20, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %17, align 8
  br label %239

238:                                              ; preds = %234
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8** %17, align 8
  br label %239

239:                                              ; preds = %238, %237
  br label %251

240:                                              ; preds = %146
  %241 = load i64, i64* %20, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8** %17, align 8
  br label %245

244:                                              ; preds = %240
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8** %17, align 8
  br label %245

245:                                              ; preds = %244, %243
  br label %251

246:                                              ; preds = %146
  %247 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %248 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %249)
  br label %399

251:                                              ; preds = %245, %239, %233, %218, %203, %197, %182, %167, %161, %155
  %252 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %6, align 8
  %253 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call %struct.wined3d_string_buffer* @string_buffer_get(i32 %254)
  store %struct.wined3d_string_buffer* %255, %struct.wined3d_string_buffer** %13, align 8
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %251
  %259 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %260 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %261 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %265 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %259, i32* %263, i32 %264, %struct.glsl_src_param* %7)
  %266 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %267 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %268 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %272 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %266, i32* %270, i32 %271, %struct.glsl_src_param* %8)
  %273 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %274 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %16, align 4
  %277 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %275, i32 %276, i32 %278)
  br label %310

280:                                              ; preds = %251
  %281 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %282 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %283 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %19, align 4
  %287 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %281, i32* %285, i32 %286, %struct.glsl_src_param* %8)
  %288 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %289 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %290)
  %292 = load i64, i64* %20, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %306, label %294

294:                                              ; preds = %280
  %295 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %296 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %295, i32 0, i32 1
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = load i32, i32* %15, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @WINED3D_VIEW_BUFFER_RAW, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %294, %280
  %307 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %308 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %307, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %309

309:                                              ; preds = %306, %294
  br label %310

310:                                              ; preds = %309, %258
  %311 = load i64, i64* %3, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %326

313:                                              ; preds = %310
  %314 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %315 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %314, i32 0, i32 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %317, align 8
  %319 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %320 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %321 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %320, i32 0, i32 3
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 0
  %324 = load i32, i32* %14, align 4
  %325 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %318, %struct.wined3d_shader_instruction* %319, %struct.TYPE_12__* %323, i32 %324)
  br label %326

326:                                              ; preds = %313, %310
  %327 = load i64, i64* %20, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %326
  %330 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %331 = load i8*, i8** %17, align 8
  %332 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %5, align 8
  %333 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @shader_glsl_get_prefix(i32 %334)
  %336 = load i8*, i8** %18, align 8
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %339 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %330, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* %331, i32 %335, i8* %336, i32 %337, i32 %340)
  br label %355

342:                                              ; preds = %326
  %343 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %344 = load i8*, i8** %17, align 8
  %345 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %5, align 8
  %346 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @shader_glsl_get_prefix(i32 %347)
  %349 = load i8*, i8** %18, align 8
  %350 = load i32, i32* %15, align 4
  %351 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %352 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* %344, i32 %348, i8* %349, i32 %350, i32 %353)
  br label %355

355:                                              ; preds = %342, %329
  %356 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %357 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %358 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %362 = load i32, i32* %14, align 4
  %363 = call i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction* %356, i32* %360, i32 %361, %struct.glsl_src_param* %9, i32 %362)
  %364 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %365 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %9, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %364, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %366)
  %368 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %369 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp sge i32 %370, 3
  br i1 %371, label %372, label %385

372:                                              ; preds = %355
  %373 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %374 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %375 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 2
  %378 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %379 = load i32, i32* %14, align 4
  %380 = call i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction* %373, i32* %377, i32 %378, %struct.glsl_src_param* %10, i32 %379)
  %381 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %382 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %10, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 %383)
  br label %385

385:                                              ; preds = %372, %355
  %386 = load i64, i64* %3, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %390 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %389, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %391

391:                                              ; preds = %388, %385
  %392 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %393 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %394 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %6, align 8
  %395 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %398 = call i32 @string_buffer_release(i32 %396, %struct.wined3d_string_buffer* %397)
  br label %399

399:                                              ; preds = %391, %246, %228, %213, %192, %177, %118, %102, %82
  ret void
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, i32, ...) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*, i32) #1

declare dso_local i32 @string_buffer_release(i32, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
