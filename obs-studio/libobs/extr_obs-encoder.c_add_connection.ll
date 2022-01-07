; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_add_connection.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.audio_convert_info = type { i32 }
%struct.video_scale_info = type { i32 }

@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@receive_audio = common dso_local global i32 0, align 4
@receive_video = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*)* @add_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_connection(%struct.obs_encoder* %0) #0 {
  %2 = alloca %struct.obs_encoder*, align 8
  %3 = alloca %struct.audio_convert_info, align 4
  %4 = alloca %struct.video_scale_info, align 4
  store %struct.obs_encoder* %0, %struct.obs_encoder** %2, align 8
  %5 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %6 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = bitcast %struct.audio_convert_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %14 = call i32 @get_audio_info(%struct.obs_encoder* %13, %struct.audio_convert_info* %3)
  %15 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %19 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @receive_audio, align 4
  %22 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %23 = call i32 @audio_output_connect(i32 %17, i32 %20, %struct.audio_convert_info* %3, i32 %21, %struct.obs_encoder* %22)
  br label %42

24:                                               ; preds = %1
  %25 = bitcast %struct.video_scale_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %27 = call i32 @get_video_info(%struct.obs_encoder* %26, %struct.video_scale_info* %4)
  %28 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %29 = call i64 @gpu_encode_available(%struct.obs_encoder* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %33 = call i32 @start_gpu_encode(%struct.obs_encoder* %32)
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %36 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @receive_video, align 4
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %40 = call i32 @start_raw_video(i32 %37, %struct.video_scale_info* %4, i32 %38, %struct.obs_encoder* %39)
  br label %41

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %41, %11
  %43 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %44 = call i32 @set_encoder_active(%struct.obs_encoder* %43, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_audio_info(%struct.obs_encoder*, %struct.audio_convert_info*) #2

declare dso_local i32 @audio_output_connect(i32, i32, %struct.audio_convert_info*, i32, %struct.obs_encoder*) #2

declare dso_local i32 @get_video_info(%struct.obs_encoder*, %struct.video_scale_info*) #2

declare dso_local i64 @gpu_encode_available(%struct.obs_encoder*) #2

declare dso_local i32 @start_gpu_encode(%struct.obs_encoder*) #2

declare dso_local i32 @start_raw_video(i32, %struct.video_scale_info*, i32, %struct.obs_encoder*) #2

declare dso_local i32 @set_encoder_active(%struct.obs_encoder*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
