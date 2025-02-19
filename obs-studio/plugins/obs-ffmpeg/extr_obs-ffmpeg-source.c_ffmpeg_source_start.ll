; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_source*)* @ffmpeg_source_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_source_start(%struct.ffmpeg_source* %0) #0 {
  %2 = alloca %struct.ffmpeg_source*, align 8
  store %struct.ffmpeg_source* %0, %struct.ffmpeg_source** %2, align 8
  %3 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %4 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %9 = call i32 @ffmpeg_source_open(%struct.ffmpeg_source* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %16, i32 0, i32 3
  %18 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mp_media_play(i32* %17, i32 %20)
  %22 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %28 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @obs_source_show_preloaded_video(i32 %29)
  br label %31

31:                                               ; preds = %26, %15
  br label %32

32:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @ffmpeg_source_open(%struct.ffmpeg_source*) #1

declare dso_local i32 @mp_media_play(i32*, i32) #1

declare dso_local i32 @obs_source_show_preloaded_video(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
