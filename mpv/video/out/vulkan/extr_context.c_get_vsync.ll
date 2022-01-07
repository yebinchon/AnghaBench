; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_get_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_get_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, %struct.vo_vsync_info*)* }
%struct.vo_vsync_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_swapchain*, %struct.vo_vsync_info*)* @get_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_vsync(%struct.ra_swapchain* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.ra_swapchain*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %6 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %7 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.vo_vsync_info*)*, i32 (i32, %struct.vo_vsync_info*)** %11, align 8
  %13 = icmp ne i32 (i32, %struct.vo_vsync_info*)* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.vo_vsync_info*)*, i32 (i32, %struct.vo_vsync_info*)** %17, align 8
  %19 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %20 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %23 = call i32 %18(i32 %21, %struct.vo_vsync_info* %22)
  br label %24

24:                                               ; preds = %14, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
