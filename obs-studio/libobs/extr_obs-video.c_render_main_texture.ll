; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_main_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_main_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.draw_callback* }
%struct.draw_callback = type { i32, i32 (i32, i32, i32)* }
%struct.obs_core_video = type { i32, i32, i32, i32 }
%struct.vec4 = type { i32 }

@render_main_texture_name = common dso_local global i32 0, align 4
@GS_DEBUG_COLOR_MAIN_TEXTURE = common dso_local global i32 0, align 4
@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@obs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*)* @render_main_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_main_texture(%struct.obs_core_video* %0) #0 {
  %2 = alloca %struct.obs_core_video*, align 8
  %3 = alloca %struct.vec4, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.draw_callback*, align 8
  store %struct.obs_core_video* %0, %struct.obs_core_video** %2, align 8
  %6 = load i32, i32* @render_main_texture_name, align 4
  %7 = call i32 @profile_start(i32 %6)
  %8 = load i32, i32* @GS_DEBUG_COLOR_MAIN_TEXTURE, align 4
  %9 = load i32, i32* @render_main_texture_name, align 4
  %10 = call i32 @GS_DEBUG_MARKER_BEGIN(i32 %8, i32 %9)
  %11 = call i32 @vec4_set(%struct.vec4* %3, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %12 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %13 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gs_set_render_target(i32 %14, i32* null)
  %16 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %17 = call i32 @gs_clear(i32 %16, %struct.vec4* %3, float 1.000000e+00, i32 0)
  %18 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %19 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %22 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_render_size(i32 %20, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %59, %1
  %35 = load i64, i64* %4, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.draw_callback*, %struct.draw_callback** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %42, i64 %44
  store %struct.draw_callback* %45, %struct.draw_callback** %5, align 8
  %46 = load %struct.draw_callback*, %struct.draw_callback** %5, align 8
  %47 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %46, i32 0, i32 1
  %48 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %47, align 8
  %49 = load %struct.draw_callback*, %struct.draw_callback** %5, align 8
  %50 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %53 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %56 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %48(i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %37
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %4, align 8
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i32 @pthread_mutex_unlock(i32* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @obs_view_render(i32* %69)
  %71 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %72 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = call i32 (...) @GS_DEBUG_MARKER_END()
  %74 = load i32, i32* @render_main_texture_name, align 4
  %75 = call i32 @profile_end(i32 %74)
  ret void
}

declare dso_local i32 @profile_start(i32) #1

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN(i32, i32) #1

declare dso_local i32 @vec4_set(%struct.vec4*, float, float, float, float) #1

declare dso_local i32 @gs_set_render_target(i32, i32*) #1

declare dso_local i32 @gs_clear(i32, %struct.vec4*, float, i32) #1

declare dso_local i32 @set_render_size(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_view_render(i32*) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
