; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_material.c_d3drm_material_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_material.c_d3drm_material_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_material = type { i32, i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { float, float, float }
%struct.TYPE_3__ = type { i32* }

@d3drm_material_create.classname = internal constant [9 x i8] c"Material\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"material %p, d3drm %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_material_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_material_create(%struct.d3drm_material** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3drm_material**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.d3drm_material*, align 8
  store %struct.d3drm_material** %0, %struct.d3drm_material*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.d3drm_material**, %struct.d3drm_material*** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3drm_material** %7, i32* %8)
  %10 = call %struct.d3drm_material* @heap_alloc_zero(i32 40)
  store %struct.d3drm_material* %10, %struct.d3drm_material** %6, align 8
  %11 = icmp ne %struct.d3drm_material* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %16 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* @d3drm_material_vtbl, i32** %17, align 8
  %18 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %19 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %22 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %24 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @IDirect3DRM_AddRef(i32* %25)
  %27 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %28 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store float 1.000000e+00, float* %29, align 8
  %30 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %31 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store float 1.000000e+00, float* %32, align 4
  %33 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %34 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store float 1.000000e+00, float* %35, align 8
  %36 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %37 = getelementptr inbounds %struct.d3drm_material, %struct.d3drm_material* %36, i32 0, i32 1
  %38 = call i32 @d3drm_object_init(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @d3drm_material_create.classname, i64 0, i64 0))
  %39 = load %struct.d3drm_material*, %struct.d3drm_material** %6, align 8
  %40 = load %struct.d3drm_material**, %struct.d3drm_material*** %4, align 8
  store %struct.d3drm_material* %39, %struct.d3drm_material** %40, align 8
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %14, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_material**, i32*) #1

declare dso_local %struct.d3drm_material* @heap_alloc_zero(i32) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32*) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
