; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_init_streams.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_init_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*)* @init_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_streams(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_data*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %3, align 8
  %6 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %18 = call i32 @create_video_stream(%struct.ffmpeg_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %61

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %35 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @calloc(i32 1, i32 %39)
  %41 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %42 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %56, %33
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %46 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @create_audio_stream(%struct.ffmpeg_data* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %61

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %43

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %28, %22
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %54, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @create_video_stream(%struct.ffmpeg_data*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @create_audio_stream(%struct.ffmpeg_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
