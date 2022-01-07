; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texreg2ar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texreg2ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_9__*, i32*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.shader_arb_ctx_priv = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"MOV TA.y, %s.x;\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MOV TA.x, %s.w;\0A\00", align 1
@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_PSARGS_TEXTRANSFORM_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@WINED3D_PSARGS_PROJECTED = common dso_local global i64 0, align 8
@TEX_PROJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texreg2ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texreg2ar(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca %struct.shader_arb_ctx_priv*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %12, align 8
  store %struct.wined3d_string_buffer* %13, %struct.wined3d_string_buffer** %3, align 8
  store i64 0, i64* %4, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 0
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %30 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %24, %struct.TYPE_12__* %28, i8* %29)
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %37 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %31, i32* %35, i32 0, i8* %36)
  %38 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %40 = call i32 @shader_addline(%struct.wined3d_string_buffer* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %43 = call i32 @shader_addline(%struct.wined3d_string_buffer* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @MAX_TEXTURES, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %1
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %51, align 8
  store %struct.shader_arb_ctx_priv* %52, %struct.shader_arb_ctx_priv** %8, align 8
  %53 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %8, align 8
  %54 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @WINED3D_PSARGS_TEXTRANSFORM_SHIFT, align 8
  %61 = mul nsw i64 %59, %60
  %62 = ashr i64 %58, %61
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %47, %1
  %64 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @WINED3D_PSARGS_PROJECTED, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @TEX_PROJ, align 4
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = call i32 @shader_hw_sample(%struct.wined3d_shader_instruction* %64, i64 %65, i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32* null, i32* null)
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*) #1

declare dso_local i32 @shader_hw_sample(%struct.wined3d_shader_instruction*, i64, i8*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
