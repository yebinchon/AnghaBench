; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.gpu_priv* }
%struct.gpu_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ra_swapchain* }
%struct.ra_swapchain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ra_swapchain*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.gpu_priv*, align 8
  %4 = alloca %struct.ra_swapchain*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.gpu_priv*, %struct.gpu_priv** %6, align 8
  store %struct.gpu_priv* %7, %struct.gpu_priv** %3, align 8
  %8 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %9 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ra_swapchain*, %struct.ra_swapchain** %11, align 8
  store %struct.ra_swapchain* %12, %struct.ra_swapchain** %4, align 8
  %13 = load %struct.ra_swapchain*, %struct.ra_swapchain** %4, align 8
  %14 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ra_swapchain*)*, i32 (%struct.ra_swapchain*)** %16, align 8
  %18 = load %struct.ra_swapchain*, %struct.ra_swapchain** %4, align 8
  %19 = call i32 %17(%struct.ra_swapchain* %18)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
