; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_generate_pshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_generate_pshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_11__, %struct.arb_pshader_private*, %struct.wined3d_shader_reg_maps }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.arb_pshader_private = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_9__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.wined3d_gl_info = type { i32, %struct.TYPE_14__, i64* }
%struct.TYPE_14__ = type { i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.arb_ps_compile_args = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32, i8* }
%struct.arb_ps_compiled_shader = type { i8, i32*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.arb_ps_np2fixup_info }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.arb_ps_np2fixup_info = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8, i32* }
%struct.shader_arb_ctx_priv = type { i64, %struct.arb_ps_compile_args*, %struct.arb_ps_np2fixup_info*, i8*, i32, %struct.arb_ps_compiled_shader* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"R%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"!!ARBfp1.0\0A\00", align 1
@NV_FRAGMENT_PROGRAM2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"OPTION NV_fragment_program2;\0A\00", align 1
@NV3 = common dso_local global i64 0, align 8
@NV_FRAGMENT_PROGRAM_OPTION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"OPTION NV_fragment_program;\0A\00", align 1
@NV2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [90 x i8] c"The shader requires instructions that are not available in plain GL_ARB_fragment_program\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Try GLSL\0A\00", align 1
@ARB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"OPTION ARB_draw_buffers;\0A\00", align 1
@WINED3D_QUIRK_BROKEN_ARB_FOG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"OPTION ARB_fog_linear;\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"OPTION ARB_fog_exp;\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"OPTION ARB_fog_exp2;\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"TEMP TA;\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"TEMP TB;\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"TEMP TC;\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"TEMP TD;\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"PARAM coefdiv = { 0.5, 0.25, 0.125, 0.0625 };\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"PARAM coefmul = { 2, 4, 8, 16 };\0A\00", align 1
@eps = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [48 x i8] c"PARAM ps_helper_const = { 0.0, 1.0, %s, 0.0 };\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"R0\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"TEMP TMP_COLOR;\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"TMP_COLOR\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"result.color\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"PARAM srgb_consts0 = \00", align 1
@wined3d_srgb_const0 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"PARAM srgb_consts1 = \00", align 1
@wined3d_srgb_const1 = common dso_local global i32 0, align 4
@WINED3D_CONST_NUM_UNUSED = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [41 x i8] c"PARAM bumpenvmat%d = program.local[%d];\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"PARAM luminance%d = program.local[%d];\0A\00", align 1
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c"PARAM I%u = {%u, %u, %u, -1};\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"PARAM I%u = program.local[%u];\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"PARAM ycorrection = program.local[%u];\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"TEMP vpos;\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"MAD vpos, fragment.position, ycorrection.zyww, ycorrection.wxww;\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"FLR vpos.xy, vpos;\0A\00", align 1
@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [113 x i8] c"No free constant found to load NP2 fixup data into shader. Sampling from this texture will probably look wrong.\0A\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"PARAM np2fixup[%u] = { program.env[%u..%u] };\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"KIL fragment.texcoord[%u];\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"MOV result.color, %s;\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Creating a hw pixel shader, prg=%d\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [33 x i8] c"Created hw pixel shader, prg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.arb_ps_compile_args*, %struct.arb_ps_compiled_shader*)* @shader_arb_generate_pshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_arb_generate_pshader(%struct.wined3d_shader* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_string_buffer* %2, %struct.arb_ps_compile_args* %3, %struct.arb_ps_compiled_shader* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.arb_ps_compile_args*, align 8
  %11 = alloca %struct.arb_ps_compiled_shader*, align 8
  %12 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.shader_arb_ctx_priv, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.arb_pshader_private*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [4 x [4 x i8]], align 16
  %23 = alloca [17 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32*, align 8
  %28 = alloca i8, align 1
  %29 = alloca %struct.arb_ps_np2fixup_info*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %7, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %8, align 8
  store %struct.wined3d_string_buffer* %2, %struct.wined3d_string_buffer** %9, align 8
  store %struct.arb_ps_compile_args* %3, %struct.arb_ps_compile_args** %10, align 8
  store %struct.arb_ps_compiled_shader* %4, %struct.arb_ps_compiled_shader** %11, align 8
  %32 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %32, i32 0, i32 2
  store %struct.wined3d_shader_reg_maps* %33, %struct.wined3d_shader_reg_maps** %12, align 8
  store i32 0, i32* %15, align 4
  %34 = load i8*, i8** @FALSE, align 8
  store i8* %34, i8** %17, align 8
  %35 = load i8*, i8** @FALSE, align 8
  store i8* %35, i8** %18, align 8
  %36 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %36, i32 0, i32 1
  %38 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %37, align 8
  store %struct.arb_pshader_private* %38, %struct.arb_pshader_private** %19, align 8
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** %21, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  %40 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %88, %5
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %43
  %47 = load i32, i32* %20, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %24, align 4
  %59 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %24, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71, %57, %46
  br label %88

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %25, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 %77
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %78, i64 0, i64 0
  %80 = load i32, i32* %24, align 4
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %25, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %25, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %93

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %20, align 4
  %90 = ashr i32 %89, 1
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %24, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %24, align 4
  br label %43

93:                                               ; preds = %86, %43
  %94 = load i32, i32* %25, align 4
  switch i32 %94, label %131 [
    i32 0, label %95
    i32 1, label %109
    i32 2, label %119
    i32 3, label %126
    i32 4, label %130
  ]

95:                                               ; preds = %93
  %96 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %96, i64 0, i64 0
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %99 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 1
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %99, i64 0, i64 0
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %102 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 2
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %102, i64 0, i64 0
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %105 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 3
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %105, i64 0, i64 0
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i8*, i8** @TRUE, align 8
  store i8* %108, i8** %17, align 8
  br label %131

109:                                              ; preds = %93
  %110 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 1
  %111 = getelementptr inbounds [4 x i8], [4 x i8]* %110, i64 0, i64 0
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %113 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 2
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %113, i64 0, i64 0
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %116 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 3
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %116, i64 0, i64 0
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %131

119:                                              ; preds = %93
  %120 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 2
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %120, i64 0, i64 0
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %123 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 3
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i64 0, i64 0
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %131

126:                                              ; preds = %93
  %127 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 3
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %127, i64 0, i64 0
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %131

130:                                              ; preds = %93
  br label %131

131:                                              ; preds = %93, %130, %126, %119, %109, %95
  %132 = call i32 @memset(%struct.shader_arb_ctx_priv* %16, i32 0, i32 48)
  %133 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %134 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 1
  store %struct.arb_ps_compile_args* %133, %struct.arb_ps_compile_args** %134, align 8
  %135 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %136 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 5
  store %struct.arb_ps_compiled_shader* %135, %struct.arb_ps_compiled_shader** %136, align 8
  %137 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %138 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 2
  store %struct.arb_ps_np2fixup_info* %138, %struct.arb_ps_np2fixup_info** %139, align 8
  %140 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %141 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %142 = call i32 @init_ps_input(%struct.wined3d_shader* %140, %struct.arb_ps_compile_args* %141, %struct.shader_arb_ctx_priv* %16)
  %143 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 4
  %144 = call i32 @list_init(i32* %143)
  %145 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %146 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 3
  store i8* %148, i8** %149, align 8
  %150 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %151 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %150, i32 0, i32 14
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %189, label %154

154:                                              ; preds = %131
  %155 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %156 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %189, label %159

159:                                              ; preds = %154
  %160 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %161 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %159
  %165 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %166 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %165, i32 0, i32 13
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %164
  %170 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %171 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %170, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %189, label %174

174:                                              ; preds = %169
  %175 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %176 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %175, i32 0, i32 11
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %174
  %180 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %181 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %186 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184, %179, %174, %169, %164, %159, %154, %131
  %190 = load i8*, i8** @TRUE, align 8
  store i8* %190, i8** %18, align 8
  br label %191

191:                                              ; preds = %189, %184
  %192 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %193 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %194 = load i8*, i8** %18, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %198 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %197, i32 0, i32 2
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @NV_FRAGMENT_PROGRAM2, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %206 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i64, i64* @NV3, align 8
  %208 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 0
  store i64 %207, i64* %208, align 8
  br label %235

209:                                              ; preds = %196, %191
  %210 = load i8*, i8** %18, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %214 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = load i64, i64* @NV_FRAGMENT_PROGRAM_OPTION, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %222 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %221, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %223 = load i64, i64* @NV2, align 8
  %224 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 0
  store i64 %223, i64* %224, align 8
  br label %234

225:                                              ; preds = %212, %209
  %226 = load i8*, i8** %18, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = call i32 @ERR(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0))
  %230 = call i32 @ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i64, i64* @ARB, align 8
  %233 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 0
  store i64 %232, i64* %233, align 8
  br label %234

234:                                              ; preds = %231, %220
  br label %235

235:                                              ; preds = %234, %204
  %236 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %237 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %242 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %245 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %244, i32 0, i32 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %247, 3
  br i1 %248, label %249, label %276

249:                                              ; preds = %243
  %250 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %251 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  switch i32 %253, label %275 [
    i32 128, label %254
    i32 129, label %255
    i32 131, label %269
    i32 130, label %272
  ]

254:                                              ; preds = %249
  br label %275

255:                                              ; preds = %249
  %256 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %257 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @WINED3D_QUIRK_BROKEN_ARB_FOG, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i8*, i8** @TRUE, align 8
  store i8* %263, i8** %21, align 8
  %264 = load i8*, i8** @TRUE, align 8
  %265 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 3
  store i8* %264, i8** %265, align 8
  br label %275

266:                                              ; preds = %255
  %267 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %268 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %267, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %275

269:                                              ; preds = %249
  %270 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %271 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %270, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %275

272:                                              ; preds = %249
  %273 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %274 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %273, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %275

275:                                              ; preds = %249, %272, %269, %266, %262, %254
  br label %276

276:                                              ; preds = %275, %243
  %277 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %278 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %279 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %280 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %281 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %282 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %283 = load i8*, i8** %17, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %287 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %286, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %276
  %289 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %290 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %289, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  %291 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %292 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %291, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %293 = load i32, i32* @eps, align 4
  %294 = getelementptr inbounds [17 x i8], [17 x i8]* %23, i64 0, i64 0
  %295 = call i32 @wined3d_ftoa(i32 %293, i8* %294)
  %296 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %297 = getelementptr inbounds [17 x i8], [17 x i8]* %23, i64 0, i64 0
  %298 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %296, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0), i8* %297)
  %299 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %300 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp slt i32 %302, 2
  br i1 %303, label %304, label %307

304:                                              ; preds = %288
  %305 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %306 = call i32 @strcpy(i8* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %336

307:                                              ; preds = %288
  %308 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 3
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %332

311:                                              ; preds = %307
  %312 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %313 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %311
  %319 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %320 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %321 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 (i8*, i8*, ...) @sprintf(i8* %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %324)
  br label %331

326:                                              ; preds = %311
  %327 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %328 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %327, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %329 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %330 = call i32 @strcpy(i8* %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %331

331:                                              ; preds = %326, %318
  br label %335

332:                                              ; preds = %307
  %333 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %334 = call i32 @strcpy(i8* %333, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %335

335:                                              ; preds = %332, %331
  br label %336

336:                                              ; preds = %335, %304
  %337 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %338 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %357

342:                                              ; preds = %336
  %343 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %344 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %343, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %345 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %346 = load i32, i32* @wined3d_srgb_const0, align 4
  %347 = call i32 @shader_arb_append_imm_vec4(%struct.wined3d_string_buffer* %345, i32 %346)
  %348 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %349 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %350 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %351 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %350, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %352 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %353 = load i32, i32* @wined3d_srgb_const1, align 4
  %354 = call i32 @shader_arb_append_imm_vec4(%struct.wined3d_string_buffer* %352, i32 %353)
  %355 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %356 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %355, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %357

357:                                              ; preds = %342, %336
  %358 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %359 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %360 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %361 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %362 = call i32 @shader_generate_arb_declarations(%struct.wined3d_shader* %358, %struct.wined3d_shader_reg_maps* %359, %struct.wined3d_string_buffer* %360, %struct.wined3d_gl_info* %361, i32* null, %struct.shader_arb_ctx_priv* %16)
  store i32 0, i32* %24, align 4
  %363 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %364 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %20, align 4
  br label %366

366:                                              ; preds = %469, %357
  %367 = load i32, i32* %20, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %474

369:                                              ; preds = %366
  %370 = load i32, i32* %20, align 4
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  br label %469

374:                                              ; preds = %369
  %375 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %376 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %375, i32 0, i32 0
  %377 = load i8, i8* %376, align 8
  store i8 %377, i8* %26, align 1
  %378 = load i8*, i8** @WINED3D_CONST_NUM_UNUSED, align 8
  %379 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %380 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %379, i32 0, i32 5
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %380, align 8
  %382 = load i8, i8* %26, align 1
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 1
  store i8* %378, i8** %385, align 8
  %386 = load i32, i32* %24, align 4
  %387 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %388 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %387, i32 0, i32 5
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = load i8, i8* %26, align 1
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  store i32 %386, i32* %393, align 8
  %394 = load i8*, i8** @WINED3D_CONST_NUM_UNUSED, align 8
  %395 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %396 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %395, i32 0, i32 4
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = load i8, i8* %26, align 1
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 1
  store i8* %394, i8** %401, align 8
  %402 = load i32, i32* %24, align 4
  %403 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %404 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %403, i32 0, i32 4
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %404, align 8
  %406 = load i8, i8* %26, align 1
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 0
  store i32 %402, i32* %409, align 8
  %410 = load i32, i32* %15, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %15, align 4
  %412 = sext i32 %410 to i64
  %413 = inttoptr i64 %412 to i8*
  %414 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %415 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %414, i32 0, i32 5
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %415, align 8
  %417 = load i8, i8* %26, align 1
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 1
  store i8* %413, i8** %420, align 8
  %421 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %422 = load i32, i32* %24, align 4
  %423 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %424 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %423, i32 0, i32 5
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %424, align 8
  %426 = load i8, i8* %26, align 1
  %427 = zext i8 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %421, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 %422, i8* %430)
  %432 = load i8, i8* %26, align 1
  %433 = zext i8 %432 to i32
  %434 = add nsw i32 %433, 1
  %435 = trunc i32 %434 to i8
  %436 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %437 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %436, i32 0, i32 0
  store i8 %435, i8* %437, align 8
  %438 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %439 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %24, align 4
  %442 = shl i32 1, %441
  %443 = and i32 %440, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %374
  br label %469

446:                                              ; preds = %374
  %447 = load i32, i32* %15, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %15, align 4
  %449 = sext i32 %447 to i64
  %450 = inttoptr i64 %449 to i8*
  %451 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %452 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %451, i32 0, i32 4
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %452, align 8
  %454 = load i8, i8* %26, align 1
  %455 = zext i8 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 1
  store i8* %450, i8** %457, align 8
  %458 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %459 = load i32, i32* %24, align 4
  %460 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %461 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %460, i32 0, i32 4
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %461, align 8
  %463 = load i8, i8* %26, align 1
  %464 = zext i8 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %458, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 %459, i8* %467)
  br label %469

469:                                              ; preds = %446, %445, %373
  %470 = load i32, i32* %20, align 4
  %471 = ashr i32 %470, 1
  store i32 %471, i32* %20, align 4
  %472 = load i32, i32* %24, align 4
  %473 = add i32 %472, 1
  store i32 %473, i32* %24, align 4
  br label %366

474:                                              ; preds = %366
  store i32 0, i32* %24, align 4
  br label %475

475:                                              ; preds = %538, %474
  %476 = load i32, i32* %24, align 4
  %477 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %478 = icmp ult i32 %476, %477
  br i1 %478, label %479, label %541

479:                                              ; preds = %475
  %480 = load i8*, i8** @WINED3D_CONST_NUM_UNUSED, align 8
  %481 = ptrtoint i8* %480 to i32
  %482 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %483 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %24, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %481, i32* %487, align 4
  %488 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %489 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* %24, align 4
  %492 = shl i32 1, %491
  %493 = and i32 %490, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %537

495:                                              ; preds = %479
  %496 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @NV2, align 8
  %499 = icmp sge i64 %497, %498
  br i1 %499, label %500, label %537

500:                                              ; preds = %495
  %501 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %502 = load i32, i32* %24, align 4
  %503 = call i32* @find_loop_control_values(%struct.wined3d_shader* %501, i32 %502)
  store i32* %503, i32** %27, align 8
  %504 = load i32*, i32** %27, align 8
  %505 = icmp ne i32* %504, null
  br i1 %505, label %506, label %519

506:                                              ; preds = %500
  %507 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %508 = load i32, i32* %24, align 4
  %509 = load i32*, i32** %27, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 0
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %27, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 1
  %514 = load i32, i32* %513, align 4
  %515 = load i32*, i32** %27, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 2
  %517 = load i32, i32* %516, align 4
  %518 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %507, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %508, i32 %511, i32 %514, i32 %517)
  br label %536

519:                                              ; preds = %500
  %520 = load i32, i32* %15, align 4
  %521 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %522 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %521, i32 0, i32 1
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %24, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %520, i32* %526, align 4
  %527 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %528 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %528, align 4
  %531 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %532 = load i32, i32* %24, align 4
  %533 = load i32, i32* %15, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %15, align 4
  %535 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %531, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i32 %532, i32 %533)
  br label %536

536:                                              ; preds = %519, %506
  br label %537

537:                                              ; preds = %536, %495, %479
  br label %538

538:                                              ; preds = %537
  %539 = load i32, i32* %24, align 4
  %540 = add i32 %539, 1
  store i32 %540, i32* %24, align 4
  br label %475

541:                                              ; preds = %475
  %542 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %543 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %542, i32 0, i32 6
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %551, label %546

546:                                              ; preds = %541
  %547 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %548 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %547, i32 0, i32 7
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %571

551:                                              ; preds = %546, %541
  %552 = load i32, i32* %15, align 4
  %553 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %554 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %553, i32 0, i32 2
  store i32 %552, i32* %554, align 8
  %555 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %556 = load i32, i32* %15, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %15, align 4
  %558 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %555, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i32 %556)
  %559 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %560 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %559, i32 0, i32 6
  %561 = load i64, i64* %560, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %570

563:                                              ; preds = %551
  %564 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %565 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %564, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %566 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %567 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %566, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i64 0, i64 0))
  %568 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %569 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %568, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0))
  br label %570

570:                                              ; preds = %563, %551
  br label %576

571:                                              ; preds = %546
  %572 = load i8*, i8** @WINED3D_CONST_NUM_UNUSED, align 8
  %573 = ptrtoint i8* %572 to i32
  %574 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %575 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %574, i32 0, i32 2
  store i32 %573, i32* %575, align 8
  br label %576

576:                                              ; preds = %571, %570
  %577 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 1
  %578 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %577, align 8
  %579 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %683

583:                                              ; preds = %576
  store i8 0, i8* %28, align 1
  %584 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 2
  %585 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %584, align 8
  store %struct.arb_ps_np2fixup_info* %585, %struct.arb_ps_np2fixup_info** %29, align 8
  %586 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 1
  %587 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %586, align 8
  %588 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  store i32 %590, i32* %30, align 4
  %591 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %592 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %31, align 8
  %595 = load i32, i32* %15, align 4
  %596 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %597 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %596, i32 0, i32 0
  store i32 %595, i32* %597, align 8
  %598 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %599 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %599, i32 0, i32 0
  store i32 0, i32* %600, align 8
  store i32 0, i32* %24, align 4
  br label %601

601:                                              ; preds = %644, %583
  %602 = load i32, i32* %24, align 4
  %603 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %604 = icmp ult i32 %602, %603
  br i1 %604, label %605, label %647

605:                                              ; preds = %601
  %606 = load i32, i32* %30, align 4
  %607 = load i32, i32* %24, align 4
  %608 = shl i32 1, %607
  %609 = and i32 %606, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %612, label %611

611:                                              ; preds = %605
  br label %644

612:                                              ; preds = %605
  %613 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %614 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = load i8, i8* %28, align 1
  %617 = zext i8 %616 to i32
  %618 = ashr i32 %617, 1
  %619 = add nsw i32 %615, %618
  %620 = sext i32 %619 to i64
  %621 = load i64, i64* %31, align 8
  %622 = icmp slt i64 %620, %621
  br i1 %622, label %623, label %641

623:                                              ; preds = %612
  %624 = load i32, i32* %24, align 4
  %625 = shl i32 1, %624
  %626 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %627 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = or i32 %629, %625
  store i32 %630, i32* %628, align 8
  %631 = load i8, i8* %28, align 1
  %632 = add i8 %631, 1
  store i8 %632, i8* %28, align 1
  %633 = zext i8 %631 to i32
  %634 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %635 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %635, i32 0, i32 2
  %637 = load i32*, i32** %636, align 8
  %638 = load i32, i32* %24, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds i32, i32* %637, i64 %639
  store i32 %633, i32* %640, align 4
  br label %643

641:                                              ; preds = %612
  %642 = call i32 @FIXME(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.36, i64 0, i64 0))
  br label %647

643:                                              ; preds = %623
  br label %644

644:                                              ; preds = %643, %611
  %645 = load i32, i32* %24, align 4
  %646 = add i32 %645, 1
  store i32 %646, i32* %24, align 4
  br label %601

647:                                              ; preds = %641, %601
  %648 = load i8, i8* %28, align 1
  %649 = zext i8 %648 to i32
  %650 = add nsw i32 %649, 1
  %651 = ashr i32 %650, 1
  %652 = trunc i32 %651 to i8
  %653 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %654 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %654, i32 0, i32 1
  store i8 %652, i8* %655, align 4
  %656 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %657 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %656, i32 0, i32 1
  %658 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %657, i32 0, i32 1
  %659 = load i8, i8* %658, align 4
  %660 = icmp ne i8 %659, 0
  br i1 %660, label %661, label %682

661:                                              ; preds = %647
  %662 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %663 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %664 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %664, i32 0, i32 1
  %666 = load i8, i8* %665, align 4
  %667 = zext i8 %666 to i32
  %668 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %669 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %672 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %672, i32 0, i32 1
  %674 = load i8, i8* %673, align 4
  %675 = zext i8 %674 to i32
  %676 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %29, align 8
  %677 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  %679 = add nsw i32 %675, %678
  %680 = sub nsw i32 %679, 1
  %681 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %662, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0), i32 %667, i32 %670, i32 %680)
  br label %682

682:                                              ; preds = %661, %647
  br label %683

683:                                              ; preds = %682, %576
  %684 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %19, align 8
  %685 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 4
  %687 = icmp ne i32 %686, -1
  br i1 %687, label %688, label %699

688:                                              ; preds = %683
  %689 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %690 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %689, i32 0, i32 1
  %691 = load i64, i64* %690, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %688
  %694 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %695 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %19, align 8
  %696 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 4
  %698 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %694, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i32 %697)
  br label %699

699:                                              ; preds = %693, %688, %683
  %700 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %701 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %702 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %703 = call i32 @shader_generate_code(%struct.wined3d_shader* %700, %struct.wined3d_string_buffer* %701, %struct.wined3d_shader_reg_maps* %702, %struct.shader_arb_ctx_priv* %16, i32* null, i32* null)
  %704 = call i64 @FAILED(i32 %703)
  %705 = icmp ne i64 %704, 0
  br i1 %705, label %706, label %707

706:                                              ; preds = %699
  store i32 0, i32* %6, align 4
  br label %768

707:                                              ; preds = %699
  %708 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %10, align 8
  %709 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %708, i32 0, i32 0
  %710 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %709, i32 0, i32 2
  %711 = load i8*, i8** %710, align 8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %730

713:                                              ; preds = %707
  %714 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %715 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %716 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 0
  %717 = getelementptr inbounds [4 x i8], [4 x i8]* %716, i64 0, i64 0
  %718 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 1
  %719 = getelementptr inbounds [4 x i8], [4 x i8]* %718, i64 0, i64 0
  %720 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 2
  %721 = getelementptr inbounds [4 x i8], [4 x i8]* %720, i64 0, i64 0
  %722 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %22, i64 0, i64 3
  %723 = getelementptr inbounds [4 x i8], [4 x i8]* %722, i64 0, i64 0
  %724 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %16, i32 0, i32 0
  %725 = load i64, i64* %724, align 8
  %726 = load i64, i64* @NV2, align 8
  %727 = icmp sge i64 %725, %726
  %728 = zext i1 %727 to i32
  %729 = call i32 @arbfp_add_sRGB_correction(%struct.wined3d_string_buffer* %714, i8* %715, i8* %717, i8* %719, i8* %721, i8* %723, i32 %728)
  br label %730

730:                                              ; preds = %713, %707
  %731 = load i8*, i8** %21, align 8
  %732 = icmp ne i8* %731, null
  br i1 %732, label %733, label %737

733:                                              ; preds = %730
  %734 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %735 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %736 = call i32 @arbfp_add_linear_fog(%struct.wined3d_string_buffer* %734, i8* %735, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %737

737:                                              ; preds = %733, %730
  %738 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %739 = call i64 @strcmp(i8* %738, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %745

741:                                              ; preds = %737
  %742 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %743 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %744 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %742, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i8* %743)
  br label %745

745:                                              ; preds = %741, %737
  %746 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %747 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %746, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  %748 = call i32 @glGenProgramsARB(i32 1, i32* %13)
  %749 = call i32 @GL_EXTCALL(i32 %748)
  %750 = load i32, i32* %13, align 4
  %751 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i32 %750)
  %752 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %753 = load i32, i32* %13, align 4
  %754 = call i32 @glBindProgramARB(i32 %752, i32 %753)
  %755 = call i32 @GL_EXTCALL(i32 %754)
  %756 = load i32, i32* %13, align 4
  %757 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), i32 %756)
  %758 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %759 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %760 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %761 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 4
  %763 = call i32 @shader_arb_compile(%struct.wined3d_gl_info* %758, i32 %759, i32 %762)
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %766, label %765

765:                                              ; preds = %745
  store i32 0, i32* %6, align 4
  br label %768

766:                                              ; preds = %745
  %767 = load i32, i32* %13, align 4
  store i32 %767, i32* %6, align 4
  br label %768

768:                                              ; preds = %766, %765, %706
  %769 = load i32, i32* %6, align 4
  ret i32 %769
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.shader_arb_ctx_priv*, i32, i32) #1

declare dso_local i32 @init_ps_input(%struct.wined3d_shader*, %struct.arb_ps_compile_args*, %struct.shader_arb_ctx_priv*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wined3d_ftoa(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @shader_arb_append_imm_vec4(%struct.wined3d_string_buffer*, i32) #1

declare dso_local i32 @shader_generate_arb_declarations(%struct.wined3d_shader*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i32*, %struct.shader_arb_ctx_priv*) #1

declare dso_local i32* @find_loop_control_values(%struct.wined3d_shader*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @shader_generate_code(%struct.wined3d_shader*, %struct.wined3d_string_buffer*, %struct.wined3d_shader_reg_maps*, %struct.shader_arb_ctx_priv*, i32*, i32*) #1

declare dso_local i32 @arbfp_add_sRGB_correction(%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @arbfp_add_linear_fog(%struct.wined3d_string_buffer*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

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
