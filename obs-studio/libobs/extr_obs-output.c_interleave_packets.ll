; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_interleave_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_interleave_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64, i32, i32, i32 }
%struct.obs_output = type { i32, i64, i64, i64 }

@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @interleave_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interleave_packets(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca %struct.encoder_packet, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.obs_output*
  store %struct.obs_output* %9, %struct.obs_output** %5, align 8
  %10 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %11 = call i32 @active(%struct.obs_output* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %136

14:                                               ; preds = %2
  %15 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %16 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %22 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %23 = call i32 @get_track_index(%struct.obs_output* %21, %struct.encoder_packet* %22)
  %24 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %25 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %28 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %31 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %26
  %35 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %36 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %42 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %47 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %48 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @discard_unused_audio_packets(%struct.obs_output* %46, i32 %49)
  %51 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %52 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %51, i32 0, i32 0
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %55 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %60 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %59)
  br label %61

61:                                               ; preds = %58, %45
  br label %136

62:                                               ; preds = %40, %34, %26
  %63 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %64 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %69 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %76 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %81 = bitcast %struct.encoder_packet* %6 to i8*
  %82 = bitcast %struct.encoder_packet* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  br label %86

83:                                               ; preds = %72
  %84 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %85 = call i32 @obs_encoder_packet_create_instance(%struct.encoder_packet* %6, %struct.encoder_packet* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %91 = call i32 @apply_interleaved_packet_offset(%struct.obs_output* %90, %struct.encoder_packet* %6)
  br label %96

92:                                               ; preds = %86
  %93 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %94 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %95 = call i32 @check_received(%struct.obs_output* %93, %struct.encoder_packet* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %98 = call i32 @insert_interleaved_packet(%struct.obs_output* %97, %struct.encoder_packet* %6)
  %99 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %100 = call i32 @set_higher_ts(%struct.obs_output* %99, %struct.encoder_packet* %6)
  %101 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %102 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %96
  %106 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %107 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %115 = call i64 @prune_interleaved_packets(%struct.obs_output* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %119 = call i64 @initialize_interleaved_packets(%struct.obs_output* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %123 = call i32 @resort_interleaved_packets(%struct.obs_output* %122)
  %124 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %125 = call i32 @send_interleaved(%struct.obs_output* %124)
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %113
  br label %131

128:                                              ; preds = %110
  %129 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %130 = call i32 @send_interleaved(%struct.obs_output* %129)
  br label %131

131:                                              ; preds = %128, %127
  br label %132

132:                                              ; preds = %131, %105, %96
  %133 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %134 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %133, i32 0, i32 0
  %135 = call i32 @pthread_mutex_unlock(i32* %134)
  br label %136

136:                                              ; preds = %132, %61, %13
  ret void
}

declare dso_local i32 @active(%struct.obs_output*) #1

declare dso_local i32 @get_track_index(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @discard_unused_audio_packets(%struct.obs_output*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obs_encoder_packet_create_instance(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @apply_interleaved_packet_offset(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i32 @check_received(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i32 @insert_interleaved_packet(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i32 @set_higher_ts(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i64 @prune_interleaved_packets(%struct.obs_output*) #1

declare dso_local i64 @initialize_interleaved_packets(%struct.obs_output*) #1

declare dso_local i32 @resort_interleaved_packets(%struct.obs_output*) #1

declare dso_local i32 @send_interleaved(%struct.obs_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
