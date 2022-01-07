; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_raw_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_raw_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32 }
%struct.video_data = type opaque
%struct.video_data.0 = type opaque

@obs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_raw_video(i32* %0, void (i8*, %struct.video_data*)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca void (i8*, %struct.video_data*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obs_core_video*, align 8
  store i32* %0, i32** %4, align 8
  store void (i8*, %struct.video_data*)* %1, void (i8*, %struct.video_data*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.obs_core_video* %9, %struct.obs_core_video** %7, align 8
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %7, align 8
  %11 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %10, i32 0, i32 0
  %12 = call i32 @os_atomic_dec_long(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load void (i8*, %struct.video_data*)*, void (i8*, %struct.video_data*)** %5, align 8
  %15 = bitcast void (i8*, %struct.video_data*)* %14 to void (i8*, %struct.video_data.0*)*
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @video_output_disconnect(i32* %13, void (i8*, %struct.video_data.0*)* %15, i8* %16)
  ret void
}

declare dso_local i32 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @video_output_disconnect(i32*, void (i8*, %struct.video_data.0*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
