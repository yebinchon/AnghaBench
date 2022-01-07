; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i32 }
%struct.encoder_packet = type { i64, i32, i32*, i32, i64, i32, i32 }
%struct.ffm_packet_info = type { i32, i32, i32, i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@FFM_PACKET_VIDEO = common dso_local global i32 0, align 4
@FFM_PACKET_AUDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"os_process_pipe_write for info structure failed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"os_process_pipe_write for packet data failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_muxer*, %struct.encoder_packet*)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.ffmpeg_muxer* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ffm_packet_info, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  %9 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %10 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 0
  %16 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %17 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 1
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %22 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @FFM_PACKET_VIDEO, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @FFM_PACKET_AUDIO, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %24, align 4
  %33 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 3
  %34 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %35 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 4
  %38 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %39 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.ffm_packet_info, %struct.ffm_packet_info* %8, i32 0, i32 5
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %43 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %46 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = bitcast %struct.ffm_packet_info* %8 to i32*
  %49 = call i64 @os_process_pipe_write(i32 %47, i32* %48, i32 24)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 24
  br i1 %51, label %52, label %56

52:                                               ; preds = %31
  %53 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %55 = call i32 @signal_failure(%struct.ffmpeg_muxer* %54)
  store i32 0, i32* %3, align 4
  br label %86

56:                                               ; preds = %31
  %57 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %58 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %61 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %64 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @os_process_pipe_write(i32 %59, i32* %62, i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %69 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %56
  %74 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %76 = call i32 @signal_failure(%struct.ffmpeg_muxer* %75)
  store i32 0, i32* %3, align 4
  br label %86

77:                                               ; preds = %56
  %78 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %79 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %83 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %73, %52
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @os_process_pipe_write(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @signal_failure(%struct.ffmpeg_muxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
