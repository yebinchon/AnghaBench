; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64, i32 }
%struct.rtmp_stream = type { i32, i32, i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @rtmp_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_stream_data(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.rtmp_stream*, align 8
  %6 = alloca %struct.encoder_packet, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %9, %struct.rtmp_stream** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %11 = call i64 @disconnected(%struct.rtmp_stream* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %15 = call i32 @active(%struct.rtmp_stream* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  br label %90

18:                                               ; preds = %13
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %20 = icmp ne %struct.encoder_packet* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %23 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %22, i32 0, i32 4
  %24 = call i32 @os_atomic_set_bool(i32* %23, i32 1)
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %26 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @os_sem_post(i32 %27)
  br label %90

29:                                               ; preds = %18
  %30 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %31 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %37 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %43 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_ms_time(%struct.encoder_packet* %41, i32 %44)
  %46 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %47 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %49 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %52 = call i32 @obs_parse_avc_packet(%struct.encoder_packet* %6, %struct.encoder_packet* %51)
  br label %56

53:                                               ; preds = %29
  %54 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %55 = call i32 @obs_encoder_packet_ref(%struct.encoder_packet* %6, %struct.encoder_packet* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %58 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %57, i32 0, i32 2
  %59 = call i32 @pthread_mutex_lock(i32* %58)
  %60 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %61 = call i64 @disconnected(%struct.rtmp_stream* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %56
  %64 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %65 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %71 = call i32 @add_video_packet(%struct.rtmp_stream* %70, %struct.encoder_packet* %6)
  br label %75

72:                                               ; preds = %63
  %73 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %74 = call i32 @add_packet(%struct.rtmp_stream* %73, %struct.encoder_packet* %6)
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ]
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %56
  %78 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %79 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %78, i32 0, i32 2
  %80 = call i32 @pthread_mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %85 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @os_sem_post(i32 %86)
  br label %90

88:                                               ; preds = %77
  %89 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %6)
  br label %90

90:                                               ; preds = %17, %21, %88, %83
  ret void
}

declare dso_local i64 @disconnected(%struct.rtmp_stream*) #1

declare dso_local i32 @active(%struct.rtmp_stream*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @get_ms_time(%struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_parse_avc_packet(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_ref(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_video_packet(%struct.rtmp_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @add_packet(%struct.rtmp_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
