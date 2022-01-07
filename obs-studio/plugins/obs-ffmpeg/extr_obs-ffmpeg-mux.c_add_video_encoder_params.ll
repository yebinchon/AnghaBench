; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_video_encoder_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_video_encoder_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32 }
%struct.dstr = type { i32 }
%struct.video_output_info = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s %d %d %d %d %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, %struct.dstr*, i32*)* @add_video_encoder_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_video_encoder_params(%struct.ffmpeg_muxer* %0, %struct.dstr* %1, i32* %2) #0 {
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.video_output_info*, align 8
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %4, align 8
  store %struct.dstr* %1, %struct.dstr** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @obs_encoder_get_settings(i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @obs_data_get_int(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = call i32* (...) @obs_get_video()
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.video_output_info* @video_output_get_info(i32* %17)
  store %struct.video_output_info* %18, %struct.video_output_info** %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @obs_data_release(i32* %19)
  %21 = load %struct.dstr*, %struct.dstr** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @obs_encoder_get_codec(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @obs_output_get_width(i32 %27)
  %29 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @obs_output_get_height(i32 %31)
  %33 = load %struct.video_output_info*, %struct.video_output_info** %10, align 8
  %34 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.video_output_info*, %struct.video_output_info** %10, align 8
  %38 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dstr_catf(%struct.dstr* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %28, i32 %32, i32 %36, i32 %40)
  ret void
}

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32* @obs_get_video(...) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obs_encoder_get_codec(i32*) #1

declare dso_local i32 @obs_output_get_width(i32) #1

declare dso_local i32 @obs_output_get_height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
