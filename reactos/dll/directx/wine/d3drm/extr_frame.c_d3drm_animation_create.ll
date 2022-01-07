; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_animation_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_animation_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_animation = type { i32, i32, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@d3drm_animation_create.classname = internal constant [10 x i8] c"Animation\00", align 1
@D3DRM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"animation %p, d3drm %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_animation1_vtbl = common dso_local global i32 0, align 4
@d3drm_animation2_vtbl = common dso_local global i32 0, align 4
@D3DRMANIMATION_CLOSED = common dso_local global i32 0, align 4
@D3DRMANIMATION_LINEARPOSITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_animation_create(%struct.d3drm_animation** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3drm_animation**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.d3drm_animation*, align 8
  %7 = alloca i32, align 4
  store %struct.d3drm_animation** %0, %struct.d3drm_animation*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @D3DRM_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.d3drm_animation**, %struct.d3drm_animation*** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.d3drm_animation** %9, i32* %10)
  %12 = call %struct.d3drm_animation* @heap_alloc_zero(i32 40)
  store %struct.d3drm_animation* %12, %struct.d3drm_animation** %6, align 8
  %13 = icmp ne %struct.d3drm_animation* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %18 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @d3drm_animation1_vtbl, i32** %19, align 8
  %20 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %21 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* @d3drm_animation2_vtbl, i32** %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %25 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %27 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @D3DRMANIMATION_CLOSED, align 4
  %29 = load i32, i32* @D3DRMANIMATION_LINEARPOSITION, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %32 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %34 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %33, i32 0, i32 3
  %35 = call i32 @d3drm_object_init(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @d3drm_animation_create.classname, i64 0, i64 0))
  %36 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %37 = getelementptr inbounds %struct.d3drm_animation, %struct.d3drm_animation* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @IDirect3DRM_AddRef(i32* %38)
  %40 = load %struct.d3drm_animation*, %struct.d3drm_animation** %6, align 8
  %41 = load %struct.d3drm_animation**, %struct.d3drm_animation*** %4, align 8
  store %struct.d3drm_animation* %40, %struct.d3drm_animation** %41, align 8
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %16, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_animation**, i32*) #1

declare dso_local %struct.d3drm_animation* @heap_alloc_zero(i32) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
