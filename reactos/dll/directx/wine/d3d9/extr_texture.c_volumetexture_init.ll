; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_volumetexture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_volumetexture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_texture = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }
%struct.wined3d_resource_desc = type { i64, i8*, i8*, i8*, i32, i32, i64, i32, i32, i32 }

@d3d9_texture_3d_vtbl = common dso_local global i32 0, align 4
@WINED3D_RTYPE_TEXTURE_3D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@D3DUSAGE_AUTOGENMIPMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"D3DUSAGE_AUTOGENMIPMAP volume texture is not supported, returning D3DERR_INVALIDCALL.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@d3d9_texture_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to create wined3d volume texture, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volumetexture_init(%struct.d3d9_texture* %0, %struct.d3d9_device* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d9_texture*, align 8
  %12 = alloca %struct.d3d9_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.wined3d_resource_desc, align 8
  %21 = alloca i32, align 4
  store %struct.d3d9_texture* %0, %struct.d3d9_texture** %11, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %22 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %23 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* @d3d9_texture_3d_vtbl, i32** %24, align 8
  %25 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %26 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %25, i32 0, i32 4
  %27 = call i32 @d3d9_resource_init(i32* %26)
  %28 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %29 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %28, i32 0, i32 3
  %30 = call i32 @list_init(i32* %29)
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %33 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @WINED3D_RTYPE_TEXTURE_3D, align 4
  %35 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 9
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @wined3dformat_from_d3dformat(i32 %36)
  %38 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %40 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @wined3dusage_from_d3dusage(i32 %42)
  %44 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %46 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %9
  %53 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %54 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %9
  %58 = load i64, i64* %19, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @wined3daccess_from_d3dpool(i64 %58, i32 %59)
  %61 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %20, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @D3DUSAGE_AUTOGENMIPMAP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %75, i32* %10, align 4
  br label %115

76:                                               ; preds = %57
  %77 = load i8*, i8** %16, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = call i8* @max(i8* %80, i8* %81)
  %83 = load i8*, i8** %15, align 8
  %84 = call i8* @max(i8* %82, i8* %83)
  %85 = call i8* @wined3d_log2i(i8* %84)
  %86 = getelementptr i8, i8* %85, i64 1
  store i8* %86, i8** %16, align 8
  br label %87

87:                                               ; preds = %79, %76
  %88 = call i32 (...) @wined3d_mutex_lock()
  %89 = load %struct.d3d9_device*, %struct.d3d9_device** %12, align 8
  %90 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %16, align 8
  %93 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %94 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %95 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %94, i32 0, i32 2
  %96 = call i32 @wined3d_texture_create(i32 %91, %struct.wined3d_resource_desc* %20, i32 1, i8* %92, i32 0, i32* null, %struct.d3d9_texture* %93, i32* @d3d9_texture_wined3d_parent_ops, i32* %95)
  store i32 %96, i32* %21, align 4
  %97 = call i32 (...) @wined3d_mutex_unlock()
  %98 = load i32, i32* %21, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i32, i32* %21, align 4
  %103 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %21, align 4
  store i32 %104, i32* %10, align 4
  br label %115

105:                                              ; preds = %87
  %106 = load %struct.d3d9_device*, %struct.d3d9_device** %12, align 8
  %107 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %106, i32 0, i32 0
  %108 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %109 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load %struct.d3d9_texture*, %struct.d3d9_texture** %11, align 8
  %111 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %112)
  %114 = load i32, i32* @D3D_OK, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %105, %101, %73
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @d3d9_resource_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3dusage_from_d3dusage(i32) #1

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i8* @wined3d_log2i(i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_texture_create(i32, %struct.wined3d_resource_desc*, i32, i8*, i32, i32*, %struct.d3d9_texture*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
