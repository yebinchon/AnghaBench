; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64, i64, i64, i64, i32 }
%struct.ffmpeg_muxer = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OBS_OUTPUT_ENCODE_ERROR = common dso_local global i32 0, align 4
@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @replay_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_buffer_data(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.ffmpeg_muxer*, align 8
  %6 = alloca %struct.encoder_packet, align 8
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %8, %struct.ffmpeg_muxer** %5, align 8
  %9 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %10 = call i32 @active(%struct.ffmpeg_muxer* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %115

13:                                               ; preds = %2
  %14 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %15 = icmp ne %struct.encoder_packet* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %18 = load i32, i32* @OBS_OUTPUT_ENCODE_ERROR, align 4
  %19 = call i32 @deactivate_replay_buffer(%struct.ffmpeg_muxer* %17, i32 %18)
  br label %115

20:                                               ; preds = %13
  %21 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %22 = call i64 @stopping(%struct.ffmpeg_muxer* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %26 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %34 = call i32 @deactivate_replay_buffer(%struct.ffmpeg_muxer* %33, i32 0)
  br label %115

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %38 = call i32 @obs_encoder_packet_ref(%struct.encoder_packet* %6, %struct.encoder_packet* %37)
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %40 = call i32 @replay_buffer_purge(%struct.ffmpeg_muxer* %39, %struct.encoder_packet* %6)
  %41 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %42 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %6, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %50 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %36
  %52 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %6, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %55 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %61 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %60, i32 0, i32 6
  %62 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %63 = call i32 @circlebuf_push_back(%struct.TYPE_2__* %61, %struct.encoder_packet* %62, i32 40)
  %64 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %65 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %51
  %70 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %71 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %76 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %69, %51
  %80 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %81 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %79
  %85 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %86 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %89 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %84
  %93 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %94 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %93, i32 0, i32 4
  %95 = call i64 @os_atomic_load_bool(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %115

98:                                               ; preds = %92
  %99 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %105 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pthread_join(i32 %106, i32* null)
  %108 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %109 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %112 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %114 = call i32 @replay_buffer_save(%struct.ffmpeg_muxer* %113)
  br label %115

115:                                              ; preds = %12, %16, %32, %97, %110, %84, %79
  ret void
}

declare dso_local i32 @active(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @deactivate_replay_buffer(%struct.ffmpeg_muxer*, i32) #1

declare dso_local i64 @stopping(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @obs_encoder_packet_ref(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @replay_buffer_purge(%struct.ffmpeg_muxer*, %struct.encoder_packet*) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_2__*, %struct.encoder_packet*, i32) #1

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @replay_buffer_save(%struct.ffmpeg_muxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
