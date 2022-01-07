; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, i64 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stop_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_video() #0 {
  %1 = alloca %struct.obs_core_video*, align 8
  %2 = alloca i8*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store %struct.obs_core_video* %4, %struct.obs_core_video** %1, align 8
  %5 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %6 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %0
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %11 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @video_output_stop(i64 %12)
  %14 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %15 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %20 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pthread_join(i32 %21, i8** %2)
  %23 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %24 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %18, %9
  br label %26

26:                                               ; preds = %25, %0
  ret void
}

declare dso_local i32 @video_output_stop(i64) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
