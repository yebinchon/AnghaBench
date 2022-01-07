; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_ffmpeg_source_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { %struct.ffmpeg_source*, %struct.ffmpeg_source*, %struct.ffmpeg_source*, i32*, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffmpeg_source_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_source_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_source*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %5, %struct.ffmpeg_source** %3, align 8
  %6 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @obs_hotkey_unregister(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %21, i32 0, i32 4
  %23 = call i32 @mp_media_free(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sws_freeContext(i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %35, i32 0, i32 2
  %37 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %36, align 8
  %38 = call i32 @bfree(%struct.ffmpeg_source* %37)
  %39 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %39, i32 0, i32 1
  %41 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %40, align 8
  %42 = call i32 @bfree(%struct.ffmpeg_source* %41)
  %43 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %43, i32 0, i32 0
  %45 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %44, align 8
  %46 = call i32 @bfree(%struct.ffmpeg_source* %45)
  %47 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %3, align 8
  %48 = call i32 @bfree(%struct.ffmpeg_source* %47)
  ret void
}

declare dso_local i32 @obs_hotkey_unregister(i64) #1

declare dso_local i32 @mp_media_free(i32*) #1

declare dso_local i32 @sws_freeContext(i32*) #1

declare dso_local i32 @bfree(%struct.ffmpeg_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
