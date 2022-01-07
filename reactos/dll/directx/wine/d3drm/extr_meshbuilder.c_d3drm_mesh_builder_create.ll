; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_meshbuilder.c_d3drm_mesh_builder_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_meshbuilder.c_d3drm_mesh_builder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_mesh_builder = type { i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@d3drm_mesh_builder_create.classname = internal constant [8 x i8] c"Builder\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"mesh_builder %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_mesh_builder2_vtbl = common dso_local global i32 0, align 4
@d3drm_mesh_builder3_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_mesh_builder_create(%struct.d3drm_mesh_builder** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3drm_mesh_builder**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.d3drm_mesh_builder*, align 8
  store %struct.d3drm_mesh_builder** %0, %struct.d3drm_mesh_builder*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.d3drm_mesh_builder**, %struct.d3drm_mesh_builder*** %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.d3drm_mesh_builder** %7)
  %9 = call %struct.d3drm_mesh_builder* @heap_alloc_zero(i32 32)
  store %struct.d3drm_mesh_builder* %9, %struct.d3drm_mesh_builder** %6, align 8
  %10 = icmp ne %struct.d3drm_mesh_builder* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %15 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* @d3drm_mesh_builder2_vtbl, i32** %16, align 8
  %17 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %18 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* @d3drm_mesh_builder3_vtbl, i32** %19, align 8
  %20 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %21 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %24 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %26 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @IDirect3DRM_AddRef(i32* %27)
  %29 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %30 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %29, i32 0, i32 1
  %31 = call i32 @d3drm_object_init(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @d3drm_mesh_builder_create.classname, i64 0, i64 0))
  %32 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %6, align 8
  %33 = load %struct.d3drm_mesh_builder**, %struct.d3drm_mesh_builder*** %4, align 8
  store %struct.d3drm_mesh_builder* %32, %struct.d3drm_mesh_builder** %33, align 8
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %13, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_mesh_builder**) #1

declare dso_local %struct.d3drm_mesh_builder* @heap_alloc_zero(i32) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32*) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
