; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_init_sizes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-audio-encoders.c_init_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_encoder = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.audio_output_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc_encoder*, i32*)* @init_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sizes(%struct.enc_encoder* %0, i32* %1) #0 {
  %3 = alloca %struct.enc_encoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.audio_output_info*, align 8
  %6 = alloca i32, align 4
  store %struct.enc_encoder* %0, %struct.enc_encoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.audio_output_info* @audio_output_get_info(i32* %7)
  store %struct.audio_output_info* %8, %struct.audio_output_info** %5, align 8
  %9 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @convert_ffmpeg_sample_format(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %17 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_audio_planes(i32 %15, i32 %18)
  %20 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %21 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %24 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_audio_size(i32 %22, i32 %25, i32 1)
  %27 = load %struct.enc_encoder*, %struct.enc_encoder** %3, align 8
  %28 = getelementptr inbounds %struct.enc_encoder, %struct.enc_encoder* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local %struct.audio_output_info* @audio_output_get_info(i32*) #1

declare dso_local i32 @convert_ffmpeg_sample_format(i32) #1

declare dso_local i32 @get_audio_planes(i32, i32) #1

declare dso_local i32 @get_audio_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
