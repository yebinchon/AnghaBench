; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_output_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, i32 }
%struct.video_data = type { i32 }
%struct.obs_vframe_info = type { i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@NUM_TEXTURES = common dso_local global i32 0, align 4
@output_frame_gs_context_name = common dso_local global i32 0, align 4
@output_frame_render_video_name = common dso_local global i32 0, align 4
@GS_DEBUG_COLOR_RENDER_VIDEO = common dso_local global i32 0, align 4
@output_frame_download_frame_name = common dso_local global i32 0, align 4
@output_frame_gs_flush_name = common dso_local global i32 0, align 4
@output_frame_output_video_data_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @output_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_frame(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_core_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.video_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.obs_vframe_info, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.obs_core_video* %12, %struct.obs_core_video** %5, align 8
  %13 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %14 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @NUM_TEXTURES, align 4
  %20 = sub nsw i32 %19, 1
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %26 = call i32 @memset(%struct.video_data* %8, i32 0, i32 4)
  %27 = load i32, i32* @output_frame_gs_context_name, align 4
  %28 = call i32 @profile_start(i32 %27)
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %30 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gs_enter_context(i32 %31)
  %33 = load i32, i32* @output_frame_render_video_name, align 4
  %34 = call i32 @profile_start(i32 %33)
  %35 = load i32, i32* @GS_DEBUG_COLOR_RENDER_VIDEO, align 4
  %36 = load i32, i32* @output_frame_render_video_name, align 4
  %37 = call i32 @GS_DEBUG_MARKER_BEGIN(i32 %35, i32 %36)
  %38 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @render_video(%struct.obs_core_video* %38, i32 %39, i32 %40, i32 %41)
  %43 = call i32 (...) @GS_DEBUG_MARKER_END()
  %44 = load i32, i32* @output_frame_render_video_name, align 4
  %45 = call i32 @profile_end(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %24
  %49 = load i32, i32* @output_frame_download_frame_name, align 4
  %50 = call i32 @profile_start(i32 %49)
  %51 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @download_frame(%struct.obs_core_video* %51, i32 %52, %struct.video_data* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @output_frame_download_frame_name, align 4
  %55 = call i32 @profile_end(i32 %54)
  br label %56

56:                                               ; preds = %48, %24
  %57 = load i32, i32* @output_frame_gs_flush_name, align 4
  %58 = call i32 @profile_start(i32 %57)
  %59 = call i32 (...) @gs_flush()
  %60 = load i32, i32* @output_frame_gs_flush_name, align 4
  %61 = call i32 @profile_end(i32 %60)
  %62 = call i32 (...) @gs_leave_context()
  %63 = load i32, i32* @output_frame_gs_context_name, align 4
  %64 = call i32 @profile_end(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %72 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %71, i32 0, i32 1
  %73 = call i32 @circlebuf_pop_front(i32* %72, %struct.obs_vframe_info* %10, i32 8)
  %74 = getelementptr inbounds %struct.obs_vframe_info, %struct.obs_vframe_info* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.video_data, %struct.video_data* %8, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @output_frame_output_video_data_name, align 4
  %78 = call i32 @profile_start(i32 %77)
  %79 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %80 = getelementptr inbounds %struct.obs_vframe_info, %struct.obs_vframe_info* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @output_video_data(%struct.obs_core_video* %79, %struct.video_data* %8, i32 %81)
  %83 = load i32, i32* @output_frame_output_video_data_name, align 4
  %84 = call i32 @profile_end(i32 %83)
  br label %85

85:                                               ; preds = %70, %67, %56
  %86 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %87 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @NUM_TEXTURES, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %94 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %85
  ret void
}

declare dso_local i32 @memset(%struct.video_data*, i32, i32) #1

declare dso_local i32 @profile_start(i32) #1

declare dso_local i32 @gs_enter_context(i32) #1

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN(i32, i32) #1

declare dso_local i32 @render_video(%struct.obs_core_video*, i32, i32, i32) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

declare dso_local i32 @profile_end(i32) #1

declare dso_local i32 @download_frame(%struct.obs_core_video*, i32, %struct.video_data*) #1

declare dso_local i32 @gs_flush(...) #1

declare dso_local i32 @gs_leave_context(...) #1

declare dso_local i32 @circlebuf_pop_front(i32*, %struct.obs_vframe_info*, i32) #1

declare dso_local i32 @output_video_data(%struct.obs_core_video*, %struct.video_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
