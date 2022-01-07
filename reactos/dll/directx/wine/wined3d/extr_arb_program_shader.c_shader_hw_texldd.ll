; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_texldd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_texldd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TEX_DERIV = common dso_local global i32 0, align 4
@WINED3DSI_TEXLD_PROJECT = common dso_local global i32 0, align 4
@TEX_PROJ = common dso_local global i32 0, align 4
@WINED3DSI_TEXLD_BIAS = common dso_local global i32 0, align 4
@TEX_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_texldd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_texldd(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [40 x i8], align 16
  %5 = alloca [3 x [40 x i8]], align 16
  %6 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @TEX_DERIV, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %24 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %18, i32* %22, i8* %23)
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 0
  %30 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 0
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %30, i64 0, i64 0
  %32 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %25, %struct.TYPE_6__* %29, i32 0, i8* %31)
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 2
  %38 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 1
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %38, i64 0, i64 0
  %40 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %33, %struct.TYPE_6__* %37, i32 1, i8* %39)
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 3
  %46 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 2
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %46, i64 0, i64 0
  %48 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %41, %struct.TYPE_6__* %45, i32 2, i8* %47)
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @WINED3DSI_TEXLD_PROJECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32, i32* @TEX_PROJ, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %1
  %60 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WINED3DSI_TEXLD_BIAS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @TEX_BIAS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %74 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 0
  %75 = getelementptr inbounds [40 x i8], [40 x i8]* %74, i64 0, i64 0
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 1
  %78 = getelementptr inbounds [40 x i8], [40 x i8]* %77, i64 0, i64 0
  %79 = getelementptr inbounds [3 x [40 x i8]], [3 x [40 x i8]]* %5, i64 0, i64 2
  %80 = getelementptr inbounds [40 x i8], [40 x i8]* %79, i64 0, i64 0
  %81 = call i32 @shader_hw_sample(%struct.wined3d_shader_instruction* %71, i32 %72, i8* %73, i8* %75, i32 %76, i8* %78, i8* %80)
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, i32*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @shader_hw_sample(%struct.wined3d_shader_instruction*, i32, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
