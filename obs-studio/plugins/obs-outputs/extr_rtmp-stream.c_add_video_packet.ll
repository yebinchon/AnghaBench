; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_add_video_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_add_video_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, i32, i32 }
%struct.encoder_packet = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, %struct.encoder_packet*)* @add_video_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_video_packet(%struct.rtmp_stream* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtmp_stream*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  %6 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %7 = call i32 @check_to_drop_frames(%struct.rtmp_stream* %6, i32 0)
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %9 = call i32 @check_to_drop_frames(%struct.rtmp_stream* %8, i32 1)
  %10 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %11 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %14 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %24 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %27 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %30 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %32 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %33 = call i32 @add_packet(%struct.rtmp_stream* %31, %struct.encoder_packet* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @check_to_drop_frames(%struct.rtmp_stream*, i32) #1

declare dso_local i32 @add_packet(%struct.rtmp_stream*, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
