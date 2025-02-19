; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_hotkey.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_hotkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Could not save buffer because encoders paused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32)* @replay_buffer_hotkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_buffer_hotkey(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ffmpeg_muxer*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @UNUSED_PARAMETER(i32 %11)
  %13 = load i32*, i32** %7, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @UNUSED_PARAMETER(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @UNUSED_PARAMETER(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %43

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %23, %struct.ffmpeg_muxer** %9, align 8
  %24 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %9, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %24, i32 0, i32 2
  %26 = call i64 @os_atomic_load_bool(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %9, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @obs_output_get_video_encoder(i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @obs_encoder_paused(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %43

38:                                               ; preds = %28
  %39 = call i64 (...) @os_gettime_ns()
  %40 = sdiv i64 %39, 1000
  %41 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %9, align 8
  %42 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %20, %36, %38, %21
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i64 @obs_encoder_paused(i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i64 @os_gettime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
