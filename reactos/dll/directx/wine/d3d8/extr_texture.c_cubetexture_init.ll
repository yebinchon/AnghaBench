; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_cubetexture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_texture.c_cubetexture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_texture = type { i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d8_device = type { i32, i32 }
%struct.wined3d_resource_desc = type { i32, i32, i32, i64, i8*, i8*, i64, i32, i32, i32 }

@Direct3DCubeTexture8_Vtbl = common dso_local global i32 0, align 4
@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_MASK = common dso_local global i32 0, align 4
@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i64 0, align 8
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_MAPPABLE = common dso_local global i32 0, align 4
@d3d8_texture_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to create wined3d cube texture, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cubetexture_init(%struct.d3d8_texture* %0, %struct.d3d8_device* %1, i8* %2, i8* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.d3d8_texture*, align 8
  %10 = alloca %struct.d3d8_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.wined3d_resource_desc, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.d3d8_texture* %0, %struct.d3d8_texture** %9, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %20 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* @Direct3DCubeTexture8_Vtbl, i32** %21, align 8
  %22 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %23 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %22, i32 0, i32 3
  %24 = call i32 @d3d8_resource_init(i32* %23)
  %25 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %26 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %25, i32 0, i32 2
  %27 = call i32 @list_init(i32* %26)
  %28 = load i32, i32* @WINED3D_RTYPE_TEXTURE_2D, align 4
  %29 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 9
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @wined3dformat_from_d3dformat(i32 %30)
  %32 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %34 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @WINED3DUSAGE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %41 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %7
  %50 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %51 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %7
  %55 = load i64, i64* %15, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @wined3daccess_from_d3dpool(i64 %55, i32 %56)
  %58 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 5
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 4
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %16, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @D3DPOOL_DEFAULT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %54
  %78 = load i32, i32* @WINED3D_TEXTURE_CREATE_MAPPABLE, align 4
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %11, align 8
  %86 = call i8* @wined3d_log2i(i8* %85)
  %87 = getelementptr i8, i8* %86, i64 1
  store i8* %87, i8** %12, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = call i32 (...) @wined3d_mutex_lock()
  %90 = load %struct.d3d8_device*, %struct.d3d8_device** %10, align 8
  %91 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %96 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %97 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %96, i32 0, i32 1
  %98 = call i32 @wined3d_texture_create(i32 %92, %struct.wined3d_resource_desc* %16, i32 6, i8* %93, i32 %94, i32* null, %struct.d3d8_texture* %95, i32* @d3d8_texture_wined3d_parent_ops, i32* %97)
  store i32 %98, i32* %18, align 4
  %99 = call i32 (...) @wined3d_mutex_unlock()
  %100 = load i32, i32* %18, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %8, align 4
  br label %117

107:                                              ; preds = %88
  %108 = load %struct.d3d8_device*, %struct.d3d8_device** %10, align 8
  %109 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %108, i32 0, i32 0
  %110 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %111 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %110, i32 0, i32 0
  store i32* %109, i32** %111, align 8
  %112 = load %struct.d3d8_texture*, %struct.d3d8_texture** %9, align 8
  %113 = getelementptr inbounds %struct.d3d8_texture, %struct.d3d8_texture* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @IDirect3DDevice8_AddRef(i32* %114)
  %116 = load i32, i32* @D3D_OK, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %107, %103
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @d3d8_resource_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i8* @wined3d_log2i(i8*) #1

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
