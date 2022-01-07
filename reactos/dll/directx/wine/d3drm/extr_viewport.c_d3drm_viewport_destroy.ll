; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_viewport.c_d3drm_viewport_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_viewport.c_d3drm_viewport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_viewport = type { i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"viewport %p releasing attached interfaces.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3drm_viewport*)* @d3drm_viewport_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3drm_viewport_destroy(%struct.d3drm_viewport* %0) #0 {
  %2 = alloca %struct.d3drm_viewport*, align 8
  store %struct.d3drm_viewport* %0, %struct.d3drm_viewport** %2, align 8
  %3 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.d3drm_viewport* %3)
  %5 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %6 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %5, i32 0, i32 5
  %7 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %8 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %7, i32 0, i32 4
  %9 = call i32 @d3drm_object_cleanup(i32* %6, i32* %8)
  %10 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %11 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %16 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @IDirect3DViewport_Release(i64 %17)
  %19 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %20 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IDirect3DMaterial_Release(i32 %21)
  %23 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %24 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IDirect3DRMFrame_Release(i32 %25)
  %27 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %28 = getelementptr inbounds %struct.d3drm_viewport, %struct.d3drm_viewport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IDirect3DRM_Release(i32 %29)
  br label %31

31:                                               ; preds = %14, %1
  %32 = load %struct.d3drm_viewport*, %struct.d3drm_viewport** %2, align 8
  %33 = call i32 @heap_free(%struct.d3drm_viewport* %32)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_viewport*) #1

declare dso_local i32 @d3drm_object_cleanup(i32*, i32*) #1

declare dso_local i32 @IDirect3DViewport_Release(i64) #1

declare dso_local i32 @IDirect3DMaterial_Release(i32) #1

declare dso_local i32 @IDirect3DRMFrame_Release(i32) #1

declare dso_local i32 @IDirect3DRM_Release(i32) #1

declare dso_local i32 @heap_free(%struct.d3drm_viewport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
