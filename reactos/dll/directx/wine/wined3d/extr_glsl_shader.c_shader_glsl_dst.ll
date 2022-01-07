; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_dst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vec4(1.0, %s * %s, %s, %s))%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_dst(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.glsl_src_param, align 4
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = call i32 @shader_glsl_append_dst(i32 %12, %struct.wined3d_shader_instruction* %13)
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %20 = call i32 @shader_glsl_get_write_mask(i32* %18, i8* %19)
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %27 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %21, i32* %25, i32 %26, %struct.glsl_src_param* %3)
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %34 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %28, i32* %32, i32 %33, %struct.glsl_src_param* %4)
  %35 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %41 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %35, i32* %39, i32 %40, %struct.glsl_src_param* %5)
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %48 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %42, i32* %46, i32 %47, %struct.glsl_src_param* %6)
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %63 = call i32 @shader_addline(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57, i32 %59, i32 %61, i8* %62)
  ret void
}

declare dso_local i32 @shader_glsl_append_dst(i32, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask(i32*, i8*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
