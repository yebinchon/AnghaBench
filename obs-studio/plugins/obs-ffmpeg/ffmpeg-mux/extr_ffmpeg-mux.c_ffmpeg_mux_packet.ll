; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_mux = type { i32 }
%struct.ffm_packet_info = type { i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i32*, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_mux*, i32*, %struct.ffm_packet_info*)* @ffmpeg_mux_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_mux_packet(%struct.ffmpeg_mux* %0, i32* %1, %struct.ffm_packet_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ffmpeg_mux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ffm_packet_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  store %struct.ffmpeg_mux* %0, %struct.ffmpeg_mux** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ffm_packet_info* %2, %struct.ffm_packet_info** %7, align 8
  %10 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %5, align 8
  %11 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %7, align 8
  %12 = call i32 @get_index(%struct.ffmpeg_mux* %10, %struct.ffm_packet_info* %11)
  store i32 %12, i32* %8, align 4
  %13 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = call i32 @av_init_packet(%struct.TYPE_4__* %9)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store i32* %19, i32** %20, align 8
  %21 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %7, align 8
  %22 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %5, align 8
  %29 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %7, align 8
  %30 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @rescale_ts(%struct.ffmpeg_mux* %28, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %5, align 8
  %36 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %7, align 8
  %37 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @rescale_ts(%struct.ffmpeg_mux* %35, i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load %struct.ffm_packet_info*, %struct.ffm_packet_info** %7, align 8
  %43 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %17
  %47 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %17
  %50 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %5, align 8
  %51 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @av_interleaved_write_frame(i32 %52, %struct.TYPE_4__* %9)
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @get_index(%struct.ffmpeg_mux*, %struct.ffm_packet_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_init_packet(%struct.TYPE_4__*) #1

declare dso_local i8* @rescale_ts(%struct.ffmpeg_mux*, i32, i32) #1

declare dso_local i64 @av_interleaved_write_frame(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
