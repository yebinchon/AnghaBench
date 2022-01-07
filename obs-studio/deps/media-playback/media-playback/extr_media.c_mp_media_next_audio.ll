; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (i32, %struct.obs_source_audio*)*, i64, i64, i64, %struct.mp_decode }
%struct.obs_source_audio = type { i32, i64, i64, i32, i32, i32*, i32 }
%struct.mp_decode = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@base_sys_ts = common dso_local global i64 0, align 8
@AUDIO_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mp_media_next_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_media_next_audio(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.mp_decode*, align 8
  %4 = alloca %struct.obs_source_audio, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  store %struct.mp_decode* %8, %struct.mp_decode** %3, align 8
  %9 = bitcast %struct.obs_source_audio* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = load %struct.mp_decode*, %struct.mp_decode** %3, align 8
  %11 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.mp_decode*, %struct.mp_decode** %3, align 8
  %15 = call i32 @mp_media_can_play_frame(%struct.TYPE_5__* %13, %struct.mp_decode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.mp_decode*, %struct.mp_decode** %3, align 8
  %20 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32 (i32, %struct.obs_source_audio*)*, i32 (i32, %struct.obs_source_audio*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.obs_source_audio*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %100

26:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @MAX_AV_PLANES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = sdiv i32 %52, 100
  %54 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @convert_speaker_layout(i32 %57)
  %59 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @convert_sample_format(i32 %62)
  %64 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mp_decode*, %struct.mp_decode** %3, align 8
  %73 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* @base_sys_ts, align 8
  %85 = sub nsw i64 %83, %84
  %86 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 2
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AUDIO_FORMAT_UNKNOWN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %45
  br label %100

92:                                               ; preds = %45
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32 (i32, %struct.obs_source_audio*)*, i32 (i32, %struct.obs_source_audio*)** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %95(i32 %98, %struct.obs_source_audio* %4)
  br label %100

100:                                              ; preds = %92, %91, %25, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_media_can_play_frame(%struct.TYPE_5__*, %struct.mp_decode*) #2

declare dso_local i32 @convert_speaker_layout(i32) #2

declare dso_local i64 @convert_sample_format(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
