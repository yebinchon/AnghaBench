; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_frame_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_frame_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_frame = type { i32, i32, i32*, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@d3drm_frame_create.classname = internal constant [6 x i8] c"Frame\00", align 1
@D3DRM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"frame %p, parent_frame %p, d3drm %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_frame1_vtbl = common dso_local global i32 0, align 4
@d3drm_frame2_vtbl = common dso_local global i32 0, align 4
@d3drm_frame3_vtbl = common dso_local global i32 0, align 4
@D3DRMFRAME_RENDERENABLE = common dso_local global i32 0, align 4
@D3DRMFRAME_PICKENABLE = common dso_local global i32 0, align 4
@identity = common dso_local global i32 0, align 4
@IID_IDirect3DRMFrame3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_frame_create(%struct.d3drm_frame** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3drm_frame**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.d3drm_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.d3drm_frame** %0, %struct.d3drm_frame*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @D3DRM_OK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.d3drm_frame**, %struct.d3drm_frame*** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.d3drm_frame** %12, i32* %13, i32* %14)
  %16 = call %struct.d3drm_frame* @heap_alloc_zero(i32 56)
  store %struct.d3drm_frame* %16, %struct.d3drm_frame** %8, align 8
  %17 = icmp ne %struct.d3drm_frame* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %22 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* @d3drm_frame1_vtbl, i32** %23, align 8
  %24 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %25 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* @d3drm_frame2_vtbl, i32** %26, align 8
  %27 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %28 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32* @d3drm_frame3_vtbl, i32** %29, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %32 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %34 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %36 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %35, i32 0, i32 6
  %37 = call i32 @d3drm_set_color(i32* %36, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %38 = load i32, i32* @D3DRMFRAME_RENDERENABLE, align 4
  %39 = load i32, i32* @D3DRMFRAME_PICKENABLE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %42 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %44 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %43, i32 0, i32 5
  %45 = call i32 @d3drm_object_init(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @d3drm_frame_create.classname, i64 0, i64 0))
  %46 = load i32, i32* @identity, align 4
  %47 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %48 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %20
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32** %10 to i8**
  %54 = call i32 @IDirect3DRMFrame_QueryInterface(i32* %52, i32* @IID_IDirect3DRMFrame3, i8** %53)
  store i32 %54, i32* %9, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %59 = call i32 @heap_free(%struct.d3drm_frame* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %76

61:                                               ; preds = %51
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @IDirect3DRMFrame_Release(i32* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %66 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %65, i32 0, i32 3
  %67 = call i32 @IDirect3DRMFrame3_AddChild(i32* %64, %struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %61, %20
  %69 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %70 = getelementptr inbounds %struct.d3drm_frame, %struct.d3drm_frame* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @IDirect3DRM_AddRef(i32* %71)
  %73 = load %struct.d3drm_frame*, %struct.d3drm_frame** %8, align 8
  %74 = load %struct.d3drm_frame**, %struct.d3drm_frame*** %5, align 8
  store %struct.d3drm_frame* %73, %struct.d3drm_frame** %74, align 8
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %57, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_frame**, i32*, i32*) #1

declare dso_local %struct.d3drm_frame* @heap_alloc_zero(i32) #1

declare dso_local i32 @d3drm_set_color(i32*, float, float, float, float) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DRMFrame_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @heap_free(%struct.d3drm_frame*) #1

declare dso_local i32 @IDirect3DRMFrame_Release(i32*) #1

declare dso_local i32 @IDirect3DRMFrame3_AddChild(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
