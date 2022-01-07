; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_device.c_d3drm_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_device = type { i32, i64, i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Releasing attached ddraw interfaces.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Releasing primary surface and attached clipper.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d3drm_device_destroy(%struct.d3drm_device* %0) #0 {
  %2 = alloca %struct.d3drm_device*, align 8
  store %struct.d3drm_device* %0, %struct.d3drm_device** %2, align 8
  %3 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %4 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %3, i32 0, i32 7
  %5 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %5, i32 0, i32 6
  %7 = call i32 @d3drm_object_cleanup(i32* %4, i32* %6)
  %8 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IDirect3DDevice_Release(i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %25 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IDirectDrawSurface_Release(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %30 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IDirectDrawSurface_Release(i64 %37)
  %39 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IDirectDrawClipper_Release(i32 %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %45 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %50 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @IDirectDraw_Release(i64 %51)
  %53 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %54 = getelementptr inbounds %struct.d3drm_device, %struct.d3drm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @IDirect3DRM_Release(i32 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.d3drm_device*, %struct.d3drm_device** %2, align 8
  %59 = call i32 @heap_free(%struct.d3drm_device* %58)
  ret void
}

declare dso_local i32 @d3drm_object_cleanup(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IDirect3DDevice_Release(i64) #1

declare dso_local i32 @IDirectDrawSurface_Release(i64) #1

declare dso_local i32 @IDirectDrawClipper_Release(i32) #1

declare dso_local i32 @IDirectDraw_Release(i64) #1

declare dso_local i32 @IDirect3DRM_Release(i32) #1

declare dso_local i32 @heap_free(%struct.d3drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
