; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i64 }

@GS_NEITHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, i32, i32, i32)* @render_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_video(%struct.obs_core_video* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.obs_core_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.obs_core_video* %0, %struct.obs_core_video** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @gs_begin_scene()
  %11 = call i32 @gs_enable_depth_test(i32 0)
  %12 = load i32, i32* @GS_NEITHER, align 4
  %13 = call i32 @gs_set_cull_mode(i32 %12)
  %14 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %15 = call i32 @render_main_texture(%struct.obs_core_video* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %18, %4
  %22 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %23 = call i32* @render_output_texture(%struct.obs_core_video* %22)
  store i32* %23, i32** %9, align 8
  %24 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %25 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @render_convert_texture(%struct.obs_core_video* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @stage_output_texture(%struct.obs_core_video* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %18
  %41 = call i32 @gs_set_render_target(i32* null, i32* null)
  %42 = call i32 @gs_enable_blending(i32 1)
  %43 = call i32 (...) @gs_end_scene()
  ret void
}

declare dso_local i32 @gs_begin_scene(...) #1

declare dso_local i32 @gs_enable_depth_test(i32) #1

declare dso_local i32 @gs_set_cull_mode(i32) #1

declare dso_local i32 @render_main_texture(%struct.obs_core_video*) #1

declare dso_local i32* @render_output_texture(%struct.obs_core_video*) #1

declare dso_local i32 @render_convert_texture(%struct.obs_core_video*, i32*) #1

declare dso_local i32 @stage_output_texture(%struct.obs_core_video*, i32) #1

declare dso_local i32 @gs_set_render_target(i32*, i32*) #1

declare dso_local i32 @gs_enable_blending(i32) #1

declare dso_local i32 @gs_end_scene(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
