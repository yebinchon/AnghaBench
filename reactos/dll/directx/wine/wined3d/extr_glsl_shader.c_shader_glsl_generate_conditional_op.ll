; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_conditional_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_conditional_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3D_SHADER_CONDITIONAL_OP_NZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"!bool\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"if (%s(%s)) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i8*)* @shader_glsl_generate_conditional_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_conditional_op(%struct.wined3d_shader_instruction* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_shader_instruction*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WINED3D_SHADER_CONDITIONAL_OP_NZ, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %20 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %14, i32* %18, i32 %19, %struct.glsl_src_param* %5)
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @shader_addline(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %28, i8* %29)
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
