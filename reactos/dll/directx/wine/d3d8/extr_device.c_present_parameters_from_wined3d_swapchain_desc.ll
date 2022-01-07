; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_present_parameters_from_wined3d_swapchain_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_present_parameters_from_wined3d_swapchain_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.wined3d_swapchain_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@D3DPRESENTFLAGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.wined3d_swapchain_desc*)* @present_parameters_from_wined3d_swapchain_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @present_parameters_from_wined3d_swapchain_desc(%struct.TYPE_3__* %0, %struct.wined3d_swapchain_desc* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wined3d_swapchain_desc*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.wined3d_swapchain_desc* %1, %struct.wined3d_swapchain_desc** %4, align 8
  %5 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %6 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %5, i32 0, i32 12
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @d3dformat_from_wined3dformat(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @d3dswapeffect_from_wined3dswapeffect(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %48 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @d3dformat_from_wined3dformat(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @D3DPRESENTFLAGS_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %66 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %4, align 8
  %71 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i8* @d3dformat_from_wined3dformat(i32) #1

declare dso_local i32 @d3dswapeffect_from_wined3dswapeffect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
