; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_src_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_src_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_arb_ctx_priv = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_src_param = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@ARB_ONE = common dso_local global i32 0, align 4
@ARB_TWO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-%s%s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ADD T%c, %s, -coefdiv.x;\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ADD T%c, -%s, coefdiv.x;\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MAD T%c, %s, %s, -%s;\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MAD T%c, %s, -%s, %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SUB T%c, %s, %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ADD T%c, %s, %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ADD T%c, -%s, -%s;\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"RCP T%c, %s.z;\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"MUL T%c, %s, T%c;\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"RCP T%c, %s.w;\0A\00", align 1
@NV2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"|%s%s|\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"ABS T%c, %s;\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"-|%s%s|\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"-T%c%s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"T%c%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, i8*)* @shader_arb_get_src_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_src_param* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.wined3d_shader_instruction*, align 8
  %6 = alloca %struct.wined3d_shader_src_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [20 x i8], align 16
  %13 = alloca %struct.wined3d_string_buffer*, align 8
  %14 = alloca %struct.shader_arb_ctx_priv*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %5, align 8
  store %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_src_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %21, align 8
  store %struct.wined3d_string_buffer* %22, %struct.wined3d_string_buffer** %13, align 8
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %26, align 8
  store %struct.shader_arb_ctx_priv* %27, %struct.shader_arb_ctx_priv** %14, align 8
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ARB_ONE, align 4
  %37 = call i8* @arb_get_helper_value(i32 %35, i32 %36)
  store i8* %37, i8** %15, align 8
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ARB_TWO, align 4
  %47 = call i8* @arb_get_helper_value(i32 %45, i32 %46)
  store i8* %47, i8** %16, align 8
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %50 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %50, i32 0, i32 1
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %53 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %49, i32* %51, i8* %52, i64* %9)
  %54 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %57 = call i32 @shader_arb_get_swizzle(%struct.wined3d_shader_src_param* %54, i64 %55, i8* %56)
  %58 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %204 [
    i32 132, label %61
    i32 133, label %67
    i32 138, label %73
    i32 137, label %80
    i32 131, label %87
    i32 130, label %96
    i32 136, label %105
    i32 129, label %113
    i32 128, label %121
    i32 134, label %129
    i32 135, label %144
    i32 140, label %159
    i32 139, label %179
  ]

61:                                               ; preds = %4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %10, align 8
  br label %210

67:                                               ; preds = %4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70)
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %10, align 8
  br label %210

73:                                               ; preds = %4
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add i32 65, %75
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %77, i8* %78)
  br label %210

80:                                               ; preds = %4
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add i32 65, %82
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8 signext %84, i8* %85)
  br label %210

87:                                               ; preds = %4
  %88 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add i32 65, %89
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8 signext %91, i8* %92, i8* %93, i8* %94)
  br label %210

96:                                               ; preds = %4
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add i32 65, %98
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %102 = load i8*, i8** %16, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8 signext %100, i8* %101, i8* %102, i8* %103)
  br label %210

105:                                              ; preds = %4
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add i32 65, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %15, align 8
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %112 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8 signext %109, i8* %110, i8* %111)
  br label %210

113:                                              ; preds = %4
  %114 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add i32 65, %115
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8 signext %117, i8* %118, i8* %119)
  br label %210

121:                                              ; preds = %4
  %122 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add i32 65, %123
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %128 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8 signext %125, i8* %126, i8* %127)
  br label %210

129:                                              ; preds = %4
  %130 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add i32 65, %131
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %135 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8 signext %133, i8* %134)
  %136 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add i32 65, %137
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %141 = load i32, i32* %7, align 4
  %142 = add i32 65, %141
  %143 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8 signext %139, i8* %140, i32 %142)
  br label %210

144:                                              ; preds = %4
  %145 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %146 = load i32, i32* %7, align 4
  %147 = add i32 65, %146
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %150 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8 signext %148, i8* %149)
  %151 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add i32 65, %152
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %156 = load i32, i32* %7, align 4
  %157 = add i32 65, %156
  %158 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8 signext %154, i8* %155, i32 %157)
  br label %210

159:                                              ; preds = %4
  %160 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %14, align 8
  %161 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NV2, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %168 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %167, i8* %168)
  %170 = load i64, i64* @FALSE, align 8
  store i64 %170, i64* %10, align 8
  br label %178

171:                                              ; preds = %159
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add i32 65, %173
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %177 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8 signext %175, i8* %176)
  br label %178

178:                                              ; preds = %171, %165
  br label %210

179:                                              ; preds = %4
  %180 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %14, align 8
  %181 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @NV2, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %188 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %187, i8* %188)
  br label %202

190:                                              ; preds = %179
  %191 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %192 = load i32, i32* %7, align 4
  %193 = add i32 65, %192
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %196 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8 signext %194, i8* %195)
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %7, align 4
  %199 = add i32 65, %198
  %200 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %199, i8* %200)
  br label %202

202:                                              ; preds = %190, %185
  %203 = load i64, i64* @FALSE, align 8
  store i64 %203, i64* %10, align 8
  br label %210

204:                                              ; preds = %4
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %207 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %206, i8* %207)
  %209 = load i64, i64* @FALSE, align 8
  store i64 %209, i64* %10, align 8
  br label %210

210:                                              ; preds = %204, %202, %178, %144, %129, %121, %113, %105, %96, %87, %80, %73, %67, %61
  %211 = load i64, i64* %10, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i8*, i8** %8, align 8
  %215 = load i32, i32* %7, align 4
  %216 = add i32 65, %215
  %217 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %218 = call i32 (i8*, i8*, ...) @sprintf(i8* %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %216, i8* %217)
  br label %219

219:                                              ; preds = %213, %210
  ret void
}

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, i32*, i8*, i64*) #1

declare dso_local i32 @shader_arb_get_swizzle(%struct.wined3d_shader_src_param*, i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8 signext, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
