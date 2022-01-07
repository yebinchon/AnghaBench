; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_program_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_program_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_shader_reg_maps }
%struct.wined3d_shader_reg_maps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader*)* @shader_glsl_load_program_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_program_resources(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, i32 %2, %struct.wined3d_shader* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.wined3d_shader_reg_maps*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_shader* %3, %struct.wined3d_shader** %8, align 8
  %10 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %10, i32 0, i32 0
  store %struct.wined3d_shader_reg_maps* %11, %struct.wined3d_shader_reg_maps** %9, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %18 = call i32 @shader_glsl_init_uniform_block_bindings(i32 %14, %struct.shader_glsl_priv* %15, i32 %16, %struct.wined3d_shader_reg_maps* %17)
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %25 = call i32 @shader_glsl_load_icb(i32 %21, %struct.shader_glsl_priv* %22, i32 %23, %struct.wined3d_shader_reg_maps* %24)
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %27 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %30 = call i32 @shader_glsl_load_samplers(%struct.wined3d_context* %26, %struct.shader_glsl_priv* %27, i32 %28, %struct.wined3d_shader_reg_maps* %29)
  ret void
}

declare dso_local i32 @shader_glsl_init_uniform_block_bindings(i32, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*) #1

declare dso_local i32 @shader_glsl_load_icb(i32, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*) #1

declare dso_local i32 @shader_glsl_load_samplers(%struct.wined3d_context*, %struct.shader_glsl_priv*, i32, %struct.wined3d_shader_reg_maps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
