; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_input_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_input = type { %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.video_output = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.video_scale_info = type { i64, i64, i64, i32, i32 }

@VIDEO_SCALE_FAST_BILINEAR = common dso_local global i32 0, align 4
@VIDEO_SCALER_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_SCALER_BAD_CONVERSION = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"video_input_init: Bad scale conversion type\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"video_input_init: Failed to create scaler\00", align 1
@MAX_CONVERT_BUFFERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_input*, %struct.video_output*)* @video_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_input_init(%struct.video_input* %0, %struct.video_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_input*, align 8
  %5 = alloca %struct.video_output*, align 8
  %6 = alloca %struct.video_scale_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.video_input* %0, %struct.video_input** %4, align 8
  store %struct.video_output* %1, %struct.video_output** %5, align 8
  %9 = load %struct.video_input*, %struct.video_input** %4, align 8
  %10 = getelementptr inbounds %struct.video_input, %struct.video_input* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.video_output*, %struct.video_output** %5, align 8
  %14 = getelementptr inbounds %struct.video_output, %struct.video_output* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %2
  %19 = load %struct.video_input*, %struct.video_input** %4, align 8
  %20 = getelementptr inbounds %struct.video_input, %struct.video_input* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.video_output*, %struct.video_output** %5, align 8
  %24 = getelementptr inbounds %struct.video_output, %struct.video_output* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load %struct.video_input*, %struct.video_input** %4, align 8
  %30 = getelementptr inbounds %struct.video_input, %struct.video_input* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.video_output*, %struct.video_output** %5, align 8
  %34 = getelementptr inbounds %struct.video_output, %struct.video_output* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %112

38:                                               ; preds = %28, %18, %2
  %39 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %6, i32 0, i32 0
  %40 = load %struct.video_output*, %struct.video_output** %5, align 8
  %41 = getelementptr inbounds %struct.video_output, %struct.video_output* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %39, align 8
  %44 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %6, i32 0, i32 1
  %45 = load %struct.video_output*, %struct.video_output** %5, align 8
  %46 = getelementptr inbounds %struct.video_output, %struct.video_output* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %44, align 8
  %49 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %6, i32 0, i32 2
  %50 = load %struct.video_output*, %struct.video_output** %5, align 8
  %51 = getelementptr inbounds %struct.video_output, %struct.video_output* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %49, align 8
  %54 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %6, i32 0, i32 3
  %55 = load %struct.video_output*, %struct.video_output** %5, align 8
  %56 = getelementptr inbounds %struct.video_output, %struct.video_output* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %54, align 8
  %59 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %6, i32 0, i32 4
  %60 = load %struct.video_output*, %struct.video_output** %5, align 8
  %61 = getelementptr inbounds %struct.video_output, %struct.video_output* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %59, align 4
  %64 = load %struct.video_input*, %struct.video_input** %4, align 8
  %65 = getelementptr inbounds %struct.video_input, %struct.video_input* %64, i32 0, i32 2
  %66 = load %struct.video_input*, %struct.video_input** %4, align 8
  %67 = getelementptr inbounds %struct.video_input, %struct.video_input* %66, i32 0, i32 0
  %68 = load i32, i32* @VIDEO_SCALE_FAST_BILINEAR, align 4
  %69 = call i32 @video_scaler_create(i32* %65, %struct.TYPE_4__* %67, %struct.video_scale_info* %6, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @VIDEO_SCALER_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %38
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @VIDEO_SCALER_BAD_CONVERSION, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @LOG_ERROR, align 4
  %79 = call i32 @blog(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @LOG_ERROR, align 4
  %82 = call i32 @blog(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  store i32 0, i32* %3, align 4
  br label %113

84:                                               ; preds = %38
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @MAX_CONVERT_BUFFERS, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load %struct.video_input*, %struct.video_input** %4, align 8
  %91 = getelementptr inbounds %struct.video_input, %struct.video_input* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load %struct.video_input*, %struct.video_input** %4, align 8
  %96 = getelementptr inbounds %struct.video_input, %struct.video_input* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.video_input*, %struct.video_input** %4, align 8
  %100 = getelementptr inbounds %struct.video_input, %struct.video_input* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.video_input*, %struct.video_input** %4, align 8
  %104 = getelementptr inbounds %struct.video_input, %struct.video_input* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @video_frame_init(i32* %94, i64 %98, i64 %102, i64 %106)
  br label %108

108:                                              ; preds = %89
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %8, align 8
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111, %28
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @video_scaler_create(i32*, %struct.TYPE_4__*, %struct.video_scale_info*, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @video_frame_init(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
