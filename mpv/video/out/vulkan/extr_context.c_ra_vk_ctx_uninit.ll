; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_ra_vk_ctx_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context.c_ra_vk_ctx_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.priv* }
%struct.priv = type { i32, %struct.mpvk_ctx* }
%struct.mpvk_ctx = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_vk_ctx_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mpvk_ctx*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %3, align 8
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %17, align 8
  store %struct.mpvk_ctx* %18, %struct.mpvk_ctx** %4, align 8
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %10
  %24 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.mpvk_ctx, %struct.mpvk_ctx* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @pl_gpu_finish(i32* %26)
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = call i32 @pl_swapchain_destroy(i32* %29)
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %36, align 8
  %38 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_5__* %40)
  %42 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %42, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %23, %10
  %45 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.mpvk_ctx, %struct.mpvk_ctx* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.mpvk_ctx*, %struct.mpvk_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.mpvk_ctx, %struct.mpvk_ctx* %47, i32 0, i32 0
  %49 = call i32 @pl_vulkan_destroy(i32* %48)
  %50 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %50, i32 0, i32 0
  %52 = call i32 @TA_FREEP(%struct.TYPE_6__** %51)
  br label %53

53:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @pl_gpu_finish(i32*) #1

declare dso_local i32 @pl_swapchain_destroy(i32*) #1

declare dso_local i32 @pl_vulkan_destroy(i32*) #1

declare dso_local i32 @TA_FREEP(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
