; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_get_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_get_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.gpu_priv* }
%struct.gpu_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ra_swapchain* }
%struct.ra_swapchain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)* }
%struct.vo_vsync_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_vsync_info*)* @get_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_vsync(%struct.vo* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.gpu_priv*, align 8
  %6 = alloca %struct.ra_swapchain*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  store %struct.gpu_priv* %9, %struct.gpu_priv** %5, align 8
  %10 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  %11 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ra_swapchain*, %struct.ra_swapchain** %13, align 8
  store %struct.ra_swapchain* %14, %struct.ra_swapchain** %6, align 8
  %15 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %16 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)*, i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)** %18, align 8
  %20 = icmp ne i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %23 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)*, i32 (%struct.ra_swapchain*, %struct.vo_vsync_info*)** %25, align 8
  %27 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %28 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %29 = call i32 %26(%struct.ra_swapchain* %27, %struct.vo_vsync_info* %28)
  br label %30

30:                                               ; preds = %21, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
