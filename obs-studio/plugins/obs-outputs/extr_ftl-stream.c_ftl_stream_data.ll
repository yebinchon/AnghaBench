; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64 }
%struct.ftl_stream = type { i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @ftl_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftl_stream_data(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.ftl_stream*, align 8
  %6 = alloca %struct.encoder_packet, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ftl_stream*
  store %struct.ftl_stream* %9, %struct.ftl_stream** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %11 = call i64 @disconnected(%struct.ftl_stream* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %15 = call i32 @active(%struct.ftl_stream* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %2
  br label %75

18:                                               ; preds = %13
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %20 = icmp ne %struct.encoder_packet* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %23 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %22, i32 0, i32 2
  %24 = call i32 @os_atomic_set_bool(i32* %23, i32 1)
  %25 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %26 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @os_sem_post(i32 %27)
  br label %75

29:                                               ; preds = %18
  %30 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %31 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %37 = call i32 @obs_parse_avc_packet(%struct.encoder_packet* %6, %struct.encoder_packet* %36)
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %40 = call i32 @obs_encoder_packet_ref(%struct.encoder_packet* %6, %struct.encoder_packet* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %43 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_lock(i32* %43)
  %45 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %46 = call i64 @disconnected(%struct.ftl_stream* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %50 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %56 = call i32 @add_video_packet(%struct.ftl_stream* %55, %struct.encoder_packet* %6)
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %59 = call i32 @add_packet(%struct.ftl_stream* %58, %struct.encoder_packet* %6)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %41
  %63 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %64 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.ftl_stream*, %struct.ftl_stream** %5, align 8
  %70 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @os_sem_post(i32 %71)
  br label %75

73:                                               ; preds = %62
  %74 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %6)
  br label %75

75:                                               ; preds = %17, %21, %73, %68
  ret void
}

declare dso_local i64 @disconnected(%struct.ftl_stream*) #1

declare dso_local i32 @active(%struct.ftl_stream*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @obs_parse_avc_packet(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_ref(%struct.encoder_packet*, %struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_video_packet(%struct.ftl_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @add_packet(%struct.ftl_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
