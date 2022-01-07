; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_close_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_close_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@AV_CODEC_ID_A64_MULTI = common dso_local global i64 0, align 8
@AV_CODEC_ID_A64_MULTI5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_data*)* @close_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_video(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca %struct.ffmpeg_data*, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %2, align 8
  %3 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %4 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @avcodec_close(i32 %7)
  %9 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @av_frame_unref(i32 %11)
  %13 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_CODEC_ID_A64_MULTI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_CODEC_ID_A64_MULTI5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %1
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %2, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %30, i32 0, i32 0
  %32 = call i32 @av_frame_free(i32* %31)
  br label %33

33:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @avcodec_close(i32) #1

declare dso_local i32 @av_frame_unref(i32) #1

declare dso_local i32 @av_frame_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
