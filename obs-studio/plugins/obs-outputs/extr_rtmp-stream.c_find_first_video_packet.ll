; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_find_first_video_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_find_first_video_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.encoder_packet = type { i64, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, %struct.encoder_packet*)* @find_first_video_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_first_video_packet(%struct.rtmp_stream* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtmp_stream*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  %9 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %10 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 16
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %21 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 %22, 16
  %24 = call %struct.encoder_packet* @circlebuf_data(%struct.TYPE_2__* %21, i64 %23)
  store %struct.encoder_packet* %24, %struct.encoder_packet** %8, align 8
  %25 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %26 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %32 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %38 = bitcast %struct.encoder_packet* %36 to i8*
  %39 = bitcast %struct.encoder_packet* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %30, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %15

44:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.encoder_packet* @circlebuf_data(%struct.TYPE_2__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
