; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_new_stream.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_new_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't find encoder '%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't create stream for encoder '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*, %struct.TYPE_5__**, i32**, i32, i8*)* @new_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_stream(%struct.ffmpeg_data* %0, %struct.TYPE_5__** %1, i32** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ffmpeg_data*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %7, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load i8*, i8** %11, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %11, align 8
  %21 = call i32* @avcodec_find_encoder_by_name(i8* %20)
  br label %25

22:                                               ; preds = %14, %5
  %23 = load i32, i32* %10, align 4
  %24 = call i32* @avcodec_find_encoder(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32* [ %21, %19 ], [ %24, %22 ]
  %27 = load i32**, i32*** %9, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32**, i32*** %9, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @LOG_WARNING, align 4
  %33 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @avcodec_get_name(i32 %34)
  %36 = call i32 @ffmpeg_log_error(i32 %32, %struct.ffmpeg_data* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %6, align 4
  br label %64

37:                                               ; preds = %25
  %38 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %7, align 8
  %39 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.TYPE_5__* @avformat_new_stream(%struct.TYPE_6__* %40, i32* %42)
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @LOG_WARNING, align 4
  %50 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @avcodec_get_name(i32 %51)
  %53 = call i32 @ffmpeg_log_error(i32 %49, %struct.ffmpeg_data* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 0, i32* %6, align 4
  br label %64

54:                                               ; preds = %37
  %55 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %7, align 8
  %56 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %54, %48, %31
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32* @avcodec_find_encoder_by_name(i8*) #1

declare dso_local i32* @avcodec_find_encoder(i32) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.ffmpeg_data*, i8*, i32) #1

declare dso_local i32 @avcodec_get_name(i32) #1

declare dso_local %struct.TYPE_5__* @avformat_new_stream(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
