; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_reinit_video_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_reinit_video_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.vo_chain* }
%struct.vo_chain = type { i32 }

@MPV_EVENT_VIDEO_RECONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reinit_video_filters(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.vo_chain*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load %struct.vo_chain*, %struct.vo_chain** %6, align 8
  store %struct.vo_chain* %7, %struct.vo_chain** %4, align 8
  %8 = load %struct.vo_chain*, %struct.vo_chain** %4, align 8
  %9 = icmp ne %struct.vo_chain* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = call i32 @recreate_video_filters(%struct.MPContext* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %22

16:                                               ; preds = %11
  %17 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %18 = call i32 @mp_force_video_refresh(%struct.MPContext* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = load i32, i32* @MPV_EVENT_VIDEO_RECONFIG, align 4
  %21 = call i32 @mp_notify(%struct.MPContext* %19, i32 %20, i32* null)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @recreate_video_filters(%struct.MPContext*) #1

declare dso_local i32 @mp_force_video_refresh(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
