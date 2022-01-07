; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_buffer.c_indexbuffer_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_buffer.c_indexbuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_indexbuffer = type { i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d8_device = type { i32, i32 }
%struct.wined3d_buffer_desc = type { i32, i32, i64, i64, i32, i32 }

@WINED3DUSAGE_MASK = common dso_local global i32 0, align 4
@WINED3DUSAGE_STATICDECL = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@WINED3D_BIND_INDEX_BUFFER = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@d3d8_indexbuffer_vtbl = common dso_local global i32 0, align 4
@d3d8_indexbuffer_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to create wined3d buffer, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @indexbuffer_init(%struct.d3d8_indexbuffer* %0, %struct.d3d8_device* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3d8_indexbuffer*, align 8
  %9 = alloca %struct.d3d8_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.wined3d_buffer_desc, align 8
  %15 = alloca i32, align 4
  store %struct.d3d8_indexbuffer* %0, %struct.d3d8_indexbuffer** %8, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @WINED3DUSAGE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @WINED3DUSAGE_STATICDECL, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %29 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32, i32* @WINED3D_BIND_INDEX_BUFFER, align 4
  %34 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @wined3daccess_from_d3dpool(i64 %35, i32 %36)
  %38 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.wined3d_buffer_desc, %struct.wined3d_buffer_desc* %14, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %46 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* @d3d8_indexbuffer_vtbl, i32** %47, align 8
  %48 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %49 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %48, i32 0, i32 3
  %50 = call i32 @d3d8_resource_init(i32* %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @wined3dformat_from_d3dformat(i32 %51)
  %53 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %54 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @wined3d_mutex_lock()
  %56 = load %struct.d3d8_device*, %struct.d3d8_device** %9, align 8
  %57 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %60 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %61 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %60, i32 0, i32 1
  %62 = call i32 @wined3d_buffer_create(i32 %58, %struct.wined3d_buffer_desc* %14, i32* null, %struct.d3d8_indexbuffer* %59, i32* @d3d8_indexbuffer_wined3d_parent_ops, i32* %61)
  store i32 %62, i32* %15, align 4
  %63 = call i32 (...) @wined3d_mutex_unlock()
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %32
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %7, align 4
  br label %81

71:                                               ; preds = %32
  %72 = load %struct.d3d8_device*, %struct.d3d8_device** %9, align 8
  %73 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %72, i32 0, i32 0
  %74 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %75 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.d3d8_indexbuffer*, %struct.d3d8_indexbuffer** %8, align 8
  %77 = getelementptr inbounds %struct.d3d8_indexbuffer, %struct.d3d8_indexbuffer* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @IDirect3DDevice8_AddRef(i32* %78)
  %80 = load i32, i32* @D3D_OK, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %71, %67
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i32 @d3d8_resource_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_buffer_create(i32, %struct.wined3d_buffer_desc*, i32*, %struct.d3d8_indexbuffer*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IDirect3DDevice8_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
