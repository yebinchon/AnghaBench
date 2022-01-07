; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_viewport.c_d3drm_update_background_material.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_viewport.c_d3drm_update_background_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_viewport = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3drm_viewport*)* @d3drm_update_background_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3drm_update_background_material(%struct.d3drm_viewport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d3drm_viewport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  store %struct.d3drm_viewport* %0, %struct.d3drm_viewport** %3, align 8
  %8 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %3, align 8
  %9 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IDirect3DRMFrame_GetScene(i32 %10, i32** %4)
  store i32 %11, i32* %7, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IDirect3DRMFrame_GetSceneBackground(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @IDirect3DRMFrame_Release(i32* %19)
  %21 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 8)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 8, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @d3drm_normalize_d3d_color(i32* %24, i32 %25)
  %27 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %3, align 8
  %28 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IDirect3DMaterial_SetMaterial(i32 %29, %struct.TYPE_6__* %6)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %16, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DRMFrame_GetScene(i32, i32**) #1

declare dso_local i32 @IDirect3DRMFrame_GetSceneBackground(i32*) #1

declare dso_local i32 @IDirect3DRMFrame_Release(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @d3drm_normalize_d3d_color(i32*, i32) #1

declare dso_local i32 @IDirect3DMaterial_SetMaterial(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
