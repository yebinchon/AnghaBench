; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_device = type { i32, i32, i32*, i32*, i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DDSCAPS_ZBUFFER = common dso_local global i32 0, align 4
@DDSCAPS_3DDEVICE = common dso_local global i32 0, align 4
@DDERR_INVALIDCAPS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DDSD_CAPS = common dso_local global i32 0, align 4
@DDSD_ZBUFFERBITDEPTH = common dso_local global i32 0, align 4
@DDSD_WIDTH = common dso_local global i32 0, align 4
@DDSD_HEIGHT = common dso_local global i32 0, align 4
@IID_IDirect3DRGBDevice = common dso_local global i32 0, align 4
@IID_IDirect3D2 = common dso_local global i32 0, align 4
@IID_IDirect3DDevice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_device_init(%struct.d3drm_device* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.d3drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__, align 4
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca i32, align 4
  store %struct.d3drm_device* %0, %struct.d3drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %21 = load i32, i32* @DDSCAPS_ZBUFFER, align 4
  store i32 %21, i32* %20, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %24 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %23, i32 0, i32 5
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @IDirectDraw_AddRef(i32* %25)
  %27 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %28 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IDirect3DRM_AddRef(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %33 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @IDirectDrawSurface_AddRef(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 24, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @IDirectDrawSurface_GetSurfaceDesc(i32* %37, %struct.TYPE_11__* %17)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %6, align 4
  br label %163

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DDSCAPS_3DDEVICE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @DDERR_INVALIDCAPS, align 4
  store i32 %52, i32* %6, align 4
  br label %163

53:                                               ; preds = %44
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @IDirectDrawSurface_GetAttachedSurface(i32* %54, %struct.TYPE_12__* %12, i32** %13)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i64 @SUCCEEDED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %11, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @IDirectDrawSurface_Release(i32* %61)
  store i32* null, i32** %13, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %63
  %67 = call i32 @memset(%struct.TYPE_11__* %18, i32 0, i32 24)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 24, i32* %68, align 4
  %69 = load i32, i32* @DDSD_CAPS, align 4
  %70 = load i32, i32* @DDSD_ZBUFFERBITDEPTH, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @DDSD_WIDTH, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DDSD_HEIGHT, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @DDSCAPS_ZBUFFER, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 16, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @IDirectDraw_CreateSurface(i32* %88, %struct.TYPE_11__* %18, i32** %13, i32* null)
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %66
  %94 = load i32, i32* %19, align 4
  store i32 %94, i32* %6, align 4
  br label %163

95:                                               ; preds = %66
  %96 = load i32*, i32** %10, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @IDirectDrawSurface_AddAttachedSurface(i32* %96, i32* %97)
  store i32 %98, i32* %19, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @IDirectDrawSurface_Release(i32* %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %6, align 4
  br label %163

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %63
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = bitcast i32** %14 to i8**
  %113 = call i32 @IDirectDrawSurface_QueryInterface(i32* %111, i32* @IID_IDirect3DRGBDevice, i8** %112)
  store i32 %113, i32* %19, align 4
  br label %123

114:                                              ; preds = %107
  %115 = load i32*, i32** %9, align 8
  %116 = bitcast i32** %16 to i8**
  %117 = call i32 @IDirectDraw_QueryInterface(i32* %115, i32* @IID_IDirect3D2, i8** %116)
  %118 = load i32*, i32** %16, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @IDirect3D2_CreateDevice(i32* %118, i32* @IID_IDirect3DRGBDevice, i32* %119, i32** %15)
  store i32 %120, i32* %19, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @IDirect3D2_Release(i32* %121)
  br label %123

123:                                              ; preds = %114, %110
  %124 = load i32, i32* %19, align 4
  %125 = call i64 @FAILED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32*, i32** %10, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @IDirectDrawSurface_DeleteAttachedSurface(i32* %128, i32 0, i32* %129)
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %6, align 4
  br label %163

132:                                              ; preds = %123
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32*, i32** %15, align 8
  %137 = bitcast i32** %14 to i8**
  %138 = call i32 @IDirect3DDevice2_QueryInterface(i32* %136, i32* @IID_IDirect3DDevice, i8** %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @IDirect3DDevice2_Release(i32* %139)
  %141 = load i32, i32* %19, align 4
  %142 = call i64 @FAILED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load i32*, i32** %10, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i32 @IDirectDrawSurface_DeleteAttachedSurface(i32* %145, i32 0, i32* %146)
  %148 = load i32, i32* %19, align 4
  store i32 %148, i32* %6, align 4
  br label %163

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %132
  %151 = load i32*, i32** %14, align 8
  %152 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %153 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %152, i32 0, i32 2
  store i32* %151, i32** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %157 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.d3drm_device*, %struct.d3drm_device** %7, align 8
  %161 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %19, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %150, %144, %127, %104, %93, %51, %42
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @IDirectDraw_AddRef(i32*) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32) #1

declare dso_local i32 @IDirectDrawSurface_AddRef(i32*) #1

declare dso_local i32 @IDirectDrawSurface_GetSurfaceDesc(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectDrawSurface_GetAttachedSurface(i32*, %struct.TYPE_12__*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDirectDrawSurface_Release(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @IDirectDraw_CreateSurface(i32*, %struct.TYPE_11__*, i32**, i32*) #1

declare dso_local i32 @IDirectDrawSurface_AddAttachedSurface(i32*, i32*) #1

declare dso_local i32 @IDirectDrawSurface_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirectDraw_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirect3D2_CreateDevice(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @IDirect3D2_Release(i32*) #1

declare dso_local i32 @IDirectDrawSurface_DeleteAttachedSurface(i32*, i32, i32*) #1

declare dso_local i32 @IDirect3DDevice2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDirect3DDevice2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
