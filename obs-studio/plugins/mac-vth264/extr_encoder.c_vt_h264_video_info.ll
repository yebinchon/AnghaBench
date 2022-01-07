; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_video_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_scale_info = type { i64 }
%struct.vt_h264_encoder = type { i64, i64, i32 }

@VIDEO_FORMAT_I420 = common dso_local global i64 0, align 8
@kCVPixelFormatType_420YpCbCr8PlanarFullRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8Planar = common dso_local global i32 0, align 4
@VIDEO_FORMAT_I444 = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"I444 color format not supported\00", align 1
@VIDEO_FORMAT_NV12 = common dso_local global i64 0, align 8
@kCVPixelFormatType_420YpCbCr8BiPlanarFullRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_scale_info*)* @vt_h264_video_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_h264_video_info(i8* %0, %struct.video_scale_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_scale_info*, align 8
  %5 = alloca %struct.vt_h264_encoder*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_scale_info* %1, %struct.video_scale_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vt_h264_encoder*
  store %struct.vt_h264_encoder* %7, %struct.vt_h264_encoder** %5, align 8
  %8 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %9 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VIDEO_FORMAT_I420, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %15 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @kCVPixelFormatType_420YpCbCr8PlanarFullRange, align 4
  br label %27

25:                                               ; preds = %13
  %26 = load i32, i32* @kCVPixelFormatType_420YpCbCr8Planar, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %30 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %61

31:                                               ; preds = %2
  %32 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %33 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIDEO_FORMAT_I444, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = call i32 @VT_BLOG(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i64, i64* @VIDEO_FORMAT_NV12, align 8
  %42 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %43 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %45 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %55 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %5, align 8
  %57 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %60 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %27
  ret void
}

declare dso_local i32 @VT_BLOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
