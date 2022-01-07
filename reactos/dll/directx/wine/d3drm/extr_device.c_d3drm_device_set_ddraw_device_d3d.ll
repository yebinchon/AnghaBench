; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_set_ddraw_device_d3d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_set_ddraw_device_d3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_device = type { i32*, i32*, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IID_IDirectDraw = common dso_local global i32 0, align 4
@IID_IDirectDrawSurface = common dso_local global i32 0, align 4
@IID_IDirect3DDevice2 = common dso_local global i32 0, align 4
@D3DRMERR_BADOBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3drm_device*, i32*, i32*)* @d3drm_device_set_ddraw_device_d3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3drm_device_set_ddraw_device_d3d(%struct.d3drm_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3drm_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  store %struct.d3drm_device* %0, %struct.d3drm_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32** %8 to i8**
  %15 = call i32 @IDirect3D_QueryInterface(i32* %13, i32* @IID_IDirectDraw, i8** %14)
  store i32 %15, i32* %12, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %94

20:                                               ; preds = %3
  %21 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IDirect3DRM_AddRef(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @IDirect3DDevice_AddRef(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32** %9 to i8**
  %29 = call i32 @IDirect3DDevice_QueryInterface(i32* %27, i32* @IID_IDirectDrawSurface, i8** %28)
  store i32 %29, i32* %12, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %20
  %33 = load i32*, i32** %7, align 8
  %34 = bitcast i32** %10 to i8**
  %35 = call i32 @IDirect3DDevice_QueryInterface(i32* %33, i32* @IID_IDirect3DDevice2, i8** %34)
  store i32 %35, i32* %12, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %32
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @IDirect3DDevice2_GetRenderTarget(i32* %41, i32** %9)
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @IDirect3DDevice2_Release(i32* %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %94

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @IDirectDrawSurface_Release(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @D3DRMERR_BADOBJECT, align 4
  store i32 %63, i32* %4, align 4
  br label %94

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 12, i32* %65, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @IDirectDrawSurface_GetSurfaceDesc(i32* %66, %struct.TYPE_3__* %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @IDirectDrawSurface_Release(i32* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %94

75:                                               ; preds = %64
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %78 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %82 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %86 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %89 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.d3drm_device*, %struct.d3drm_device** %5, align 8
  %92 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %75, %71, %62, %48, %38, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3D_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32) #1

declare dso_local i32 @IDirect3DDevice_AddRef(i32*) #1

declare dso_local i32 @IDirect3DDevice_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirect3DDevice2_GetRenderTarget(i32*, i32**) #1

declare dso_local i32 @IDirect3DDevice2_Release(i32*) #1

declare dso_local i32 @IDirectDrawSurface_Release(i32*) #1

declare dso_local i32 @IDirectDrawSurface_GetSurfaceDesc(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
