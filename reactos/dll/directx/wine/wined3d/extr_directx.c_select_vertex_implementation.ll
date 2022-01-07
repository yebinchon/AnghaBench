; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_vertex_implementation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_select_vertex_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_backend_ops = type { i32 }
%struct.wined3d_vertex_pipe_ops = type { i32 }
%struct.wined3d_gl_info = type { i64* }

@glsl_shader_backend = common dso_local global %struct.wined3d_shader_backend_ops zeroinitializer, align 4
@ARB_VERTEX_SHADER = common dso_local global i64 0, align 8
@glsl_vertex_pipe = common dso_local global %struct.wined3d_vertex_pipe_ops zeroinitializer, align 4
@ffp_vertex_pipe = common dso_local global %struct.wined3d_vertex_pipe_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_vertex_pipe_ops* (%struct.wined3d_gl_info*, %struct.wined3d_shader_backend_ops*)* @select_vertex_implementation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_vertex_pipe_ops* @select_vertex_implementation(%struct.wined3d_gl_info* %0, %struct.wined3d_shader_backend_ops* %1) #0 {
  %3 = alloca %struct.wined3d_vertex_pipe_ops*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_shader_backend_ops*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store %struct.wined3d_shader_backend_ops* %1, %struct.wined3d_shader_backend_ops** %5, align 8
  %6 = load %struct.wined3d_shader_backend_ops*, %struct.wined3d_shader_backend_ops** %5, align 8
  %7 = icmp eq %struct.wined3d_shader_backend_ops* %6, @glsl_shader_backend
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @ARB_VERTEX_SHADER, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store %struct.wined3d_vertex_pipe_ops* @glsl_vertex_pipe, %struct.wined3d_vertex_pipe_ops** %3, align 8
  br label %18

17:                                               ; preds = %8, %2
  store %struct.wined3d_vertex_pipe_ops* @ffp_vertex_pipe, %struct.wined3d_vertex_pipe_ops** %3, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %3, align 8
  ret %struct.wined3d_vertex_pipe_ops* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
