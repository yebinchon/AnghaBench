; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_enc_audio_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_enc_audio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_convert_info = type { i32, i64, i32 }
%struct.enc_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.audio_convert_info*)* @enc_audio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_audio_info(i8* %0, %struct.audio_convert_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.audio_convert_info*, align 8
  %5 = alloca %struct.enc_encoder*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.audio_convert_info* %1, %struct.audio_convert_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.enc_encoder*
  store %struct.enc_encoder* %7, %struct.enc_encoder** %5, align 8
  %8 = load %struct.enc_encoder*, %struct.enc_encoder** %5, align 8
  %9 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @convert_ffmpeg_sample_format(i32 %12)
  %14 = load %struct.audio_convert_info*, %struct.audio_convert_info** %4, align 8
  %15 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.enc_encoder*, %struct.enc_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.audio_convert_info*, %struct.audio_convert_info** %4, align 8
  %22 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.enc_encoder*, %struct.enc_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @convert_ff_channel_layout(i32 %27)
  %29 = load %struct.audio_convert_info*, %struct.audio_convert_info** %4, align 8
  %30 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @convert_ffmpeg_sample_format(i32) #1

declare dso_local i32 @convert_ff_channel_layout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
