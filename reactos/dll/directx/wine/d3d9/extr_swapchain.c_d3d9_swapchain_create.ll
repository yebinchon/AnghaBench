; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_swapchain.c_d3d9_swapchain_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_swapchain.c_d3d9_swapchain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_device = type { i32 }
%struct.wined3d_swapchain_desc = type { i32 }
%struct.d3d9_swapchain = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize swapchain, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Created swapchain %p.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d9_swapchain_create(%struct.d3d9_device* %0, %struct.wined3d_swapchain_desc* %1, %struct.d3d9_swapchain** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_device*, align 8
  %6 = alloca %struct.wined3d_swapchain_desc*, align 8
  %7 = alloca %struct.d3d9_swapchain**, align 8
  %8 = alloca %struct.d3d9_swapchain*, align 8
  %9 = alloca i32, align 4
  store %struct.d3d9_device* %0, %struct.d3d9_device** %5, align 8
  store %struct.wined3d_swapchain_desc* %1, %struct.wined3d_swapchain_desc** %6, align 8
  store %struct.d3d9_swapchain** %2, %struct.d3d9_swapchain*** %7, align 8
  %10 = call %struct.d3d9_swapchain* @heap_alloc_zero(i32 4)
  store %struct.d3d9_swapchain* %10, %struct.d3d9_swapchain** %8, align 8
  %11 = icmp ne %struct.d3d9_swapchain* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %8, align 8
  %16 = load %struct.d3d9_device*, %struct.d3d9_device** %5, align 8
  %17 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %6, align 8
  %18 = call i32 @swapchain_init(%struct.d3d9_swapchain* %15, %struct.d3d9_device* %16, %struct.wined3d_swapchain_desc* %17)
  store i32 %18, i32* %9, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %8, align 8
  %25 = call i32 @heap_free(%struct.d3d9_swapchain* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %14
  %28 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %8, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.d3d9_swapchain* %28)
  %30 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %8, align 8
  %31 = load %struct.d3d9_swapchain**, %struct.d3d9_swapchain*** %7, align 8
  store %struct.d3d9_swapchain* %30, %struct.d3d9_swapchain** %31, align 8
  %32 = load i32, i32* @D3D_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %21, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.d3d9_swapchain* @heap_alloc_zero(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @swapchain_init(%struct.d3d9_swapchain*, %struct.d3d9_device*, %struct.wined3d_swapchain_desc*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @heap_free(%struct.d3d9_swapchain*) #1

declare dso_local i32 @TRACE(i8*, %struct.d3d9_swapchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
