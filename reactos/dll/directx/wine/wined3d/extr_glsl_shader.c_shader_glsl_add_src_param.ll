; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_src_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_add_src_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32 }
%struct.wined3d_shader_src_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, %struct.glsl_src_param*)* @shader_glsl_add_src_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_src_param* %1, i32 %2, %struct.glsl_src_param* %3) #0 {
  %5 = alloca %struct.wined3d_shader_instruction*, align 8
  %6 = alloca %struct.wined3d_shader_src_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.glsl_src_param*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %5, align 8
  store %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_src_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.glsl_src_param* %3, %struct.glsl_src_param** %8, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %5, align 8
  %10 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.glsl_src_param*, %struct.glsl_src_param** %8, align 8
  %13 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction* %9, %struct.wined3d_shader_src_param* %10, i32 %11, %struct.glsl_src_param* %12, i32 %16)
  ret void
}

declare dso_local i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, %struct.glsl_src_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
