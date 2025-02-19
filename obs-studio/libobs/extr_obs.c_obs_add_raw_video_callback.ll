; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_add_raw_video_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_add_raw_video_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32 }
%struct.video_scale_info = type { i32 }
%struct.video_data = type opaque
%struct.video_data.0 = type opaque

@obs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_add_raw_video_callback(%struct.video_scale_info* %0, void (i8*, %struct.video_data*)* %1, i8* %2) #0 {
  %4 = alloca %struct.video_scale_info*, align 8
  %5 = alloca void (i8*, %struct.video_data*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obs_core_video*, align 8
  store %struct.video_scale_info* %0, %struct.video_scale_info** %4, align 8
  store void (i8*, %struct.video_data*)* %1, void (i8*, %struct.video_data*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.obs_core_video* %9, %struct.obs_core_video** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.obs_core_video*, %struct.obs_core_video** %7, align 8
  %15 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %18 = load void (i8*, %struct.video_data*)*, void (i8*, %struct.video_data*)** %5, align 8
  %19 = bitcast void (i8*, %struct.video_data*)* %18 to void (i8*, %struct.video_data.0*)*
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @start_raw_video(i32 %16, %struct.video_scale_info* %17, void (i8*, %struct.video_data.0*)* %19, i8* %20)
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @start_raw_video(i32, %struct.video_scale_info*, void (i8*, %struct.video_data.0*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
