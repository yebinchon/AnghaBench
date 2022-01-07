; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_generate_vshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_generate_vshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_3__*, %struct.wined3d_shader_reg_maps, %struct.arb_vshader_private* }
%struct.TYPE_3__ = type { %struct.shader_arb_priv* }
%struct.shader_arb_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64* }
%struct.arb_vshader_private = type { i32 }
%struct.wined3d_gl_info = type { i32, i64* }
%struct.wined3d_string_buffer = type { i32 }
%struct.arb_vs_compile_args = type { i32 }
%struct.arb_vs_compiled_shader = type { i32, i32, i32* }
%struct.wined3d_shader_signature = type { i32 }
%struct.shader_arb_ctx_priv = type { i64, i32, i32, i32, i32, %struct.arb_vs_compile_args* }

@.str = private unnamed_addr constant [12 x i8] c"!!ARBvp1.0\0A\00", align 1
@NV_VERTEX_PROGRAM3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"OPTION NV_vertex_program3;\0A\00", align 1
@NV3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"ADDRESS aL;\0A\00", align 1
@NV_VERTEX_PROGRAM2_OPTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"OPTION NV_vertex_program2;\0A\00", align 1
@NV2 = common dso_local global i64 0, align 8
@ARB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"TEMP TMP_OUT;\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"TEMP TMP_FOGCOORD;\0A\00", align 1
@eps = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"PARAM helper_const = { 0.0, 1.0, 2.0, %s};\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"PARAM rel_addr_const = { 0.5, %d.0, 0.0, 0.0 };\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"TEMP A0_SHADOW;\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"TEMP TA;\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"TEMP TB;\0A\00", align 1
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@WINED3D_CONST_NUM_UNUSED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"PARAM I%u = {%u, %u, %u, -1};\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"PARAM I%u = program.local[%u];\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"PARAM posFixup = program.local[%u];\0A\00", align 1
@NV_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@ARB_0001 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"MOV result.color.secondary, %s;\0A\00", align 1
@WINED3D_QUIRK_SET_TEXCOORD_W = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@MAX_REG_TEXCRD = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_ALL = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"MOV result.texcoord[%u].w, %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Creating a hw vertex shader, prg=%d\0A\00", align 1
@GL_VERTEX_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"Created hw vertex shader, prg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.arb_vs_compile_args*, %struct.arb_vs_compiled_shader*, %struct.wined3d_shader_signature*)* @shader_arb_generate_vshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_arb_generate_vshader(%struct.wined3d_shader* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_string_buffer* %2, %struct.arb_vs_compile_args* %3, %struct.arb_vs_compiled_shader* %4, %struct.wined3d_shader_signature* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca %struct.arb_vs_compile_args*, align 8
  %12 = alloca %struct.arb_vs_compiled_shader*, align 8
  %13 = alloca %struct.wined3d_shader_signature*, align 8
  %14 = alloca %struct.arb_vshader_private*, align 8
  %15 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %16 = alloca %struct.shader_arb_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.shader_arb_ctx_priv, align 8
  %20 = alloca i32, align 4
  %21 = alloca [17 x i8], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %8, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_string_buffer* %2, %struct.wined3d_string_buffer** %10, align 8
  store %struct.arb_vs_compile_args* %3, %struct.arb_vs_compile_args** %11, align 8
  store %struct.arb_vs_compiled_shader* %4, %struct.arb_vs_compiled_shader** %12, align 8
  store %struct.wined3d_shader_signature* %5, %struct.wined3d_shader_signature** %13, align 8
  %26 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %26, i32 0, i32 2
  %28 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %27, align 8
  store %struct.arb_vshader_private* %28, %struct.arb_vshader_private** %14, align 8
  %29 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %29, i32 0, i32 1
  store %struct.wined3d_shader_reg_maps* %30, %struct.wined3d_shader_reg_maps** %15, align 8
  %31 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %34, align 8
  store %struct.shader_arb_priv* %35, %struct.shader_arb_priv** %16, align 8
  store i32 0, i32* %18, align 4
  %36 = call i32 @memset(%struct.shader_arb_ctx_priv* %19, i32 0, i32 32)
  %37 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %11, align 8
  %38 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 5
  store %struct.arb_vs_compile_args* %37, %struct.arb_vs_compile_args** %38, align 8
  %39 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 4
  %40 = call i32 @list_init(i32* %39)
  %41 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %42 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %13, align 8
  %43 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %12, align 8
  %44 = call i32 @init_output_registers(%struct.wined3d_shader* %41, %struct.wined3d_shader_signature* %42, %struct.shader_arb_ctx_priv* %19, %struct.arb_vs_compiled_shader* %43)
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %48 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NV_VERTEX_PROGRAM3, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %6
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* @NV3, align 8
  %58 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %80

61:                                               ; preds = %6
  %62 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %63 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @NV_VERTEX_PROGRAM2_OPTION, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %71 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i64, i64* @NV2, align 8
  %73 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %75 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %79

76:                                               ; preds = %61
  %77 = load i64, i64* @ARB, align 8
  %78 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %69
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %84 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %89 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %14, align 8
  %92 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %93 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %94 = call i64 @need_helper_const(%struct.arb_vshader_private* %91, %struct.wined3d_shader_reg_maps* %92, %struct.wined3d_gl_info* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* @eps, align 4
  %98 = getelementptr inbounds [17 x i8], [17 x i8]* %21, i64 0, i64 0
  %99 = call i32 @wined3d_ftoa(i32 %97, i8* %98)
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %101 = getelementptr inbounds [17 x i8], [17 x i8]* %21, i64 0, i64 0
  %102 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %14, align 8
  %105 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %107 = call i64 @need_rel_addr_const(%struct.arb_vshader_private* %104, %struct.wined3d_shader_reg_maps* %105, %struct.wined3d_gl_info* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %111 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %14, align 8
  %112 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %109, %103
  %118 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %119 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %120 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %121 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %122 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %123 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %125 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %126 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 3
  %127 = call i32 @shader_generate_arb_declarations(%struct.wined3d_shader* %122, %struct.wined3d_shader_reg_maps* %123, %struct.wined3d_string_buffer* %124, %struct.wined3d_gl_info* %125, i32* %126, %struct.shader_arb_ctx_priv* %19)
  store i32 0, i32* %20, align 4
  br label %128

128:                                              ; preds = %190, %117
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %193

132:                                              ; preds = %128
  %133 = load i32, i32* @WINED3D_CONST_NUM_UNUSED, align 4
  %134 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %12, align 8
  %135 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %20, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %141 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %20, align 4
  %144 = shl i32 1, %143
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %189

147:                                              ; preds = %132
  %148 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @NV2, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %189

152:                                              ; preds = %147
  %153 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %154 = load i32, i32* %20, align 4
  %155 = call i32* @find_loop_control_values(%struct.wined3d_shader* %153, i32 %154)
  store i32* %155, i32** %22, align 8
  %156 = load i32*, i32** %22, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %160 = load i32, i32* %20, align 4
  %161 = load i32*, i32** %22, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %22, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %22, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %160, i32 %163, i32 %166, i32 %169)
  br label %188

171:                                              ; preds = %152
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %12, align 8
  %174 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %20, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %12, align 8
  %180 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %18, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %18, align 4
  %187 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %184, i32 %185)
  br label %188

188:                                              ; preds = %171, %158
  br label %189

189:                                              ; preds = %188, %147, %132
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %20, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %20, align 4
  br label %128

193:                                              ; preds = %128
  %194 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %195 = load i32, i32* %18, align 4
  %196 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  %199 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %12, align 8
  %200 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %202 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* @NV_VERTEX_PROGRAM, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %266, label %208

208:                                              ; preds = %193
  %209 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %210 = load i32, i32* @ARB_0001, align 4
  %211 = call i8* @arb_get_helper_value(i32 %209, i32 %210)
  store i8* %211, i8** %23, align 8
  %212 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %213 = load i8*, i8** %23, align 8
  %214 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %213)
  %215 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %216 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @WINED3D_QUIRK_SET_TEXCOORD_W, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %265

221:                                              ; preds = %208
  %222 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %16, align 8
  %223 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %265, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %228 = load i32, i32* @ARB_ONE, align 4
  %229 = call i8* @arb_get_helper_value(i32 %227, i32 %228)
  store i8* %229, i8** %25, align 8
  store i32 0, i32* %24, align 4
  br label %230

230:                                              ; preds = %261, %226
  %231 = load i32, i32* %24, align 4
  %232 = load i32, i32* @MAX_REG_TEXCRD, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %264

234:                                              ; preds = %230
  %235 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %236 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %24, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %234
  %245 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %246 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %24, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @WINED3DSP_WRITEMASK_ALL, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %244
  %256 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %257 = load i32, i32* %24, align 4
  %258 = load i8*, i8** %25, align 8
  %259 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %257, i8* %258)
  br label %260

260:                                              ; preds = %255, %244, %234
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %24, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %24, align 4
  br label %230

264:                                              ; preds = %230
  br label %265

265:                                              ; preds = %264, %221, %208
  br label %266

266:                                              ; preds = %265, %193
  %267 = load i32, i32* @TRUE, align 4
  %268 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 2
  store i32 %267, i32* %268, align 4
  %269 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %270 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %271 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %272 = call i32 @shader_generate_code(%struct.wined3d_shader* %269, %struct.wined3d_string_buffer* %270, %struct.wined3d_shader_reg_maps* %271, %struct.shader_arb_ctx_priv* %19, i32* null, i32* null)
  %273 = call i64 @FAILED(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %266
  store i32 -1, i32* %7, align 4
  br label %310

276:                                              ; preds = %266
  %277 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %19, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %276
  %281 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %14, align 8
  %282 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %11, align 8
  %283 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  %284 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %285 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %286 = call i32 @vshader_add_footer(%struct.shader_arb_ctx_priv* %19, %struct.arb_vshader_private* %281, %struct.arb_vs_compile_args* %282, %struct.wined3d_shader_reg_maps* %283, %struct.wined3d_gl_info* %284, %struct.wined3d_string_buffer* %285)
  br label %287

287:                                              ; preds = %280, %276
  %288 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %289 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %290 = call i32 @glGenProgramsARB(i32 1, i32* %17)
  %291 = call i32 @GL_EXTCALL(i32 %290)
  %292 = load i32, i32* %17, align 4
  %293 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %295 = load i32, i32* %17, align 4
  %296 = call i32 @glBindProgramARB(i32 %294, i32 %295)
  %297 = call i32 @GL_EXTCALL(i32 %296)
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %298)
  %300 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %301 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %302 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %303 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @shader_arb_compile(%struct.wined3d_gl_info* %300, i32 %301, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %287
  store i32 -1, i32* %7, align 4
  br label %310

308:                                              ; preds = %287
  %309 = load i32, i32* %17, align 4
  store i32 %309, i32* %7, align 4
  br label %310

310:                                              ; preds = %308, %307, %275
  %311 = load i32, i32* %7, align 4
  ret i32 %311
}

declare dso_local i32 @memset(%struct.shader_arb_ctx_priv*, i32, i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @init_output_registers(%struct.wined3d_shader*, %struct.wined3d_shader_signature*, %struct.shader_arb_ctx_priv*, %struct.arb_vs_compiled_shader*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @need_helper_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @wined3d_ftoa(i32, i8*) #1

declare dso_local i64 @need_rel_addr_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_generate_arb_declarations(%struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i32*, %struct.shader_arb_ctx_priv*) #1

declare dso_local i32* @find_loop_control_values(%struct.wined3d_shader*, i32) #1

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_arb_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @vshader_add_footer(%struct.shader_arb_ctx_priv*, %struct.arb_vshader_private*, %struct.arb_vs_compile_args*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenProgramsARB(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @glBindProgramARB(i32, i32) #1

declare dso_local i32 @shader_arb_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
