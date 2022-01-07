; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_swapchain*)* @d3d11_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_swap_buffers(%struct.ra_swapchain* %0) #0 {
  %2 = alloca %struct.ra_swapchain*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %2, align 8
  %5 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %6 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = call i32 @QueryPerformanceCounter(%struct.TYPE_5__* %4)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IDXGISwapChain_Present(i32 %15, i32 %20, i32 0)
  ret void
}

declare dso_local i32 @QueryPerformanceCounter(%struct.TYPE_5__*) #1

declare dso_local i32 @IDXGISwapChain_Present(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
