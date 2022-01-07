; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_shader.c_vertexshader_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_shader.c_vertexshader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_vertexshader = type { i32, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }
%struct.wined3d_shader_desc = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@d3d9_vertexshader_vtbl = common dso_local global i32 0, align 4
@WINED3D_SHADER_BYTE_CODE_FORMAT_SM1 = common dso_local global i32 0, align 4
@d3d9_vertexshader_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to create wined3d vertex shader, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vertexshader_init(%struct.d3d9_vertexshader* %0, %struct.d3d9_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_vertexshader*, align 8
  %6 = alloca %struct.d3d9_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wined3d_shader_desc, align 8
  %9 = alloca i32, align 4
  store %struct.d3d9_vertexshader* %0, %struct.d3d9_vertexshader** %5, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %11 = getelementptr inbounds %struct.d3d9_vertexshader, %struct.d3d9_vertexshader* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %13 = getelementptr inbounds %struct.d3d9_vertexshader, %struct.d3d9_vertexshader* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32* @d3d9_vertexshader_vtbl, i32** %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 6
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 0
  store i64 -1, i64* %17, align 8
  %18 = load i32, i32* @WINED3D_SHADER_BYTE_CODE_FORMAT_SM1, align 4
  %19 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %8, i32 0, i32 1
  store i32 3, i32* %26, align 8
  %27 = call i32 (...) @wined3d_mutex_lock()
  %28 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %29 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %32 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %33 = getelementptr inbounds %struct.d3d9_vertexshader, %struct.d3d9_vertexshader* %32, i32 0, i32 2
  %34 = call i32 @wined3d_shader_create_vs(i32 %30, %struct.wined3d_shader_desc* %8, %struct.d3d9_vertexshader* %31, i32* @d3d9_vertexshader_wined3d_parent_ops, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = call i32 (...) @wined3d_mutex_unlock()
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %3
  %44 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %45 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %44, i32 0, i32 0
  %46 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %47 = getelementptr inbounds %struct.d3d9_vertexshader, %struct.d3d9_vertexshader* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.d3d9_vertexshader*, %struct.d3d9_vertexshader** %5, align 8
  %49 = getelementptr inbounds %struct.d3d9_vertexshader, %struct.d3d9_vertexshader* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %50)
  %52 = load i32, i32* @D3D_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %39
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_shader_create_vs(i32, %struct.wined3d_shader_desc*, %struct.d3d9_vertexshader*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
