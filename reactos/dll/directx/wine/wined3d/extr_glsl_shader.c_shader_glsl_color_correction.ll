; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_color_correction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_color_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.color_fixup_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32)* @shader_glsl_color_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_color_correction(%struct.wined3d_shader_instruction* %0, i32 %1) #0 {
  %3 = alloca %struct.color_fixup_desc, align 4
  %4 = alloca %struct.wined3d_shader_instruction*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %4, align 8
  %8 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %21 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %22 = call i32 @shader_glsl_get_register_name(%struct.TYPE_6__* %12, i32 %19, i8* %20, i32* %6, %struct.wined3d_shader_instruction* %21)
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @shader_glsl_color_correction_ext(i32 %27, i8* %28, i32 %34, i32 %36)
  ret void
}

declare dso_local i32 @shader_glsl_get_register_name(%struct.TYPE_6__*, i32, i8*, i32*, %struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_color_correction_ext(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
