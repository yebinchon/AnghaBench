; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_video_header.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_video_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32* }
%struct.encoder_packet = type { i32, i32, i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*)* @send_video_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_video_header(%struct.rtmp_stream* %0) #0 {
  %2 = alloca %struct.rtmp_stream*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.encoder_packet, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %2, align 8
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %9 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @obs_output_get_video_encoder(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 4
  %18 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @obs_encoder_get_extra_data(i32* %19, i32** %5, i64* %6)
  %21 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 2
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @obs_parse_avc_header(i32* %21, i32* %22, i64 %23)
  %25 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %7, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %27 = call i64 @send_packet(%struct.rtmp_stream* %26, %struct.encoder_packet* %7, i32 1, i32 0)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32* @obs_output_get_video_encoder(i32*) #1

declare dso_local i32 @obs_encoder_get_extra_data(i32*, i32**, i64*) #1

declare dso_local i32 @obs_parse_avc_header(i32*, i32*, i64) #1

declare dso_local i64 @send_packet(%struct.rtmp_stream*, %struct.encoder_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
