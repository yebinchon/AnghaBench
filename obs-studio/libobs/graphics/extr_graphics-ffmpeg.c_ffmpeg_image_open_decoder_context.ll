; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_open_decoder_context.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_open_decoder_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_image = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__** }

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't find video stream in file '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to find decoder for file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to open video codec for file '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_image*)* @ffmpeg_image_open_decoder_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_image_open_decoder_context(%struct.ffmpeg_image* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_image*, align 8
  %4 = alloca i32, align 4
  store %struct.ffmpeg_image* %0, %struct.ffmpeg_image** %3, align 8
  %5 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %6 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %5, i32 0, i32 5
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %9 = call i32 @av_find_best_stream(%struct.TYPE_6__* %7, i32 %8, i32 -1, i32 1, i32* null, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_WARNING, align 4
  %14 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @av_err2str(i32 %17)
  %19 = call i32 (i32, i8*, i32, ...) @blog(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  store i32 0, i32* %2, align 4
  br label %79

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %34 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %33, i32 0, i32 4
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %41 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %40, i32 0, i32 3
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %43 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @avcodec_find_decoder(i32 %46)
  %48 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %49 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %51 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %20
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %57 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @blog(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %79

60:                                               ; preds = %20
  %61 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %62 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @avcodec_open2(%struct.TYPE_5__* %63, i32 %66, i32* null)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load i32, i32* @LOG_WARNING, align 4
  %72 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %3, align 8
  %73 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @av_err2str(i32 %75)
  %77 = call i32 (i32, i8*, i32, ...) @blog(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76)
  store i32 0, i32* %2, align 4
  br label %79

78:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %70, %54, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @av_find_best_stream(%struct.TYPE_6__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @blog(i32, i8*, i32, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @avcodec_find_decoder(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
