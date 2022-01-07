; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_bem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_bem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_5__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s + bumpenv_mat%u * %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_bem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_bem(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %6 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %22 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %16, i32* %20, i32 %23, %struct.glsl_src_param* %4)
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %31 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %25, i32* %29, i32 %32, %struct.glsl_src_param* %5)
  %34 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %40 = call i32 @shader_glsl_append_dst(i32 %38, %struct.wined3d_shader_instruction* %39)
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @shader_addline(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %50)
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_append_dst(i32, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
