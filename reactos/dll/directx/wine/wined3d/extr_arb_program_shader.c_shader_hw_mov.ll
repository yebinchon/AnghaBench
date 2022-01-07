; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_mov.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_14__*, %struct.wined3d_shader_src_param*, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.wined3d_shader_src_param = type { i32 }
%struct.TYPE_8__ = type { %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader* }
%struct.shader_arb_ctx_priv = type { i64, i8*, i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.wined3d_shader = type { %struct.TYPE_13__, %struct.arb_vshader_private* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.arb_vshader_private = type { i64 }

@ARB_ZERO = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@ARB_TWO = common dso_local global i32 0, align 4
@WINED3DSIH_MOVA = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@ARB_VS_REL_OFFSET = common dso_local global i32 0, align 4
@NV2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SGE A0_SHADOW%s, %s, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"MAD A0_SHADOW%s, A0_SHADOW, %s, -%s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ABS TA%s, %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ADD TA%s, TA, rel_addr_const.x;\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"FLR TA%s, TA;\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ADD TA%s, TA, %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"MUL A0_SHADOW%s, TA, A0_SHADOW;\0A\00", align 1
@WINED3DSPR_ADDR = common dso_local global i64 0, align 8
@ARB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"ADD TA.x, %s, %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ARL A0.x, TA.x;\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ARL A0.x, %s;\0A\00", align 1
@WINED3DSPR_COLOROUT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"#mov handled in srgb write or fog code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_mov(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader*, align 8
  %4 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shader_arb_ctx_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.arb_vshader_private*, align 8
  %13 = alloca [6 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca %struct.arb_vshader_private*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_shader_src_param, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load %struct.wined3d_shader*, %struct.wined3d_shader** %21, align 8
  store %struct.wined3d_shader* %22, %struct.wined3d_shader** %3, align 8
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %26, align 8
  store %struct.wined3d_shader_reg_maps* %27, %struct.wined3d_shader_reg_maps** %4, align 8
  %28 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @shader_is_pshader_version(i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %36, align 8
  store %struct.shader_arb_ctx_priv* %37, %struct.shader_arb_ctx_priv** %6, align 8
  %38 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ARB_ZERO, align 4
  %43 = call i8* @arb_get_helper_value(i32 %41, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ARB_ONE, align 4
  %49 = call i8* @arb_get_helper_value(i32 %47, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ARB_TWO, align 4
  %55 = call i8* @arb_get_helper_value(i32 %53, i32 %54)
  store i8* %55, i8** %9, align 8
  %56 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %59, align 8
  store %struct.wined3d_string_buffer* %60, %struct.wined3d_string_buffer** %10, align 8
  %61 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WINED3DSIH_MOVA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %1
  %67 = load %struct.wined3d_shader*, %struct.wined3d_shader** %3, align 8
  %68 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %67, i32 0, i32 1
  %69 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %68, align 8
  store %struct.arb_vshader_private* %69, %struct.arb_vshader_private** %12, align 8
  %70 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %71 = load i32, i32* @ARB_VS_REL_OFFSET, align 4
  %72 = call i8* @arb_get_helper_value(i32 %70, i32 %71)
  store i8* %72, i8** %14, align 8
  %73 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %74 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NV2, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %80 = call i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction* %79)
  br label %258

81:                                               ; preds = %66
  %82 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %83 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %84 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %83, i32 0, i32 2
  %85 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %84, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %85, i64 0
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %88 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %82, %struct.wined3d_shader_src_param* %86, i32 0, i8* %87)
  %89 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %90 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %91 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 0
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %95 = call i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction* %89, %struct.TYPE_14__* %93, i8* %94)
  %96 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %98, i8* %99)
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %102 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %103, i8* %104)
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %107 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %109 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %111 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %112 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  %113 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %114 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %115 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %114)
  %116 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %12, align 8
  %117 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %81
  %121 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %122 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %81
  %126 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %128 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %127)
  %129 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %130 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %129, i32 0, i32 3
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %132, align 8
  %134 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 0, i8* %136, align 1
  br label %258

137:                                              ; preds = %1
  %138 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %210

143:                                              ; preds = %137
  %144 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %145 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @shader_is_pshader_version(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %210, label %150

150:                                              ; preds = %143
  %151 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %152 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %151, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @WINED3DSPR_ADDR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %210

160:                                              ; preds = %150
  %161 = load %struct.wined3d_shader*, %struct.wined3d_shader** %3, align 8
  %162 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %161, i32 0, i32 1
  %163 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %162, align 8
  store %struct.arb_vshader_private* %163, %struct.arb_vshader_private** %15, align 8
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %164, align 16
  %165 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %15, align 8
  %166 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %160
  %170 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %171 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ARB, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %169
  %176 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %177 = load i32, i32* @ARB_VS_REL_OFFSET, align 4
  %178 = call i8* @arb_get_helper_value(i32 %176, i32 %177)
  store i8* %178, i8** %16, align 8
  %179 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %180 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %181 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %180, i32 0, i32 2
  %182 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %181, align 8
  %183 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %182, i64 0
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %185 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %179, %struct.wined3d_shader_src_param* %183, i32 0, i8* %184)
  %186 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %187, i8* %188)
  %190 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %191 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %209

192:                                              ; preds = %169, %160
  %193 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %194 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %193, i32 0, i32 2
  %195 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %194, align 8
  %196 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %195, i64 0
  %197 = bitcast %struct.wined3d_shader_src_param* %17 to i8*
  %198 = bitcast %struct.wined3d_shader_src_param* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 4, i1 false)
  %199 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %17, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @shader_arb_select_component(i32 %200, i32 0)
  %202 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %17, i32 0, i32 0
  store i32 %201, i32* %202, align 4
  %203 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %204 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %205 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %203, %struct.wined3d_shader_src_param* %17, i32 0, i8* %204)
  %206 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %208 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %192, %175
  br label %257

210:                                              ; preds = %150, %143, %137
  %211 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %212 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %211, i32 0, i32 1
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @WINED3DSPR_COLOROUT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %253

220:                                              ; preds = %210
  %221 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %222 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %221, i32 0, i32 1
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %253, label %232

232:                                              ; preds = %220
  %233 = load i64, i64* %5, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %253

235:                                              ; preds = %232
  %236 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %237 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.wined3d_shader*, %struct.wined3d_shader** %3, align 8
  %242 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %249 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %248, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %258

250:                                              ; preds = %240, %235
  %251 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %252 = call i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction* %251)
  br label %256

253:                                              ; preds = %232, %220, %210
  %254 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %255 = call i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction* %254)
  br label %256

256:                                              ; preds = %253, %250
  br label %257

257:                                              ; preds = %256, %209
  br label %258

258:                                              ; preds = %78, %247, %257, %125
  ret void
}

declare dso_local i64 @shader_is_pshader_version(i32) #1

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i32 @shader_hw_map2gl(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, i8*) #1

declare dso_local i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_arb_select_component(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
