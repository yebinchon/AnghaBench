; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.encoder_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*)* @replay_buffer_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_buffer_clear(%struct.ffmpeg_muxer* %0) #0 {
  %2 = alloca %struct.ffmpeg_muxer*, align 8
  %3 = alloca %struct.encoder_packet, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %6 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %11, i32 0, i32 6
  %13 = call i32 @circlebuf_pop_front(%struct.TYPE_3__* %12, %struct.encoder_packet* %3, i32 4)
  %14 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %3)
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %16, i32 0, i32 6
  %18 = call i32 @circlebuf_free(%struct.TYPE_3__* %17)
  %19 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %28 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_3__*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @circlebuf_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
