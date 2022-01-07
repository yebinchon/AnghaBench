; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texdp3.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texdp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_8__*, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vec%d(dot(T%u.xyz, %s)));\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dot(T%u.xyz, %s));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texdp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texdp3(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %8 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %9 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %29 = call i32 @shader_glsl_append_dst(i32 %27, %struct.wined3d_shader_instruction* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @shader_glsl_get_write_mask_size(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %32, i32* %36, i32 %37, %struct.glsl_src_param* %5)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @shader_addline(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %50)
  br label %62

52:                                               ; preds = %1
  %53 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, i32, ...) @shader_addline(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %52, %41
  ret void
}

declare dso_local i32 @shader_glsl_append_dst(i32, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_write_mask_size(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
