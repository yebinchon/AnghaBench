; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_open.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }
%struct.mp_media_info = type { i32, i32, i32, i32, i32, i32, i64*, i32, i32, i32, i32, %struct.ffmpeg_source* }

@media_stopped = common dso_local global i32 0, align 4
@get_audio = common dso_local global i32 0, align 4
@preload_frame = common dso_local global i32 0, align 4
@get_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_source*)* @ffmpeg_source_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_source_open(%struct.ffmpeg_source* %0) #0 {
  %2 = alloca %struct.ffmpeg_source*, align 8
  %3 = alloca %struct.mp_media_info, align 8
  store %struct.ffmpeg_source* %0, %struct.ffmpeg_source** %2, align 8
  %4 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %5 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %4, i32 0, i32 9
  %6 = load i64*, i64** %5, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %69

8:                                                ; preds = %1
  %9 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %9, i32 0, i32 9
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 0
  %16 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 1024
  %20 = mul nsw i32 %19, 1024
  store i32 %20, i32* %15, align 8
  %21 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 1
  %22 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %14
  %27 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %28 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %14
  %32 = phi i1 [ true, %14 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %21, align 4
  %34 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 2
  %35 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 8
  %38 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 3
  %39 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 4
  %43 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 5
  %47 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %48 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 6
  %51 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %52 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %51, i32 0, i32 9
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %50, align 8
  %54 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 7
  %55 = load i32, i32* @media_stopped, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 8
  %57 = load i32, i32* @get_audio, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 9
  %59 = load i32, i32* @preload_frame, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 10
  %61 = load i32, i32* @get_frame, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mp_media_info, %struct.mp_media_info* %3, i32 0, i32 11
  %63 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  store %struct.ffmpeg_source* %63, %struct.ffmpeg_source** %62, align 8
  %64 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %64, i32 0, i32 1
  %66 = call i32 @mp_media_init(i32* %65, %struct.mp_media_info* %3)
  %67 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %2, align 8
  %68 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %31, %8, %1
  ret void
}

declare dso_local i32 @mp_media_init(i32*, %struct.mp_media_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
