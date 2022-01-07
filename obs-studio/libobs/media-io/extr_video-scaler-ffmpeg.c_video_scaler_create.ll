; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-scaler-ffmpeg.c_video_scaler_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-scaler-ffmpeg.c_video_scaler_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_scaler = type { i32, i32 }
%struct.video_scale_info = type { i32, i32, i32, i32, i32 }

@VIDEO_SCALER_FAILED = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@VIDEO_SCALER_BAD_CONVERSION = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"video_scaler_create: Could not create swscale\00", align 1
@FIXED_1_0 = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"video_scaler_create: sws_setColorspaceDetails failed, ignoring\00", align 1
@VIDEO_SCALER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_scaler_create(%struct.video_scaler** %0, %struct.video_scale_info* %1, %struct.video_scale_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_scaler**, align 8
  %7 = alloca %struct.video_scale_info*, align 8
  %8 = alloca %struct.video_scale_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.video_scaler*, align 8
  %18 = alloca i32, align 4
  store %struct.video_scaler** %0, %struct.video_scaler*** %6, align 8
  store %struct.video_scale_info* %1, %struct.video_scale_info** %7, align 8
  store %struct.video_scale_info* %2, %struct.video_scale_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %20 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_ffmpeg_video_format(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.video_scale_info*, %struct.video_scale_info** %7, align 8
  %24 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_ffmpeg_video_format(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @get_ffmpeg_scale_type(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %30 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @get_ffmpeg_coeffs(i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load %struct.video_scale_info*, %struct.video_scale_info** %7, align 8
  %34 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @get_ffmpeg_coeffs(i32 %35)
  store i32* %36, i32** %14, align 8
  %37 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %38 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_ffmpeg_range_type(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.video_scale_info*, %struct.video_scale_info** %7, align 8
  %42 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_ffmpeg_range_type(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.video_scaler**, %struct.video_scaler*** %6, align 8
  %46 = icmp ne %struct.video_scaler** %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* @VIDEO_SCALER_FAILED, align 4
  store i32 %48, i32* %5, align 4
  br label %115

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @VIDEO_SCALER_BAD_CONVERSION, align 4
  store i32 %58, i32* %5, align 4
  br label %115

59:                                               ; preds = %53
  %60 = call %struct.video_scaler* @bzalloc(i32 8)
  store %struct.video_scaler* %60, %struct.video_scaler** %17, align 8
  %61 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %62 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %65 = getelementptr inbounds %struct.video_scaler, %struct.video_scaler* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %67 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.video_scale_info*, %struct.video_scale_info** %8, align 8
  %70 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.video_scale_info*, %struct.video_scale_info** %7, align 8
  %74 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.video_scale_info*, %struct.video_scale_info** %7, align 8
  %77 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @sws_getCachedContext(i32* null, i32 %68, i32 %71, i32 %72, i32 %75, i32 %78, i32 %79, i32 %80, i32* null, i32* null, i32* null)
  %82 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %83 = getelementptr inbounds %struct.video_scaler, %struct.video_scaler* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %85 = getelementptr inbounds %struct.video_scaler, %struct.video_scaler* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %59
  %89 = load i32, i32* @LOG_ERROR, align 4
  %90 = call i32 @blog(i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %111

91:                                               ; preds = %59
  %92 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %93 = getelementptr inbounds %struct.video_scaler, %struct.video_scaler* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @FIXED_1_0, align 4
  %100 = load i32, i32* @FIXED_1_0, align 4
  %101 = call i32 @sws_setColorspaceDetails(i32 %94, i32* %95, i32 %96, i32* %97, i32 %98, i32 0, i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* @LOG_DEBUG, align 4
  %106 = call i32 @blog(i32 %105, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %91
  %108 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %109 = load %struct.video_scaler**, %struct.video_scaler*** %6, align 8
  store %struct.video_scaler* %108, %struct.video_scaler** %109, align 8
  %110 = load i32, i32* @VIDEO_SCALER_SUCCESS, align 4
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %88
  %112 = load %struct.video_scaler*, %struct.video_scaler** %17, align 8
  %113 = call i32 @video_scaler_destroy(%struct.video_scaler* %112)
  %114 = load i32, i32* @VIDEO_SCALER_FAILED, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %107, %57, %47
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @get_ffmpeg_video_format(i32) #1

declare dso_local i32 @get_ffmpeg_scale_type(i32) #1

declare dso_local i32* @get_ffmpeg_coeffs(i32) #1

declare dso_local i32 @get_ffmpeg_range_type(i32) #1

declare dso_local %struct.video_scaler* @bzalloc(i32) #1

declare dso_local i32 @sws_getCachedContext(i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @sws_setColorspaceDetails(i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @video_scaler_destroy(%struct.video_scaler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
