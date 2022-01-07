; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_none_priv*, i8*, i8*, %struct.TYPE_2__* }
%struct.shader_none_priv = type { i32, %struct.fragment_pipeline*, %struct.wined3d_vertex_pipe_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_vertex_pipe_ops = type { i32 (%struct.wined3d_device.0*)*, i8* (i32*, %struct.shader_none_priv.1*)* }
%struct.wined3d_device.0 = type opaque
%struct.shader_none_priv.1 = type opaque
%struct.fragment_pipeline = type { i32 (i32*, %struct.fragment_caps*)*, i8* (i32*, %struct.shader_none_priv*)* }
%struct.fragment_caps = type opaque
%struct.fragment_caps.2 = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@none_shader_backend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize vertex pipe.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to initialize fragment pipe.\0A\00", align 1
@WINED3D_FRAGMENT_CAP_PROJ_CONTROL = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, %struct.wined3d_vertex_pipe_ops*, %struct.fragment_pipeline*)* @shader_none_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_none_alloc(%struct.wined3d_device* %0, %struct.wined3d_vertex_pipe_ops* %1, %struct.fragment_pipeline* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_device*, align 8
  %6 = alloca %struct.wined3d_vertex_pipe_ops*, align 8
  %7 = alloca %struct.fragment_pipeline*, align 8
  %8 = alloca %struct.fragment_caps.2, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.shader_none_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %5, align 8
  store %struct.wined3d_vertex_pipe_ops* %1, %struct.wined3d_vertex_pipe_ops** %6, align 8
  store %struct.fragment_pipeline* %2, %struct.fragment_pipeline** %7, align 8
  %12 = call %struct.shader_none_priv* @heap_alloc(i32 24)
  store %struct.shader_none_priv* %12, %struct.shader_none_priv** %11, align 8
  %13 = icmp ne %struct.shader_none_priv* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %17, i32 0, i32 1
  %19 = load i8* (i32*, %struct.shader_none_priv.1*)*, i8* (i32*, %struct.shader_none_priv.1*)** %18, align 8
  %20 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %21 = bitcast %struct.shader_none_priv* %20 to %struct.shader_none_priv.1*
  %22 = call i8* %19(i32* @none_shader_backend, %struct.shader_none_priv.1* %21)
  store i8* %22, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %27 = call i32 @heap_free(%struct.shader_none_priv* %26)
  %28 = load i32, i32* @E_FAIL, align 4
  store i32 %28, i32* %4, align 4
  br label %79

29:                                               ; preds = %16
  %30 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %31 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %30, i32 0, i32 1
  %32 = load i8* (i32*, %struct.shader_none_priv*)*, i8* (i32*, %struct.shader_none_priv*)** %31, align 8
  %33 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %34 = call i8* %32(i32* @none_shader_backend, %struct.shader_none_priv* %33)
  store i8* %34, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %29
  %37 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %39 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.wined3d_device.0*)*, i32 (%struct.wined3d_device.0*)** %39, align 8
  %41 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %42 = bitcast %struct.wined3d_device* %41 to %struct.wined3d_device.0*
  %43 = call i32 %40(%struct.wined3d_device.0* %42)
  %44 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %45 = call i32 @heap_free(%struct.shader_none_priv* %44)
  %46 = load i32, i32* @E_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %79

47:                                               ; preds = %29
  %48 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %49 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %50 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %49, i32 0, i32 2
  store %struct.wined3d_vertex_pipe_ops* %48, %struct.wined3d_vertex_pipe_ops** %50, align 8
  %51 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %52 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %53 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %52, i32 0, i32 1
  store %struct.fragment_pipeline* %51, %struct.fragment_pipeline** %53, align 8
  %54 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %55 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %54, i32 0, i32 0
  %56 = load i32 (i32*, %struct.fragment_caps*)*, i32 (i32*, %struct.fragment_caps*)** %55, align 8
  %57 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %58 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = bitcast %struct.fragment_caps.2* %8 to %struct.fragment_caps*
  %62 = call i32 %56(i32* %60, %struct.fragment_caps* %61)
  %63 = getelementptr inbounds %struct.fragment_caps.2, %struct.fragment_caps.2* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WINED3D_FRAGMENT_CAP_PROJ_CONTROL, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %68 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %71 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %74 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.shader_none_priv*, %struct.shader_none_priv** %11, align 8
  %76 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %77 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %76, i32 0, i32 0
  store %struct.shader_none_priv* %75, %struct.shader_none_priv** %77, align 8
  %78 = load i32, i32* @WINED3D_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %47, %36, %24, %14
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.shader_none_priv* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @heap_free(%struct.shader_none_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
