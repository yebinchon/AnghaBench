; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_purge_front.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_purge_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.encoder_packet = type { i64, i64, i64, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_muxer*)* @purge_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purge_front(%struct.ffmpeg_muxer* %0) #0 {
  %2 = alloca %struct.ffmpeg_muxer*, align 8
  %3 = alloca %struct.encoder_packet, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.encoder_packet, align 8
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %2, align 8
  %6 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %6, i32 0, i32 2
  %8 = call i32 @circlebuf_pop_front(%struct.TYPE_3__* %7, %struct.encoder_packet* %3, i32 32)
  %9 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %3, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %35 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %37 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %52

38:                                               ; preds = %27
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %39, i32 0, i32 2
  %41 = call i32 @circlebuf_peek_front(%struct.TYPE_3__* %40, %struct.encoder_packet* %5, i32 32)
  %42 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %5, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %45 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %3, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %49 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %38, %33
  %53 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %3)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_3__*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @circlebuf_peek_front(%struct.TYPE_3__*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
