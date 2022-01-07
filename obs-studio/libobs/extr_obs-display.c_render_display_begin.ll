; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_render_display_begin.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_render_display_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_display = type { i32, i32 }
%struct.vec4 = type { float }

@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@GS_CLEAR_DEPTH = common dso_local global i32 0, align 4
@GS_CLEAR_STENCIL = common dso_local global i32 0, align 4
@GS_NEITHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_display*, i64, i64, i32)* @render_display_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_display_begin(%struct.obs_display* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.obs_display*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vec4, align 4
  store %struct.obs_display* %0, %struct.obs_display** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %11 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gs_load_swapchain(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @gs_resize(i64 %17, i64 %18)
  br label %20

20:                                               ; preds = %16, %4
  %21 = call i32 (...) @gs_begin_scene()
  %22 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %23 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vec4_from_rgba(%struct.vec4* %9, i32 %24)
  %26 = getelementptr inbounds %struct.vec4, %struct.vec4* %9, i32 0, i32 0
  store float 1.000000e+00, float* %26, align 4
  %27 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %28 = load i32, i32* @GS_CLEAR_DEPTH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GS_CLEAR_STENCIL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @gs_clear(i32 %31, %struct.vec4* %9, float 1.000000e+00, i32 0)
  %33 = call i32 @gs_enable_depth_test(i32 0)
  %34 = load i32, i32* @GS_NEITHER, align 4
  %35 = call i32 @gs_set_cull_mode(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = sitofp i64 %36 to float
  %38 = load i64, i64* %7, align 8
  %39 = sitofp i64 %38 to float
  %40 = call i32 @gs_ortho(float 0.000000e+00, float %37, float 0.000000e+00, float %39, float -1.000000e+02, float 1.000000e+02)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @gs_set_viewport(i32 0, i32 0, i64 %41, i64 %42)
  ret void
}

declare dso_local i32 @gs_load_swapchain(i32) #1

declare dso_local i32 @gs_resize(i64, i64) #1

declare dso_local i32 @gs_begin_scene(...) #1

declare dso_local i32 @vec4_from_rgba(%struct.vec4*, i32) #1

declare dso_local i32 @gs_clear(i32, %struct.vec4*, float, i32) #1

declare dso_local i32 @gs_enable_depth_test(i32) #1

declare dso_local i32 @gs_set_cull_mode(i32) #1

declare dso_local i32 @gs_ortho(float, float, float, float, float, float) #1

declare dso_local i32 @gs_set_viewport(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
