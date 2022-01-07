; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_select.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.TYPE_15__, %struct.wined3d_gl_info* }
%struct.TYPE_15__ = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_17__, i64* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (i32)*, i32 (i32)* }
%struct.wined3d_state = type { %struct.wined3d_shader**, %struct.TYPE_11__* }
%struct.wined3d_shader = type { i64, %struct.wined3d_shader_signature, i64 }
%struct.wined3d_shader_signature = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.shader_arb_priv = type { i64, i32*, i64, %struct.TYPE_18__*, %struct.wined3d_shader*, %struct.arb_vs_compiled_shader*, %struct.TYPE_14__*, %struct.wined3d_shader*, i32, i32, %struct.arb_ps_compiled_shader* }
%struct.TYPE_18__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.arb_vs_compiled_shader = type { i64, %struct.wined3d_shader* }
%struct.TYPE_14__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.arb_ps_compiled_shader = type { %struct.TYPE_13__, %struct.wined3d_shader* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.arb_ps_compile_args = type { i32 }
%struct.arb_vs_compile_args = type { i32 }
%struct.arb_pshader_private = type { i64 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Using pixel shader %p.\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, priv->current_fprogram_id);\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"glEnable(GL_FRAGMENT_PROGRAM_ARB);\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Bound fragment program %u and enabled GL_FRAGMENT_PROGRAM_ARB\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_NP2_FIXUP = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_PS_F = common dso_local global i32 0, align 4
@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"glDisable(GL_FRAGMENT_PROGRAM_ARB)\00", align 1
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Using vertex shader %p\0A\00", align 1
@GL_VERTEX_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"glBindProgramARB(GL_VERTEX_PROGRAM_ARB, priv->current_vprogram_id);\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"glEnable(GL_VERTEX_PROGRAM_ARB);\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Bound vertex program %u and enabled GL_VERTEX_PROGRAM_ARB\0A\00", align 1
@ARB_COLOR_BUFFER_FLOAT = common dso_local global i64 0, align 8
@GL_CLAMP_VERTEX_COLOR_ARB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"glClampColorARB\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"vertex color clamp needs to be changed, but extension not supported.\0A\00", align 1
@WINED3D_SHADER_CONST_VS_F = common dso_local global i32 0, align 4
@ARB_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"glDisable(GL_VERTEX_PROGRAM_ARB)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_arb_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_select(i8* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.shader_arb_priv*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_shader*, align 8
  %11 = alloca %struct.arb_ps_compile_args, align 4
  %12 = alloca %struct.arb_ps_compiled_shader*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_shader*, align 8
  %15 = alloca %struct.arb_vs_compile_args, align 4
  %16 = alloca %struct.arb_vs_compiled_shader*, align 8
  %17 = alloca %struct.wined3d_shader_signature*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.shader_arb_priv*
  store %struct.shader_arb_priv* %19, %struct.shader_arb_priv** %7, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 2
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %21, align 8
  store %struct.wined3d_gl_info* %22, %struct.wined3d_gl_info** %8, align 8
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %24 = call i64 @use_ps(%struct.wined3d_state* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %168

26:                                               ; preds = %3
  %27 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %27, i32 0, i32 0
  %29 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %28, align 8
  %30 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %29, i64 %30
  %32 = load %struct.wined3d_shader*, %struct.wined3d_shader** %31, align 8
  store %struct.wined3d_shader* %32, %struct.wined3d_shader** %10, align 8
  %33 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.wined3d_shader* %33)
  %35 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %38 = call i32 @find_arb_ps_compile_args(%struct.wined3d_state* %35, %struct.wined3d_context* %36, %struct.wined3d_shader* %37, %struct.arb_ps_compile_args* %11)
  %39 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %40 = call %struct.arb_ps_compiled_shader* @find_arb_pshader(%struct.wined3d_shader* %39, %struct.arb_ps_compile_args* %11)
  store %struct.arb_ps_compiled_shader* %40, %struct.arb_ps_compiled_shader** %12, align 8
  %41 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %12, align 8
  %42 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %41, i32 0, i32 1
  %43 = load %struct.wined3d_shader*, %struct.wined3d_shader** %42, align 8
  %44 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %45 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %44, i32 0, i32 7
  store %struct.wined3d_shader* %43, %struct.wined3d_shader** %45, align 8
  %46 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %12, align 8
  %47 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %48 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %47, i32 0, i32 10
  store %struct.arb_ps_compiled_shader* %46, %struct.arb_ps_compiled_shader** %48, align 8
  %49 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %50 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %51 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %50, i32 0, i32 7
  %52 = load %struct.wined3d_shader*, %struct.wined3d_shader** %51, align 8
  %53 = call i32 @glBindProgramARB(i32 %49, %struct.wined3d_shader* %52)
  %54 = call i32 @GL_EXTCALL(i32 %53)
  %55 = call i32 @checkGLcall(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %57 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %26
  %61 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %62 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %61, i32 0, i32 6
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %64, align 8
  %66 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 %65(%struct.wined3d_gl_info* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %26
  %70 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %71 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %76 = call i32 %74(i32 %75)
  %77 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %79 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %78, i32 0, i32 7
  %80 = load %struct.wined3d_shader*, %struct.wined3d_shader** %79, align 8
  %81 = call i32 @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_shader* %80)
  %82 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %83 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.arb_pshader_private*
  %89 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %84, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %69
  %93 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %94 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.arb_pshader_private*
  %97 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %100 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %102 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @max(i32 %103, i32 8)
  %105 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %106 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %117, %92
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 8
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %112 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %107

120:                                              ; preds = %107
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %123 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = load i32, i32* @FALSE, align 4
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @shader_arb_load_constants_internal(i8* %121, %struct.wined3d_context* %122, %struct.wined3d_state* %123, i32 %124, i32 %125, i32 %126)
  br label %143

128:                                              ; preds = %69
  %129 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %130 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %133, i64 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %13, align 4
  %138 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %12, align 8
  %139 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %140 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @shader_arb_ps_local_constants(%struct.arb_ps_compiled_shader* %138, %struct.wined3d_context* %139, %struct.wined3d_state* %140, i32 %141)
  br label %143

143:                                              ; preds = %128, %120
  %144 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %12, align 8
  %145 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* @WINED3D_SHADER_CONST_PS_NP2_FIXUP, align 4
  %152 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %153 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %143
  %157 = load %struct.wined3d_shader*, %struct.wined3d_shader** %10, align 8
  %158 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @WINED3D_SHADER_CONST_PS_F, align 4
  %163 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %164 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %156
  br label %201

168:                                              ; preds = %3
  %169 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %170 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %168
  %177 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %178 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %176
  %182 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %183 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32 (i32)*, i32 (i32)** %185, align 8
  %187 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %188 = call i32 %186(i32 %187)
  %189 = call i32 @checkGLcall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %191 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %190, i32 0, i32 7
  store %struct.wined3d_shader* null, %struct.wined3d_shader** %191, align 8
  br label %192

192:                                              ; preds = %181, %176, %168
  %193 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %194 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %193, i32 0, i32 6
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %196, align 8
  %198 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %199 = load i32, i32* @TRUE, align 4
  %200 = call i32 %197(%struct.wined3d_gl_info* %198, i32 %199)
  br label %201

201:                                              ; preds = %192, %167
  %202 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %203 = call i64 @use_vs(%struct.wined3d_state* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %326

205:                                              ; preds = %201
  %206 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %207 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %206, i32 0, i32 0
  %208 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %207, align 8
  %209 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %210 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %208, i64 %209
  %211 = load %struct.wined3d_shader*, %struct.wined3d_shader** %210, align 8
  store %struct.wined3d_shader* %211, %struct.wined3d_shader** %14, align 8
  %212 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %213 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), %struct.wined3d_shader* %212)
  %214 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %215 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %216 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %217 = call i32 @find_arb_vs_compile_args(%struct.wined3d_state* %214, %struct.wined3d_context* %215, %struct.wined3d_shader* %216, %struct.arb_vs_compile_args* %15)
  %218 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %15, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %222

221:                                              ; preds = %205
  store %struct.wined3d_shader_signature* null, %struct.wined3d_shader_signature** %17, align 8
  br label %230

222:                                              ; preds = %205
  %223 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %224 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %223, i32 0, i32 0
  %225 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %224, align 8
  %226 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %227 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %225, i64 %226
  %228 = load %struct.wined3d_shader*, %struct.wined3d_shader** %227, align 8
  %229 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %228, i32 0, i32 1
  store %struct.wined3d_shader_signature* %229, %struct.wined3d_shader_signature** %17, align 8
  br label %230

230:                                              ; preds = %222, %221
  %231 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %232 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %233 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %232, i32 0, i32 2
  %234 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %233, align 8
  %235 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %236 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %17, align 8
  %240 = call %struct.arb_vs_compiled_shader* @find_arb_vshader(%struct.wined3d_shader* %231, %struct.wined3d_gl_info* %234, i32 %238, %struct.arb_vs_compile_args* %15, %struct.wined3d_shader_signature* %239)
  store %struct.arb_vs_compiled_shader* %240, %struct.arb_vs_compiled_shader** %16, align 8
  %241 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %242 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %241, i32 0, i32 1
  %243 = load %struct.wined3d_shader*, %struct.wined3d_shader** %242, align 8
  %244 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %245 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %244, i32 0, i32 4
  store %struct.wined3d_shader* %243, %struct.wined3d_shader** %245, align 8
  %246 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %247 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %248 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %247, i32 0, i32 5
  store %struct.arb_vs_compiled_shader* %246, %struct.arb_vs_compiled_shader** %248, align 8
  %249 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %250 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %251 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %250, i32 0, i32 4
  %252 = load %struct.wined3d_shader*, %struct.wined3d_shader** %251, align 8
  %253 = call i32 @glBindProgramARB(i32 %249, %struct.wined3d_shader* %252)
  %254 = call i32 @GL_EXTCALL(i32 %253)
  %255 = call i32 @checkGLcall(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %256 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %257 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %256, i32 0, i32 3
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %259, align 8
  %261 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %262 = load i32, i32* @FALSE, align 4
  %263 = call i32 %260(%struct.wined3d_gl_info* %261, i32 %262)
  %264 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %265 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load i32 (i32)*, i32 (i32)** %267, align 8
  %269 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %270 = call i32 %268(i32 %269)
  %271 = call i32 @checkGLcall(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %272 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %273 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %272, i32 0, i32 4
  %274 = load %struct.wined3d_shader*, %struct.wined3d_shader** %273, align 8
  %275 = call i32 @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), %struct.wined3d_shader* %274)
  %276 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %277 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %278 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %279 = call i32 @shader_arb_vs_local_constants(%struct.arb_vs_compiled_shader* %276, %struct.wined3d_context* %277, %struct.wined3d_state* %278)
  %280 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %281 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %284 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %282, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %230
  %288 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %289 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %292 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %291, i32 0, i32 2
  store i64 %290, i64* %292, align 8
  %293 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %294 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %293, i32 0, i32 1
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* @ARB_COLOR_BUFFER_FLOAT, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %287
  %301 = load i32, i32* @GL_CLAMP_VERTEX_COLOR_ARB, align 4
  %302 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %16, align 8
  %303 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  %306 = xor i1 %305, true
  %307 = zext i1 %306 to i32
  %308 = call i32 @glClampColorARB(i32 %301, i32 %307)
  %309 = call i32 @GL_EXTCALL(i32 %308)
  %310 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %313

311:                                              ; preds = %287
  %312 = call i32 @FIXME(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  br label %313

313:                                              ; preds = %311, %300
  br label %314

314:                                              ; preds = %313, %230
  %315 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %316 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load i32, i32* @WINED3D_SHADER_CONST_VS_F, align 4
  %321 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %322 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %319, %314
  br label %354

326:                                              ; preds = %201
  %327 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %328 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = load i64, i64* @ARB_VERTEX_PROGRAM, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %326
  %335 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %336 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %335, i32 0, i32 4
  store %struct.wined3d_shader* null, %struct.wined3d_shader** %336, align 8
  %337 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %338 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i32 (i32)*, i32 (i32)** %340, align 8
  %342 = load i32, i32* @GL_VERTEX_PROGRAM_ARB, align 4
  %343 = call i32 %341(i32 %342)
  %344 = call i32 @checkGLcall(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %345

345:                                              ; preds = %334, %326
  %346 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  %347 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %346, i32 0, i32 3
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 0
  %350 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %349, align 8
  %351 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %352 = load i32, i32* @TRUE, align 4
  %353 = call i32 %350(%struct.wined3d_gl_info* %351, i32 %352)
  br label %354

354:                                              ; preds = %345, %325
  ret void
}

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*) #1

declare dso_local i32 @find_arb_ps_compile_args(%struct.wined3d_state*, %struct.wined3d_context*, %struct.wined3d_shader*, %struct.arb_ps_compile_args*) #1

declare dso_local %struct.arb_ps_compiled_shader* @find_arb_pshader(%struct.wined3d_shader*, %struct.arb_ps_compile_args*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindProgramARB(i32, %struct.wined3d_shader*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @shader_arb_load_constants_internal(i8*, %struct.wined3d_context*, %struct.wined3d_state*, i32, i32, i32) #1

declare dso_local i32 @shader_arb_ps_local_constants(%struct.arb_ps_compiled_shader*, %struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @find_arb_vs_compile_args(%struct.wined3d_state*, %struct.wined3d_context*, %struct.wined3d_shader*, %struct.arb_vs_compile_args*) #1

declare dso_local %struct.arb_vs_compiled_shader* @find_arb_vshader(%struct.wined3d_shader*, %struct.wined3d_gl_info*, i32, %struct.arb_vs_compile_args*, %struct.wined3d_shader_signature*) #1

declare dso_local i32 @shader_arb_vs_local_constants(%struct.arb_vs_compiled_shader*, %struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @glClampColorARB(i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
