; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_volumetexture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_volumetexture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_texture = type { i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d8_device = type { i32, i32 }
%struct.wined3d_resource_desc = type { i32, i64, i8*, i8*, i8*, i32, i64, i32, i32, i32 }

@Direct3DVolumeTexture8_Vtbl = common dso_local global i32 0, align 4
@WINED3D_RTYPE_TEXTURE_3D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_MASK = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@d3d8_texture_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to create wined3d volume texture, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volumetexture_init(%struct.d3d8_texture* %0, %struct.d3d8_device* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d8_texture*, align 8
  %12 = alloca %struct.d3d8_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.wined3d_resource_desc, align 8
  %21 = alloca i32, align 4
  store %struct.d3d8_texture* %0, %struct.d3d8_texture** %11, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %22 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %23 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* @Direct3DVolumeTexture8_Vtbl, i32** %24, align 8
  %25 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %26 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %25, i32 0, i32 3
  %27 = call i32 @d3d8_resource_init(i32* %26)
  %28 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %29 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %28, i32 0, i32 2
  %30 = call i32 @list_init(i32* %29)
  %31 = load i32, i32* @WINED3D_RTYPE_TEXTURE_3D, align 4
  %32 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 9
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @wined3dformat_from_d3dformat(i32 %33)
  %35 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %37 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 7
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @WINED3DUSAGE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %44 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* %19, align 8
  %48 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %9
  %51 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %52 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %9
  %56 = load i64, i64* %19, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @wined3daccess_from_d3dpool(i64 %56, i32 %57)
  %59 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %55
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* @max(i8* %70, i8* %71)
  %73 = load i8*, i8** %15, align 8
  %74 = call i8* @max(i8* %72, i8* %73)
  %75 = call i8* @wined3d_log2i(i8* %74)
  %76 = getelementptr i8, i8* %75, i64 1
  store i8* %76, i8** %16, align 8
  br label %77

77:                                               ; preds = %69, %55
  %78 = call i32 (...) @wined3d_mutex_lock()
  %79 = load %struct.d3d8_device*, %struct.d3d8_device** %12, align 8
  %80 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %84 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %85 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %84, i32 0, i32 1
  %86 = call i32 @wined3d_texture_create(i32 %81, %struct.wined3d_resource_desc* %20, i32 1, i8* %82, i32 0, i32* null, %struct.d3d8_texture* %83, i32* @d3d8_texture_wined3d_parent_ops, i32* %85)
  store i32 %86, i32* %21, align 4
  %87 = call i32 (...) @wined3d_mutex_unlock()
  %88 = load i32, i32* %21, align 4
  %89 = call i64 @FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %21, align 4
  store i32 %94, i32* %10, align 4
  br label %105

95:                                               ; preds = %77
  %96 = load %struct.d3d8_device*, %struct.d3d8_device** %12, align 8
  %97 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %96, i32 0, i32 0
  %98 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %99 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load %struct.d3d8_texture*, %struct.d3d8_texture** %11, align 8
  %101 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @IDirect3DDevice8_AddRef(i32* %102)
  %104 = load i32, i32* @D3D_OK, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %95, %91
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @d3d8_resource_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i8* @wined3d_log2i(i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_texture_create(i32, %struct.wined3d_resource_desc*, i32, i8*, i32, i32*, %struct.d3d8_texture*, i32*, i32*) #1

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
