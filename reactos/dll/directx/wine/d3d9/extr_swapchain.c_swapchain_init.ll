; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_swapchain.c_swapchain_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_swapchain.c_swapchain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_swapchain = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }
%struct.wined3d_swapchain_desc = type { i32 }

@d3d9_swapchain_vtbl = common dso_local global i32 0, align 4
@d3d9_swapchain_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create wined3d swapchain, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d9_swapchain*, %struct.d3d9_device*, %struct.wined3d_swapchain_desc*)* @swapchain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swapchain_init(%struct.d3d9_swapchain* %0, %struct.d3d9_device* %1, %struct.wined3d_swapchain_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_swapchain*, align 8
  %6 = alloca %struct.d3d9_device*, align 8
  %7 = alloca %struct.wined3d_swapchain_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.d3d9_swapchain* %0, %struct.d3d9_swapchain** %5, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %6, align 8
  store %struct.wined3d_swapchain_desc* %2, %struct.wined3d_swapchain_desc** %7, align 8
  %9 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %10 = getelementptr inbounds %struct.d3d9_swapchain, %struct.d3d9_swapchain* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %12 = getelementptr inbounds %struct.d3d9_swapchain, %struct.d3d9_swapchain* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* @d3d9_swapchain_vtbl, i32** %13, align 8
  %14 = call i32 (...) @wined3d_mutex_lock()
  %15 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %16 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %7, align 8
  %19 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %20 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %21 = getelementptr inbounds %struct.d3d9_swapchain, %struct.d3d9_swapchain* %20, i32 0, i32 2
  %22 = call i32 @wined3d_swapchain_create(i32 %17, %struct.wined3d_swapchain_desc* %18, %struct.d3d9_swapchain* %19, i32* @d3d9_swapchain_wined3d_parent_ops, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @wined3d_mutex_unlock()
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %33 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %32, i32 0, i32 0
  %34 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %35 = getelementptr inbounds %struct.d3d9_swapchain, %struct.d3d9_swapchain* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.d3d9_swapchain*, %struct.d3d9_swapchain** %5, align 8
  %37 = getelementptr inbounds %struct.d3d9_swapchain, %struct.d3d9_swapchain* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %38)
  %40 = load i32, i32* @D3D_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_swapchain_create(i32, %struct.wined3d_swapchain_desc*, %struct.d3d9_swapchain*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
