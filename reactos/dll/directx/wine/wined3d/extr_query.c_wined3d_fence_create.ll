; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_fence = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"device %p, fence %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Created fence %p.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_fence_create(%struct.wined3d_device* %0, %struct.wined3d_fence** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_fence**, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.wined3d_fence*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_fence** %1, %struct.wined3d_fence*** %5, align 8
  %9 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %6, align 8
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %14 = load %struct.wined3d_fence**, %struct.wined3d_fence*** %5, align 8
  %15 = call i32 (i8*, %struct.wined3d_device*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %13, %struct.wined3d_fence** %14)
  %16 = call %struct.wined3d_fence* @heap_alloc_zero(i32 4)
  store %struct.wined3d_fence* %16, %struct.wined3d_fence** %7, align 8
  %17 = icmp ne %struct.wined3d_fence* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.wined3d_fence*, %struct.wined3d_fence** %7, align 8
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %23 = call i32 @wined3d_fence_init(%struct.wined3d_fence* %21, %struct.wined3d_gl_info* %22)
  store i32 %23, i32* %8, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.wined3d_fence*, %struct.wined3d_fence** %7, align 8
  %28 = call i32 @heap_free(%struct.wined3d_fence* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.wined3d_fence*, %struct.wined3d_fence** %7, align 8
  %32 = bitcast %struct.wined3d_fence* %31 to %struct.wined3d_device*
  %33 = call i32 (i8*, %struct.wined3d_device*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_device* %32)
  %34 = load %struct.wined3d_fence*, %struct.wined3d_fence** %7, align 8
  %35 = load %struct.wined3d_fence**, %struct.wined3d_fence*** %5, align 8
  store %struct.wined3d_fence* %34, %struct.wined3d_fence** %35, align 8
  %36 = load i32, i32* @WINED3D_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %26, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_device*, ...) #1

declare dso_local %struct.wined3d_fence* @heap_alloc_zero(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_fence_init(%struct.wined3d_fence*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @heap_free(%struct.wined3d_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
