; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.mp_decode = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MP: av_read_frame failed: %s (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @mp_media_next_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_media_next_packet(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_decode*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = call i32 @av_init_packet(%struct.TYPE_13__* %5)
  %9 = bitcast %struct.TYPE_13__* %4 to i8*
  %10 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @av_read_frame(i32 %13, %struct.TYPE_13__* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AVERROR_EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @av_err2str(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call %struct.mp_decode* @get_packet_decoder(%struct.TYPE_12__* %30, %struct.TYPE_13__* %5)
  store %struct.mp_decode* %31, %struct.mp_decode** %7, align 8
  %32 = load %struct.mp_decode*, %struct.mp_decode** %7, align 8
  %33 = icmp ne %struct.mp_decode* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @av_packet_ref(%struct.TYPE_13__* %4, %struct.TYPE_13__* %5)
  %40 = load %struct.mp_decode*, %struct.mp_decode** %7, align 8
  %41 = call i32 @mp_decode_push_packet(%struct.mp_decode* %40, %struct.TYPE_13__* %4)
  br label %42

42:                                               ; preds = %38, %34, %29
  %43 = call i32 @av_packet_unref(%struct.TYPE_13__* %5)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @av_init_packet(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_read_frame(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @blog(i32, i8*, i32, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local %struct.mp_decode* @get_packet_decoder(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_decode_push_packet(%struct.mp_decode*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
