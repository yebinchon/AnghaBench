; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_pixel_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_pixel_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_vertex_pipe_pixel_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_pixel_shader(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %8 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %10 = load i64, i64* @WINED3D_SHADER_TYPE_GEOMETRY, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i64, i64* @WINED3D_SHADER_TYPE_GEOMETRY, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 1, %16
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load i64, i64* @WINED3D_SHADER_TYPE_DOMAIN, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load i64, i64* @WINED3D_SHADER_TYPE_DOMAIN, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %67

38:                                               ; preds = %22
  %39 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 4
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %60 = trunc i64 %59 to i32
  %61 = shl i32 1, %60
  %62 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %63 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %46, %38
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
