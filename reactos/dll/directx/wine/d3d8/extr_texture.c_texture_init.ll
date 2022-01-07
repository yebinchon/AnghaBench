; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_texture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_texture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_texture = type { i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d8_device = type { i32, i32 }
%struct.wined3d_resource_desc = type { i32, i32, i32, i64, i8*, i8*, i64, i32, i32, i32 }

@Direct3DTexture8_Vtbl = common dso_local global i32 0, align 4
@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_MASK = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i64 0, align 8
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_MAPPABLE = common dso_local global i32 0, align 4
@d3d8_texture_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to create wined3d texture, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @texture_init(%struct.d3d8_texture* %0, %struct.d3d8_device* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3d8_texture*, align 8
  %11 = alloca %struct.d3d8_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.wined3d_resource_desc, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.d3d8_texture* %0, %struct.d3d8_texture** %10, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %22 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* @Direct3DTexture8_Vtbl, i32** %23, align 8
  %24 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %25 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %24, i32 0, i32 3
  %26 = call i32 @d3d8_resource_init(i32* %25)
  %27 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %28 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %27, i32 0, i32 2
  %29 = call i32 @list_init(i32* %28)
  %30 = load i32, i32* @WINED3D_RTYPE_TEXTURE_2D, align 4
  %31 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 9
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @wined3dformat_from_d3dformat(i32 %32)
  %34 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %36 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 7
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @WINED3DUSAGE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %43 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %8
  %50 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %51 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %8
  %55 = load i64, i64* %17, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @wined3daccess_from_d3dpool(i64 %55, i32 %56)
  %58 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 5
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @D3DPOOL_DEFAULT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %54
  %78 = load i32, i32* @WINED3D_TEXTURE_CREATE_MAPPABLE, align 4
  %79 = load i32, i32* %19, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %14, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @max(i8* %85, i8* %86)
  %88 = call i8* @wined3d_log2i(i32 %87)
  %89 = getelementptr i8, i8* %88, i64 1
  store i8* %89, i8** %14, align 8
  br label %90

90:                                               ; preds = %84, %81
  %91 = call i32 (...) @wined3d_mutex_lock()
  %92 = load %struct.d3d8_device*, %struct.d3d8_device** %11, align 8
  %93 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %98 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %99 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %98, i32 0, i32 1
  %100 = call i32 @wined3d_texture_create(i32 %94, %struct.wined3d_resource_desc* %18, i32 1, i8* %95, i32 %96, i32* null, %struct.d3d8_texture* %97, i32* @d3d8_texture_wined3d_parent_ops, i32* %99)
  store i32 %100, i32* %20, align 4
  %101 = call i32 (...) @wined3d_mutex_unlock()
  %102 = load i32, i32* %20, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %9, align 4
  br label %119

109:                                              ; preds = %90
  %110 = load %struct.d3d8_device*, %struct.d3d8_device** %11, align 8
  %111 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %110, i32 0, i32 0
  %112 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %113 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  %114 = load %struct.d3d8_texture*, %struct.d3d8_texture** %10, align 8
  %115 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @IDirect3DDevice8_AddRef(i32* %116)
  %118 = load i32, i32* @D3D_OK, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %109, %105
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local i32 @d3d8_resource_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i8* @wined3d_log2i(i32) #1

declare dso_local i32 @max(i8*, i8*) #1

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
