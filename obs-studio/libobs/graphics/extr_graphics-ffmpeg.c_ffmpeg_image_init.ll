; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-ffmpeg.c_ffmpeg_image_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_image = type { i8*, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to open file '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not find stream info for file '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_image*, i8*)* @ffmpeg_image_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_image_init(%struct.ffmpeg_image* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ffmpeg_image*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ffmpeg_image* %0, %struct.ffmpeg_image** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %81

14:                                               ; preds = %9
  %15 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %16 = call i32 @memset(%struct.ffmpeg_image* %15, i32 0, i32 40)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %21 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 8
  %22 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %22, i32 0, i32 6
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @avformat_open_input(i32* %23, i8* %24, i32* null, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @av_err2str(i32 %33)
  %35 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %34)
  store i32 0, i32* %3, align 4
  br label %81

36:                                               ; preds = %14
  %37 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %38 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @avformat_find_stream_info(i32 %39, i32* null)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* @LOG_WARNING, align 4
  %45 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %46 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @av_err2str(i32 %48)
  %50 = call i32 @blog(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %49)
  br label %78

51:                                               ; preds = %36
  %52 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %53 = call i32 @ffmpeg_image_open_decoder_context(%struct.ffmpeg_image* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %78

56:                                               ; preds = %51
  %57 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %58 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %63 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %70 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %72 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %77 = getelementptr inbounds %struct.ffmpeg_image, %struct.ffmpeg_image* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  store i32 1, i32* %3, align 4
  br label %81

78:                                               ; preds = %55, %43
  %79 = load %struct.ffmpeg_image*, %struct.ffmpeg_image** %4, align 8
  %80 = call i32 @ffmpeg_image_free(%struct.ffmpeg_image* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %56, %28, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.ffmpeg_image*, i32, i32) #1

declare dso_local i32 @avformat_open_input(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @avformat_find_stream_info(i32, i32*) #1

declare dso_local i32 @ffmpeg_image_open_decoder_context(%struct.ffmpeg_image*) #1

declare dso_local i32 @ffmpeg_image_free(%struct.ffmpeg_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
