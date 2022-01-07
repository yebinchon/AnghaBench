; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_frame_array_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_frame.c_d3drm_frame_array_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_frame_array = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@d3drm_frame_array_vtbl = common dso_local global i32 0, align 4
@IID_IDirect3DRMFrame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3drm_frame_array* (i32, i32**)* @d3drm_frame_array_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3drm_frame_array* @d3drm_frame_array_create(i32 %0, i32** %1) #0 {
  %3 = alloca %struct.d3drm_frame_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.d3drm_frame_array*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call %struct.d3drm_frame_array* @heap_alloc_zero(i32 24)
  store %struct.d3drm_frame_array* %8, %struct.d3drm_frame_array** %6, align 8
  %9 = icmp ne %struct.d3drm_frame_array* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.d3drm_frame_array* null, %struct.d3drm_frame_array** %3, align 8
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %13 = getelementptr inbounds %struct.d3drm_frame_array, %struct.d3drm_frame_array* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* @d3drm_frame_array_vtbl, i32** %14, align 8
  %15 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %16 = getelementptr inbounds %struct.d3drm_frame_array, %struct.d3drm_frame_array* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %19 = getelementptr inbounds %struct.d3drm_frame_array, %struct.d3drm_frame_array* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @heap_calloc(i32 %23, i32 4)
  %25 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %26 = getelementptr inbounds %struct.d3drm_frame_array, %struct.d3drm_frame_array* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = icmp ne i32* %24, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %30 = call i32 @heap_free(%struct.d3drm_frame_array* %29)
  store %struct.d3drm_frame_array* null, %struct.d3drm_frame_array** %3, align 8
  br label %56

31:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  %43 = getelementptr inbounds %struct.d3drm_frame_array, %struct.d3drm_frame_array* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i8**
  %49 = call i32 @IDirect3DRMFrame3_QueryInterface(i32* %41, i32* @IID_IDirect3DRMFrame, i8** %48)
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %32

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %11
  %55 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %6, align 8
  store %struct.d3drm_frame_array* %55, %struct.d3drm_frame_array** %3, align 8
  br label %56

56:                                               ; preds = %54, %28, %10
  %57 = load %struct.d3drm_frame_array*, %struct.d3drm_frame_array** %3, align 8
  ret %struct.d3drm_frame_array* %57
}

declare dso_local %struct.d3drm_frame_array* @heap_alloc_zero(i32) #1

declare dso_local i32* @heap_calloc(i32, i32) #1

declare dso_local i32 @heap_free(%struct.d3drm_frame_array*) #1

declare dso_local i32 @IDirect3DRMFrame3_QueryInterface(i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
