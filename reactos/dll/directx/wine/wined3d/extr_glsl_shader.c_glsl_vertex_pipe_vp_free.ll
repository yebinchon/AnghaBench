; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vp_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_2__*, %struct.shader_glsl_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.glsl_ffp_destroy_ctx = type { i32*, %struct.shader_glsl_priv* }

@shader_glsl_free_ffp_vertex_shader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @glsl_vertex_pipe_vp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_vp_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.shader_glsl_priv*, align 8
  %4 = alloca %struct.glsl_ffp_destroy_ctx, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %5 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %6 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %5, i32 0, i32 1
  %7 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  store %struct.shader_glsl_priv* %7, %struct.shader_glsl_priv** %3, align 8
  %8 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.glsl_ffp_destroy_ctx, %struct.glsl_ffp_destroy_ctx* %4, i32 0, i32 1
  store %struct.shader_glsl_priv* %8, %struct.shader_glsl_priv** %9, align 8
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.glsl_ffp_destroy_ctx, %struct.glsl_ffp_destroy_ctx* %4, i32 0, i32 0
  store i32* %13, i32** %14, align 8
  %15 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %15, i32 0, i32 0
  %17 = load i32, i32* @shader_glsl_free_ffp_vertex_shader, align 4
  %18 = call i32 @wine_rb_destroy(i32* %16, i32 %17, %struct.glsl_ffp_destroy_ctx* %4)
  ret void
}

declare dso_local i32 @wine_rb_destroy(i32*, i32, %struct.glsl_ffp_destroy_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
