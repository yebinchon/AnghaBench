; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_send_video_headers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_send_video_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32 }
%struct.encoder_packet = type { i32, i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_muxer*)* @send_video_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_video_headers(%struct.ffmpeg_muxer* %0) #0 {
  %2 = alloca %struct.ffmpeg_muxer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.encoder_packet, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %2, align 8
  %5 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %6 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @obs_output_get_video_encoder(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 3
  %13 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 1
  %17 = call i32 @obs_encoder_get_extra_data(i32* %14, i32* %15, i32* %16)
  %18 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %19 = call i32 @write_packet(%struct.ffmpeg_muxer* %18, %struct.encoder_packet* %4)
  ret i32 %19
}

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32 @obs_encoder_get_extra_data(i32*, i32*, i32*) #1

declare dso_local i32 @write_packet(%struct.ffmpeg_muxer*, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
