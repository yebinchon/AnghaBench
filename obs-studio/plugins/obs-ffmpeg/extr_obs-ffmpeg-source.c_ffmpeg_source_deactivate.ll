; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_deactivate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i32, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffmpeg_source_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_source_deactivate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_source*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %5, %struct.ffmpeg_source** %3, align 8
  %6 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %16, i32 0, i32 2
  %18 = call i32 @mp_media_stop(i32* %17)
  %19 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @obs_source_output_video(i32 %26, i32* null)
  br label %28

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28, %10
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @mp_media_stop(i32*) #1

declare dso_local i32 @obs_source_output_video(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
