; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DEFAULT_AV_SYNC_TYPE = common dso_local global i32 0, align 4
@AVDISCARD_DEFAULT = common dso_local global i32 0, align 4
@AUDIO_FRAME_QUEUE_SIZE = common dso_local global i32 0, align 4
@VIDEO_FRAME_QUEUE_SIZE = common dso_local global i32 0, align 4
@AUDIO_PACKET_QUEUE_SIZE = common dso_local global i32 0, align 4
@VIDEO_PACKET_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ff_demuxer* @ff_demuxer_init() #0 {
  %1 = alloca %struct.ff_demuxer*, align 8
  %2 = alloca %struct.ff_demuxer*, align 8
  %3 = call i32 (...) @av_register_all()
  %4 = call i32 (...) @avdevice_register_all()
  %5 = call i32 (...) @avfilter_register_all()
  %6 = call i32 (...) @avformat_network_init()
  %7 = call %struct.ff_demuxer* @av_mallocz(i32 28)
  store %struct.ff_demuxer* %7, %struct.ff_demuxer** %2, align 8
  %8 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %9 = icmp eq %struct.ff_demuxer* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store %struct.ff_demuxer* null, %struct.ff_demuxer** %1, align 8
  br label %40

11:                                               ; preds = %0
  %12 = load i32, i32* @DEFAULT_AV_SYNC_TYPE, align 4
  %13 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %14 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @AVDISCARD_DEFAULT, align 4
  %17 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %18 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @AUDIO_FRAME_QUEUE_SIZE, align 4
  %21 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %22 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @VIDEO_FRAME_QUEUE_SIZE, align 4
  %25 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %26 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @AUDIO_PACKET_QUEUE_SIZE, align 4
  %29 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %30 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @VIDEO_PACKET_QUEUE_SIZE, align 4
  %33 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %34 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %37 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  store %struct.ff_demuxer* %39, %struct.ff_demuxer** %1, align 8
  br label %40

40:                                               ; preds = %11, %10
  %41 = load %struct.ff_demuxer*, %struct.ff_demuxer** %1, align 8
  ret %struct.ff_demuxer* %41
}

declare dso_local i32 @av_register_all(...) #1

declare dso_local i32 @avdevice_register_all(...) #1

declare dso_local i32 @avfilter_register_all(...) #1

declare dso_local i32 @avformat_network_init(...) #1

declare dso_local %struct.ff_demuxer* @av_mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
