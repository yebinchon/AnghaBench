; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_geometry_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_geometry_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.glsl_context_data* }
%struct.glsl_context_data = type { i64 }
%struct.wined3d_state = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_vertex_pipe_geometry_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_geometry_shader(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.glsl_context_data*, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 1
  %11 = load %struct.glsl_context_data*, %struct.glsl_context_data** %10, align 8
  store %struct.glsl_context_data* %11, %struct.glsl_context_data** %7, align 8
  %12 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = load i64, i64* @WINED3D_SHADER_TYPE_GEOMETRY, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i64 @is_rasterization_disabled(%struct.TYPE_6__* %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %20 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.glsl_context_data*, %struct.glsl_context_data** %7, align 8
  %34 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i64, i64* @WINED3D_SHADER_TYPE_DOMAIN, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i64, i64* @WINED3D_SHADER_TYPE_DOMAIN, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %79

50:                                               ; preds = %31
  %51 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %60 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 1, %72
  %74 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %75 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %70, %58, %50
  br label %79

79:                                               ; preds = %78, %42
  ret void
}

declare dso_local i64 @is_rasterization_disabled(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
