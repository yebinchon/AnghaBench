; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_angle_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_angle_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @angle_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @angle_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = call i32 @ra_gl_ctx_uninit(%struct.ra_ctx* %7)
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @DwmEnableMMCSS(i32 %9)
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %17 = call i32 @d3d11_swapchain_surface_destroy(%struct.ra_ctx* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %20 = call i32 @egl_window_surface_destroy(%struct.ra_ctx* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %23 = call i32 @context_destroy(%struct.ra_ctx* %22)
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %30 = call i32 @d3d11_device_destroy(%struct.ra_ctx* %29)
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %33 = call i32 @d3d9_device_destroy(%struct.ra_ctx* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vo_w32_uninit(i32 %37)
  ret void
}

declare dso_local i32 @ra_gl_ctx_uninit(%struct.ra_ctx*) #1

declare dso_local i32 @DwmEnableMMCSS(i32) #1

declare dso_local i32 @d3d11_swapchain_surface_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @egl_window_surface_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @context_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @d3d11_device_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @d3d9_device_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @vo_w32_uninit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
