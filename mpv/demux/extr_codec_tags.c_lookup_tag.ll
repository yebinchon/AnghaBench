; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_lookup_tag.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_lookup_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCodecTag = type { i32 }

@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @lookup_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_tag(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.AVCodecTag*], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast [3 x %struct.AVCodecTag*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %2
  %10 = call %struct.AVCodecTag* (...) @avformat_get_riff_video_tags()
  %11 = getelementptr inbounds [3 x %struct.AVCodecTag*], [3 x %struct.AVCodecTag*]* %5, i64 0, i64 0
  store %struct.AVCodecTag* %10, %struct.AVCodecTag** %11, align 16
  br label %15

12:                                               ; preds = %2
  %13 = call %struct.AVCodecTag* (...) @avformat_get_riff_audio_tags()
  %14 = getelementptr inbounds [3 x %struct.AVCodecTag*], [3 x %struct.AVCodecTag*]* %5, i64 0, i64 0
  store %struct.AVCodecTag* %13, %struct.AVCodecTag** %14, align 16
  br label %15

15:                                               ; preds = %2, %12, %9
  %16 = getelementptr inbounds [3 x %struct.AVCodecTag*], [3 x %struct.AVCodecTag*]* %5, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @av_codec_get_id(%struct.AVCodecTag** %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @mp_codec_from_av_codec_id(i32 %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i8* [ null, %22 ], [ %25, %23 ]
  ret i8* %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.AVCodecTag* @avformat_get_riff_video_tags(...) #2

declare dso_local %struct.AVCodecTag* @avformat_get_riff_audio_tags(...) #2

declare dso_local i32 @av_codec_get_id(%struct.AVCodecTag**, i32) #2

declare dso_local i8* @mp_codec_from_av_codec_id(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
