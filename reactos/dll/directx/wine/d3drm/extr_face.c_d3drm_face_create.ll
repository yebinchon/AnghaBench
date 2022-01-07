; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_face.c_d3drm_face_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_face.c_d3drm_face_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_face = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@d3drm_face_create.classname = internal constant [5 x i8] c"Face\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"face %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_face1_vtbl = common dso_local global i32 0, align 4
@d3drm_face2_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_face_create(%struct.d3drm_face** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d3drm_face**, align 8
  %4 = alloca %struct.d3drm_face*, align 8
  store %struct.d3drm_face** %0, %struct.d3drm_face*** %3, align 8
  %5 = load %struct.d3drm_face**, %struct.d3drm_face*** %3, align 8
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.d3drm_face** %5)
  %7 = call %struct.d3drm_face* @heap_alloc_zero(i32 24)
  store %struct.d3drm_face* %7, %struct.d3drm_face** %4, align 8
  %8 = icmp ne %struct.d3drm_face* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.d3drm_face*, %struct.d3drm_face** %4, align 8
  %13 = getelementptr inbounds %struct.d3drm_face, %struct.d3drm_face* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* @d3drm_face1_vtbl, i32** %14, align 8
  %15 = load %struct.d3drm_face*, %struct.d3drm_face** %4, align 8
  %16 = getelementptr inbounds %struct.d3drm_face, %struct.d3drm_face* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* @d3drm_face2_vtbl, i32** %17, align 8
  %18 = load %struct.d3drm_face*, %struct.d3drm_face** %4, align 8
  %19 = getelementptr inbounds %struct.d3drm_face, %struct.d3drm_face* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.d3drm_face*, %struct.d3drm_face** %4, align 8
  %21 = getelementptr inbounds %struct.d3drm_face, %struct.d3drm_face* %20, i32 0, i32 1
  %22 = call i32 @d3drm_object_init(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @d3drm_face_create.classname, i64 0, i64 0))
  %23 = load %struct.d3drm_face*, %struct.d3drm_face** %4, align 8
  %24 = load %struct.d3drm_face**, %struct.d3drm_face*** %3, align 8
  store %struct.d3drm_face* %23, %struct.d3drm_face** %24, align 8
  %25 = load i32, i32* @S_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_face**) #1

declare dso_local %struct.d3drm_face* @heap_alloc_zero(i32) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
