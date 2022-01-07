; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texbem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texbem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, i32*, %struct.wined3d_shader_dst_param*, %struct.TYPE_6__* }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.wined3d_string_buffer*, %struct.shader_arb_ctx_priv* }
%struct.wined3d_string_buffer = type { i32 }
%struct.shader_arb_ctx_priv = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"fragment.texcoord[%u]\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SWZ TB, bumpenvmat%d, x, z, 0, 0;\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DP3 TA.x, TB, %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SWZ TB, bumpenvmat%d, y, w, 0, 0;\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DP3 TA.y, TB, %s;\0A\00", align 1
@WINED3D_PSARGS_TEXTRANSFORM_SHIFT = common dso_local global i32 0, align 4
@WINED3D_PSARGS_PROJECTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"RCP TB.w, %s.w;\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"MUL TB.xy, %s, TB.w;\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ADD TA.xy, TA, TB;\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ADD TA.xy, TA, %s;\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@WINED3DSIH_TEXBEML = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"MAD TA, %s.z, luminance%d.x, luminance%d.y;\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"MUL %s, %s, TA;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texbem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texbem(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.shader_arb_ctx_priv*, align 8
  %4 = alloca %struct.wined3d_shader_dst_param*, align 8
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca [40 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca [50 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %13, align 8
  store %struct.shader_arb_ctx_priv* %14, %struct.shader_arb_ctx_priv** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 2
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %16, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i64 0
  store %struct.wined3d_shader_dst_param* %18, %struct.wined3d_shader_dst_param** %4, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %22, align 8
  store %struct.wined3d_string_buffer* %23, %struct.wined3d_string_buffer** %5, align 8
  %24 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 2
  %34 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %33, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %34, i64 0
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %37 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %31, %struct.wined3d_shader_dst_param* %35, i8* %36)
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %44 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %38, i32* %42, i32 0, i8* %43)
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %59 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %3, align 8
  %61 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @WINED3D_PSARGS_TEXTRANSFORM_SHIFT, align 4
  %68 = mul nsw i32 %66, %67
  %69 = ashr i32 %65, %68
  %70 = load i32, i32* @WINED3D_PSARGS_PROJECTED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %1
  %74 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %75 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %78 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %86

82:                                               ; preds = %1
  %83 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %84 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %73
  %87 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %90 = call i32 @shader_hw_sample(%struct.wined3d_shader_instruction* %87, i32 %88, i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32* null)
  %91 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WINED3DSIH_TEXBEML, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %98 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %98, i32 %99, i32 %100)
  %102 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %103 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %104 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %105 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %103, i8* %104)
  br label %106

106:                                              ; preds = %96, %86
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_hw_sample(%struct.wined3d_shader_instruction*, i32, i8*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
