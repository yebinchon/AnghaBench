; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_swapchain_surface_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d11_swapchain_surface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32, i32, i32, i32, i32, %struct.angle_opts* }
%struct.angle_opts = type { i32 }
%struct.d3d11_swapchain_opts = type { i32, i32, i32, i32, i32, i32 }

@DXGI_USAGE_RENDER_TARGET_OUTPUT = common dso_local global i32 0, align 4
@DXGI_USAGE_SHADER_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @d3d11_swapchain_surface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11_swapchain_surface_create(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca %struct.angle_opts*, align 8
  %7 = alloca %struct.d3d11_swapchain_opts, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %5, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 5
  %16 = load %struct.angle_opts*, %struct.angle_opts** %15, align 8
  store %struct.angle_opts* %16, %struct.angle_opts** %6, align 8
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %72

22:                                               ; preds = %1
  %23 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %24 = call i32 @update_sizes(%struct.ra_ctx* %23)
  %25 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 0
  %26 = load i32, i32* @DXGI_USAGE_RENDER_TARGET_OUTPUT, align 4
  %27 = load i32, i32* @DXGI_USAGE_SHADER_INPUT, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 1
  %30 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %30, i32 0, i32 0
  %32 = load %struct.vo*, %struct.vo** %31, align 8
  %33 = getelementptr inbounds %struct.vo, %struct.vo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %29, align 4
  %38 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 2
  %39 = load %struct.angle_opts*, %struct.angle_opts** %6, align 8
  %40 = getelementptr inbounds %struct.angle_opts, %struct.angle_opts* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 3
  %43 = load %struct.priv*, %struct.priv** %4, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 4
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.d3d11_swapchain_opts, %struct.d3d11_swapchain_opts* %7, i32 0, i32 5
  %51 = load %struct.vo*, %struct.vo** %5, align 8
  %52 = call i32 @vo_w32_hwnd(%struct.vo* %51)
  store i32 %52, i32* %50, align 4
  %53 = load %struct.priv*, %struct.priv** %4, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vo*, %struct.vo** %5, align 8
  %57 = getelementptr inbounds %struct.vo, %struct.vo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 1
  %61 = call i32 @mp_d3d11_create_swapchain(i32 %55, i32 %58, %struct.d3d11_swapchain_opts* %7, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %22
  br label %72

64:                                               ; preds = %22
  %65 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %66 = call i32 @d3d11_backbuffer_get(%struct.ra_ctx* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %72

69:                                               ; preds = %64
  %70 = load %struct.priv*, %struct.priv** %4, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  store i32 1, i32* %2, align 4
  br label %75

72:                                               ; preds = %68, %63, %21
  %73 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %74 = call i32 @d3d11_swapchain_surface_destroy(%struct.ra_ctx* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @update_sizes(%struct.ra_ctx*) #1

declare dso_local i32 @vo_w32_hwnd(%struct.vo*) #1

declare dso_local i32 @mp_d3d11_create_swapchain(i32, i32, %struct.d3d11_swapchain_opts*, i32*) #1

declare dso_local i32 @d3d11_backbuffer_get(%struct.ra_ctx*) #1

declare dso_local i32 @d3d11_swapchain_surface_destroy(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
