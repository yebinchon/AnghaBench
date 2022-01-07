; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_invalidate_current_program.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_invalidate_current_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.glsl_context_data* }
%struct.glsl_context_data = type { i32* }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_HULL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*)* @shader_glsl_invalidate_current_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_invalidate_current_program(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  %3 = alloca %struct.glsl_context_data*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %4 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %4, i32 0, i32 1
  %6 = load %struct.glsl_context_data*, %struct.glsl_context_data** %5, align 8
  store %struct.glsl_context_data* %6, %struct.glsl_context_data** %3, align 8
  %7 = load %struct.glsl_context_data*, %struct.glsl_context_data** %3, align 8
  %8 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @WINED3D_SHADER_TYPE_GEOMETRY, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @WINED3D_SHADER_TYPE_HULL, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
