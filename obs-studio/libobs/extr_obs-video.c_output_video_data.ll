; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_output_video_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_output_video_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32, i64 }
%struct.video_data = type { i32 }
%struct.video_output_info = type { i32 }
%struct.video_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, %struct.video_data*, i32)* @output_video_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_video_data(%struct.obs_core_video* %0, %struct.video_data* %1, i32 %2) #0 {
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca %struct.video_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_output_info*, align 8
  %8 = alloca %struct.video_frame, align 4
  %9 = alloca i32, align 4
  store %struct.obs_core_video* %0, %struct.obs_core_video** %4, align 8
  store %struct.video_data* %1, %struct.video_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %11 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.video_output_info* @video_output_get_info(i32 %12)
  store %struct.video_output_info* %13, %struct.video_output_info** %7, align 8
  %14 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %15 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.video_data*, %struct.video_data** %5, align 8
  %19 = getelementptr inbounds %struct.video_data, %struct.video_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @video_output_lock_frame(i32 %16, %struct.video_frame* %8, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %26 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %31 = load %struct.video_data*, %struct.video_data** %5, align 8
  %32 = load %struct.video_output_info*, %struct.video_output_info** %7, align 8
  %33 = call i32 @set_gpu_converted_data(%struct.obs_core_video* %30, %struct.video_frame* %8, %struct.video_data* %31, %struct.video_output_info* %32)
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.video_data*, %struct.video_data** %5, align 8
  %36 = load %struct.video_output_info*, %struct.video_output_info** %7, align 8
  %37 = call i32 @copy_rgbx_frame(%struct.video_frame* %8, %struct.video_data* %35, %struct.video_output_info* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %40 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @video_output_unlock_frame(i32 %41)
  br label %43

43:                                               ; preds = %38, %3
  ret void
}

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

declare dso_local i32 @video_output_lock_frame(i32, %struct.video_frame*, i32, i32) #1

declare dso_local i32 @set_gpu_converted_data(%struct.obs_core_video*, %struct.video_frame*, %struct.video_data*, %struct.video_output_info*) #1

declare dso_local i32 @copy_rgbx_frame(%struct.video_frame*, %struct.video_data*, %struct.video_output_info*) #1

declare dso_local i32 @video_output_unlock_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
