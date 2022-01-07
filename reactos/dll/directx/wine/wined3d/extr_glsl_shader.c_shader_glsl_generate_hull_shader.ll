; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_hull_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_hull_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer, %struct.wined3d_string_buffer_list }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_shader_reg_maps, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.wined3d_shader_reg_maps = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.wined3d_hull_shader }
%struct.wined3d_hull_shader = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, %struct.wined3d_shader_phase* }
%struct.wined3d_shader_phase = type { i32, i32, i32 }
%struct.shader_glsl_ctx_priv = type { %struct.wined3d_string_buffer_list* }

@.str = private unnamed_addr constant [48 x i8] c"#extension GL_ARB_tessellation_shader : enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"layout(vertices = %u) out;\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"in shader_in_out { vec4 reg[%u]; } shader_in[];\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"out shader_in_out { vec4 reg[%u]; } shader_out[];\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"void setup_hs_output(in vec4 outputs[%u])\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"shader_out[gl_InvocationID]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"void hs_control_point_phase()\0A{\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"vec4 R%u;\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"setup_hs_output(hs_out);\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"void main()\0A{\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"hs_control_point_phase();\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"barrier();\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"setup_patch_constant_output();\0A\00", align 1
@GL_TESS_CONTROL_SHADER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Compiling shader object %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*)* @shader_glsl_generate_hull_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_generate_hull_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.wined3d_string_buffer_list*, align 8
  %9 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.wined3d_hull_shader*, align 8
  %13 = alloca %struct.wined3d_shader_phase*, align 8
  %14 = alloca %struct.shader_glsl_ctx_priv, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  %17 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %17, i32 0, i32 1
  store %struct.wined3d_string_buffer_list* %18, %struct.wined3d_string_buffer_list** %8, align 8
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  store %struct.wined3d_shader_reg_maps* %20, %struct.wined3d_shader_reg_maps** %9, align 8
  %21 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %22 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %21, i32 0, i32 0
  store %struct.wined3d_string_buffer* %22, %struct.wined3d_string_buffer** %10, align 8
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %23, i32 0, i32 0
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %24, align 8
  store %struct.wined3d_gl_info* %25, %struct.wined3d_gl_info** %11, align 8
  %26 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.wined3d_hull_shader* %28, %struct.wined3d_hull_shader** %12, align 8
  %29 = call i32 @memset(%struct.shader_glsl_ctx_priv* %14, i32 0, i32 8)
  %30 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %8, align 8
  %31 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %14, i32 0, i32 0
  store %struct.wined3d_string_buffer_list* %30, %struct.wined3d_string_buffer_list** %31, align 8
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %34 = call i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer* %32, %struct.wined3d_gl_info* %33)
  %35 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %37 = call i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer* %35, %struct.wined3d_gl_info* %36)
  %38 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %39 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %42 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %43 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %44 = call i32 @shader_generate_glsl_declarations(%struct.wined3d_context* %40, %struct.wined3d_string_buffer* %41, %struct.wined3d_shader* %42, %struct.wined3d_shader_reg_maps* %43, %struct.shader_glsl_ctx_priv* %14)
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %46 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %47 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %58 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %65 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %65, i32 0, i32 3
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @shader_glsl_generate_patch_constant_setup(%struct.wined3d_string_buffer* %64, i32* %66, i32 %67)
  %69 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %70 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %71, align 8
  %73 = icmp ne %struct.wined3d_shader_phase* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %3
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %76 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %83 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %84 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %89 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %88, i32 0, i32 1
  %90 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %91 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %90, i32 0, i32 0
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv* %82, i32 %87, i32* %89, %struct.wined3d_shader_reg_maps* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %74, %3
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %98 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %99 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %100 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %101, align 8
  store %struct.wined3d_shader_phase* %102, %struct.wined3d_shader_phase** %13, align 8
  %103 = icmp ne %struct.wined3d_shader_phase* %102, null
  br i1 %103, label %104, label %135

104:                                              ; preds = %96
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %13, align 8
  %108 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %120 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %121 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %122 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %13, align 8
  %123 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %13, align 8
  %126 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @shader_generate_code(%struct.wined3d_shader* %119, %struct.wined3d_string_buffer* %120, %struct.wined3d_shader_reg_maps* %121, %struct.shader_glsl_ctx_priv* %14, i32 %124, i32 %127)
  %129 = call i64 @FAILED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %271

132:                                              ; preds = %118
  %133 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %134 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %140

135:                                              ; preds = %96
  %136 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %137 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %138 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %139 = call i32 @shader_glsl_generate_default_control_point_phase(%struct.wined3d_shader* %136, %struct.wined3d_string_buffer* %137, %struct.wined3d_shader_reg_maps* %138)
  br label %140

140:                                              ; preds = %135, %132
  %141 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %142 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %167, %140
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %146 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %144, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %143
  %151 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %152 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %153 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %154 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %155 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @shader_glsl_generate_shader_phase(%struct.wined3d_shader* %151, %struct.wined3d_string_buffer* %152, %struct.wined3d_shader_reg_maps* %153, %struct.shader_glsl_ctx_priv* %14, i32* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %161)
  %163 = call i64 @FAILED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %271

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %16, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %16, align 4
  br label %143

170:                                              ; preds = %143
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %195, %170
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %174 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %172, %176
  br i1 %177, label %178, label %198

178:                                              ; preds = %171
  %179 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %180 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %181 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %182 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %183 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @shader_glsl_generate_shader_phase(%struct.wined3d_shader* %179, %struct.wined3d_string_buffer* %180, %struct.wined3d_shader_reg_maps* %181, %struct.shader_glsl_ctx_priv* %14, i32* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %189)
  %191 = call i64 @FAILED(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %271

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %16, align 4
  br label %171

198:                                              ; preds = %171
  %199 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %200 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %201 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %202 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %203 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %204 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %198
  %208 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %209 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %198
  store i32 0, i32* %16, align 4
  br label %211

211:                                              ; preds = %229, %210
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %214 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %212, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %211
  %219 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %220 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %221 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %16, align 4
  %228 = call i32 @shader_glsl_generate_shader_phase_invocation(%struct.wined3d_string_buffer* %219, i32* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %16, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %211

232:                                              ; preds = %211
  store i32 0, i32* %16, align 4
  br label %233

233:                                              ; preds = %251, %232
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %236 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ult i32 %234, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %242 = load %struct.wined3d_hull_shader*, %struct.wined3d_hull_shader** %12, align 8
  %243 = getelementptr inbounds %struct.wined3d_hull_shader, %struct.wined3d_hull_shader* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @shader_glsl_generate_shader_phase_invocation(%struct.wined3d_string_buffer* %241, i32* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %240
  %252 = load i32, i32* %16, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %233

254:                                              ; preds = %233
  %255 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %256 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %257 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %258 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %259 = load i32, i32* @GL_TESS_CONTROL_SHADER, align 4
  %260 = call i32 @glCreateShader(i32 %259)
  %261 = call i32 @GL_EXTCALL(i32 %260)
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %262)
  %264 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %265 = load i32, i32* %15, align 4
  %266 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %267 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @shader_glsl_compile(%struct.wined3d_gl_info* %264, i32 %265, i32 %268)
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %4, align 4
  br label %271

271:                                              ; preds = %254, %193, %165, %131
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local i32 @memset(%struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_add_version_declaration(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_enable_extensions(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_generate_glsl_declarations(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*) #1

declare dso_local i32 @shader_glsl_generate_patch_constant_setup(%struct.wined3d_string_buffer*, i32*, i32) #1

declare dso_local i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv*, i32, i32*, %struct.wined3d_shader_reg_maps*, i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32, i32) #1

declare dso_local i32 @shader_glsl_generate_default_control_point_phase(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*) #1

declare dso_local i32 @shader_glsl_generate_shader_phase(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_glsl_ctx_priv*, i32*, i8*, i32) #1

declare dso_local i32 @shader_glsl_generate_shader_phase_invocation(%struct.wined3d_string_buffer*, i32*, i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @shader_glsl_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
