; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_mux_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_mux_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to create process pipe\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Could not write headers for file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Wrote replay buffer to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @replay_buffer_mux_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @replay_buffer_mux_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %7, %struct.ffmpeg_muxer** %3, align 8
  %8 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %9 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @start_pipe(%struct.ffmpeg_muxer* %8, i32 %12)
  %14 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %22 = call i32 @send_headers(%struct.ffmpeg_muxer* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %59

30:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %34 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %42, i64 %43
  store %struct.encoder_packet* %44, %struct.encoder_packet** %5, align 8
  %45 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %46 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %47 = call i32 @write_packet(%struct.ffmpeg_muxer* %45, %struct.encoder_packet* %46)
  %48 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %49 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %55 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %24, %18
  %60 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %61 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @os_process_pipe_destroy(i32* %62)
  %64 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %67 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %66, i32 0, i32 1
  %68 = bitcast %struct.TYPE_4__* %67 to { i64, %struct.encoder_packet* }*
  %69 = getelementptr inbounds { i64, %struct.encoder_packet* }, { i64, %struct.encoder_packet* }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds { i64, %struct.encoder_packet* }, { i64, %struct.encoder_packet* }* %68, i32 0, i32 1
  %72 = load %struct.encoder_packet*, %struct.encoder_packet** %71, align 8
  %73 = call i32 @da_free(i64 %70, %struct.encoder_packet* %72)
  %74 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %75 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %74, i32 0, i32 0
  %76 = call i32 @os_atomic_set_bool(i32* %75, i32 0)
  ret i8* null
}

declare dso_local i32 @start_pipe(%struct.ffmpeg_muxer*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @send_headers(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @write_packet(%struct.ffmpeg_muxer*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @os_process_pipe_destroy(i32*) #1

declare dso_local i32 @da_free(i64, %struct.encoder_packet*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
