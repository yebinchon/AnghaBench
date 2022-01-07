; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_vshader_add_footer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_vshader_add_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_arb_ctx_priv = type { i64, i32, i32 }
%struct.arb_vshader_private = type { i32 }
%struct.arb_vs_compile_args = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_gl_info = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@VS_FOG_Z = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"MOV result.fogcoord, TMP_OUT.z;\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ADD result.fogcoord, posFixup.x, -posFixup.x;\0A\00", align 1
@ARB_ZERO = common dso_local global i32 0, align 4
@ARB_ONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"MIN TMP_FOGCOORD.x, TMP_FOGCOORD.x, %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"MAX result.fogcoord.x, TMP_FOGCOORD.x, %s;\0A\00", align 1
@NV2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"DP4 result.clip[%u].x, TMP_OUT, state.clip[%u].plane;\0A\00", align 1
@vshader_add_footer.component = internal constant [4 x i8] c"xyzw", align 1
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"DP4 TA.%c, TMP_OUT, state.clip[%u].plane;\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MOV TA, %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MOV TA.yzw, %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"MOV TA.zw, %s;\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"MOV TA.w, %s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"MOV result.texcoord[%u], TA;\0A\00", align 1
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"MUL TA, posFixup, TMP_OUT.w;\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"ADD TMP_OUT.x, TMP_OUT.x, TA.z;\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"MAD TMP_OUT.y, TMP_OUT.y, posFixup.y, TA.w;\0A\00", align 1
@ARB_TWO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"MAD TMP_OUT.z, TMP_OUT.z, %s, -TMP_OUT.w;\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"ADD TMP_OUT.z, TMP_OUT.z, TMP_OUT.z;\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"ADD TMP_OUT.z, TMP_OUT.z, -TMP_OUT.w;\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"MOV result.position, TMP_OUT;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_arb_ctx_priv*, %struct.arb_vshader_private*, %struct.arb_vs_compile_args*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*)* @vshader_add_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vshader_add_footer(%struct.shader_arb_ctx_priv* %0, %struct.arb_vshader_private* %1, %struct.arb_vs_compile_args* %2, %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_gl_info* %4, %struct.wined3d_string_buffer* %5) #0 {
  %7 = alloca %struct.shader_arb_ctx_priv*, align 8
  %8 = alloca %struct.arb_vshader_private*, align 8
  %9 = alloca %struct.arb_vs_compile_args*, align 8
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.wined3d_string_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.shader_arb_ctx_priv* %0, %struct.shader_arb_ctx_priv** %7, align 8
  store %struct.arb_vshader_private* %1, %struct.arb_vshader_private** %8, align 8
  store %struct.arb_vs_compile_args* %2, %struct.arb_vs_compile_args** %9, align 8
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %10, align 8
  store %struct.wined3d_gl_info* %4, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_string_buffer* %5, %struct.wined3d_string_buffer** %12, align 8
  %19 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %9, align 8
  %20 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VS_FOG_Z, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %27 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %56

28:                                               ; preds = %6
  %29 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %55

36:                                               ; preds = %28
  %37 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ARB_ZERO, align 4
  %42 = call i8* @arb_get_helper_value(i32 %40, i32 %41)
  store i8* %42, i8** %14, align 8
  %43 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ARB_ONE, align 4
  %48 = call i8* @arb_get_helper_value(i32 %46, i32 %47)
  store i8* %48, i8** %15, align 8
  %49 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %36, %33
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %58 = call i64 @use_nv_clip(%struct.wined3d_gl_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %7, align 8
  %62 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NV2, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %9, align 8
  %68 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %7, align 8
  %76 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %73

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %66
  br label %159

89:                                               ; preds = %60, %56
  %90 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %9, align 8
  %91 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %158

96:                                               ; preds = %89
  store i32 0, i32* %16, align 4
  %97 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %98 = load i32, i32* @ARB_ZERO, align 4
  %99 = call i8* @arb_get_helper_value(i32 %97, i32 %98)
  store i8* %99, i8** %17, align 8
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %128, %96
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %103 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %101, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %100
  %108 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %9, align 8
  %109 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %107
  %118 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %16, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* @vshader_add_footer.component, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %117, %107
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %13, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %100

131:                                              ; preds = %100
  %132 = load i32, i32* %16, align 4
  switch i32 %132, label %149 [
    i32 0, label %133
    i32 1, label %137
    i32 2, label %141
    i32 3, label %145
  ]

133:                                              ; preds = %131
  %134 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  br label %149

137:                                              ; preds = %131
  %138 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %139)
  br label %149

141:                                              ; preds = %131
  %142 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  br label %149

145:                                              ; preds = %131
  %146 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %131, %145, %141, %137, %133
  %150 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %151 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %9, align 8
  %152 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %149, %89
  br label %159

159:                                              ; preds = %158, %88
  %160 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %161 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %192, label %167

167:                                              ; preds = %159
  %168 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %169 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %170 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %171 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %173 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %174 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %8, align 8
  %175 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %176 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %177 = call i64 @need_helper_const(%struct.arb_vshader_private* %174, %struct.wined3d_shader_reg_maps* %175, %struct.wined3d_gl_info* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %167
  %180 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %181 = load i32, i32* @ARB_TWO, align 4
  %182 = call i8* @arb_get_helper_value(i32 %180, i32 %181)
  store i8* %182, i8** %18, align 8
  %183 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %184 = load i8*, i8** %18, align 8
  %185 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %183, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %184)
  br label %191

186:                                              ; preds = %167
  %187 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %188 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %189 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %190 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %189, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %191

191:                                              ; preds = %186, %179
  br label %192

192:                                              ; preds = %191, %159
  %193 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  %194 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %195 = load i32, i32* @TRUE, align 4
  %196 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %7, align 8
  %197 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i8* @arb_get_helper_value(i32, i32) #1

declare dso_local i64 @use_nv_clip(%struct.wined3d_gl_info*) #1

declare dso_local i64 @need_helper_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
