; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_free_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_free_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.encoder_packet = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Freeing %d remaining packets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_stream*)* @free_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_packets(%struct.rtmp_stream* %0) #0 {
  %2 = alloca %struct.rtmp_stream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.encoder_packet, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %2, align 8
  %5 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %6 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %9 = call i64 @num_buffered_packets(%struct.rtmp_stream* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  br label %17

17:                                               ; preds = %23, %16
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %25 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %24, i32 0, i32 1
  %26 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %25, %struct.encoder_packet* %4, i32 4)
  %27 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %4)
  br label %17

28:                                               ; preds = %17
  %29 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %30 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @num_buffered_packets(%struct.rtmp_stream*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
