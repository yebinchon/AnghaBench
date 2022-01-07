; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_ra_vk_ctx_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_ra_vk_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpvk_ctx = type { i32 }
%struct.ra_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv*, i32* }
%struct.priv = type { %struct.mpvk_ctx* }

@vulkan_swapchain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpvk_ctx* @ra_vk_ctx_get(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.mpvk_ctx*, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, @vulkan_swapchain
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.mpvk_ctx* null, %struct.mpvk_ctx** %2, align 8
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.priv*, %struct.priv** %16, align 8
  store %struct.priv* %17, %struct.priv** %4, align 8
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %19, align 8
  store %struct.mpvk_ctx* %20, %struct.mpvk_ctx** %2, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %2, align 8
  ret %struct.mpvk_ctx* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
