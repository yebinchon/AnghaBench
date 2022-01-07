; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_audio_header.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_audio_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32* }
%struct.encoder_packet = type { i32, i32, i32, i32 }

@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, i64, i32*)* @send_audio_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_audio_header(%struct.rtmp_stream* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtmp_stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.encoder_packet, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %13 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @obs_output_get_audio_encoder(i32* %15, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 3
  %22 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 1
  %30 = call i32 @obs_encoder_get_extra_data(i32* %28, i32** %10, i32* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bmemdup(i32* %31, i32 %33)
  %35 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @send_packet(%struct.rtmp_stream* %36, %struct.encoder_packet* %11, i32 1, i64 %37)
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @obs_output_get_audio_encoder(i32*, i64) #1

declare dso_local i32 @obs_encoder_get_extra_data(i32*, i32**, i32*) #1

declare dso_local i32 @bmemdup(i32*, i32) #1

declare dso_local i64 @send_packet(%struct.rtmp_stream*, %struct.encoder_packet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
