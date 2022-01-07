; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_header.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_mux = type { i32*, i32 }
%struct.ffm_packet_info = type { i64, i64, i64 }

@FFM_PACKET_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_mux*, i32*, %struct.ffm_packet_info*)* @ffmpeg_mux_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_mux_header(%struct.ffmpeg_mux* %0, i32* %1, %struct.ffm_packet_info* %2) #0 {
  %4 = alloca %struct.ffmpeg_mux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ffm_packet_info*, align 8
  store %struct.ffmpeg_mux* %0, %struct.ffmpeg_mux** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ffm_packet_info* %2, %struct.ffm_packet_info** %6, align 8
  %7 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %6, align 8
  %8 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FFM_PACKET_VIDEO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %4, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %13, i32 0, i32 1
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %6, align 8
  %17 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @set_header(i32* %14, i32* %15, i64 %18)
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %4, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %6, align 8
  %25 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %6, align 8
  %30 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @set_header(i32* %27, i32* %28, i64 %31)
  br label %33

33:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @set_header(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
