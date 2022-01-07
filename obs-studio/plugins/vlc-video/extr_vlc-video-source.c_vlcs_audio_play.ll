; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_audio_play.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_audio_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64*, i32, i32 }

@time_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i64)* @vlcs_audio_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlcs_audio_play(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_source*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vlc_source*
  store %struct.vlc_source* %12, %struct.vlc_source** %9, align 8
  %13 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %14 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %18 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @get_audio_size(i32 %16, i32 %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %24 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %4
  %29 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %30 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @brealloc(i8* %35, i64 %36)
  %38 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %39 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %37, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %45 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %28, %4
  %47 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %48 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = mul i64 %57, 1000
  %59 = load i64, i64* @time_start, align 8
  %60 = sub i64 %58, %59
  %61 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %62 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %66 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %69 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vlc_source*, %struct.vlc_source** %9, align 8
  %72 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %71, i32 0, i32 1
  %73 = call i32 @obs_source_output_audio(i32 %70, %struct.TYPE_2__* %72)
  ret void
}

declare dso_local i64 @get_audio_size(i32, i32, i32) #1

declare dso_local i64 @brealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @obs_source_output_audio(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
