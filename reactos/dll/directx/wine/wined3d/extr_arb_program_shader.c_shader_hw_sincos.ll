; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sincos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sincos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, %struct.wined3d_shader_dst_param*, %struct.TYPE_6__* }
%struct.wined3d_shader_dst_param = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_arb_ctx_priv = type { i64 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"SCS %s, %s;\0A\00", align 1
@WINED3DSPDM_SATURATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MOV_SAT %s, %s;\0A\00", align 1
@NV2 = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COS%s %s.x, %s;\0A\00", align 1
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SIN%s %s.y, %s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"MUL %s.x, %s, %s;\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"MUL TA.y, %s.x, %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"MUL %s.y, TA.y, %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"MUL TA.z, %s.y, %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"MUL %s.z, TA.z, %s;\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"MUL TA.w, %s.z, %s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"MUL TA.x, %s, %s.w;\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"MAD TA.x, TA.y, %s.x, TA.x;\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"MAD TA.x, TA.z, %s.w, TA.x;\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"MAD TA.x, TA.w, %s.x, TA.x;\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"MAD TA.y, %s.x, %s.y, %s.z;\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"MAD TA.y, %s.y, %s.z, TA.y;\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"MAD TA.y, %s.z, %s.y, TA.y;\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MUL TA.z, TA.y, TA.y;\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"MAD %s.x, -TA.x, TA.x, TA.z;\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"MUL %s.y, TA.x, TA.y;\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"ADD %s.y, %s.y, %s.y;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_sincos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_sincos(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.shader_arb_ctx_priv*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param*, align 8
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca [50 x i8], align 16
  %9 = alloca [50 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  store %struct.wined3d_string_buffer* %15, %struct.wined3d_string_buffer** %3, align 8
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %19, align 8
  store %struct.shader_arb_ctx_priv* %20, %struct.shader_arb_ctx_priv** %4, align 8
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 1
  %23 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %22, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %23, i64 0
  store %struct.wined3d_shader_dst_param* %24, %struct.wined3d_shader_dst_param** %5, align 8
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %31 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %25, i32* %29, i32 0, i8* %30)
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @shader_is_pshader_version(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %1
  %43 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 1
  %46 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %45, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %46, i64 0
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %49 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %43, %struct.wined3d_shader_dst_param* %47, i8* %48)
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %55 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %54, i32 0, i32 1
  %56 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %55, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %56, i64 0
  %58 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WINED3DSPDM_SATURATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %42
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %65, i32 0, i32 2
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %68 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %64, i32* %66, i8* %67, i32* %10)
  %69 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %63, %42
  br label %215

74:                                               ; preds = %1
  %75 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %4, align 8
  %76 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NV2, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %82 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %83 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %82, i32 0, i32 2
  %84 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %85 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %81, i32* %83, i8* %84, i32* %10)
  %86 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %87 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %94 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %95 = call i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %94)
  %96 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %97 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %98 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %92, %80
  %100 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %101 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %108 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %109 = call i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %108)
  %110 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %111 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %112 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %106, %99
  br label %214

114:                                              ; preds = %74
  %115 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %116 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %117 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %121 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %115, i32* %119, i32 1, i8* %120)
  %122 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %123 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %124 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %128 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %122, i32* %126, i32 2, i8* %127)
  %129 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %130 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %131 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %130, i32 0, i32 2
  %132 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %133 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %129, i32* %131, i8* %132, i32* %10)
  %134 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %135 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %136 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %137 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %138 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %135, i8* %136, i8* %137)
  %139 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %140 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %141 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %142 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %140, i8* %141)
  %143 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %144 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %145 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %146 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %148 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %149 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %150 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %148, i8* %149)
  %151 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %152 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %153 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %154 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %152, i8* %153)
  %155 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %156 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %157 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %158 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %156, i8* %157)
  %159 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %160 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %161 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %162 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %160, i8* %161)
  %163 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %164 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %165 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %164)
  %166 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %167 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %168 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %170 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %171 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* %170)
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %173 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %174 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %175 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %176 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %173, i8* %174, i8* %175)
  %177 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %178 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %179 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %180 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %178, i8* %179)
  %181 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %182 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %183 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %184 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %182, i8* %183)
  %185 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %186 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %114
  %192 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %193 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %194 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %195 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %196 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %191, %114
  %198 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %199 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %206 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %207 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %206)
  %208 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %209 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %210 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %211 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %212 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %209, i8* %210, i8* %211)
  br label %213

213:                                              ; preds = %204, %197
  br label %214

214:                                              ; preds = %213, %113
  br label %215

215:                                              ; preds = %214, %73
  ret void
}

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i64 @shader_is_pshader_version(i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, i32*, i8*, i32*) #1

declare dso_local i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
