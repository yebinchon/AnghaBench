; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_light.c_d3drm_light_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_light.c_d3drm_light_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_light = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@d3drm_light_create.classname = internal constant [6 x i8] c"Light\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"light %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3drm_light_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_light_create(%struct.d3drm_light** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3drm_light**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.d3drm_light*, align 8
  store %struct.d3drm_light** %0, %struct.d3drm_light*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.d3drm_light**, %struct.d3drm_light*** %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.d3drm_light** %7)
  %9 = call %struct.d3drm_light* @heap_alloc_zero(i32 24)
  store %struct.d3drm_light* %9, %struct.d3drm_light** %6, align 8
  %10 = icmp ne %struct.d3drm_light* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %15 = getelementptr inbounds %struct.d3drm_light, %struct.d3drm_light* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* @d3drm_light_vtbl, i32** %16, align 8
  %17 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %18 = getelementptr inbounds %struct.d3drm_light, %struct.d3drm_light* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %21 = getelementptr inbounds %struct.d3drm_light, %struct.d3drm_light* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %23 = getelementptr inbounds %struct.d3drm_light, %struct.d3drm_light* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @IDirect3DRM_AddRef(i32* %24)
  %26 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %27 = getelementptr inbounds %struct.d3drm_light, %struct.d3drm_light* %26, i32 0, i32 1
  %28 = call i32 @d3drm_object_init(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @d3drm_light_create.classname, i64 0, i64 0))
  %29 = load %struct.d3drm_light*, %struct.d3drm_light** %6, align 8
  %30 = load %struct.d3drm_light**, %struct.d3drm_light*** %4, align 8
  store %struct.d3drm_light* %29, %struct.d3drm_light** %30, align 8
  %31 = load i32, i32* @S_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %13, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_light**) #1

declare dso_local %struct.d3drm_light* @heap_alloc_zero(i32) #1

declare dso_local i32 @IDirect3DRM_AddRef(i32*) #1

declare dso_local i32 @d3drm_object_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
