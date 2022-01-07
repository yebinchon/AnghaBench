; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_scale_video_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_scale_video_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_input = type { i64, i64, %struct.video_frame* }
%struct.video_frame = type { i32*, i32* }
%struct.video_data = type { i32*, i32* }

@MAX_CONVERT_BUFFERS = common dso_local global i64 0, align 8
@MAX_AV_PLANES = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"video-io: Could not scale frame!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_input*, %struct.video_data*)* @scale_video_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scale_video_output(%struct.video_input* %0, %struct.video_data* %1) #0 {
  %3 = alloca %struct.video_input*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_frame*, align 8
  %7 = alloca i64, align 8
  store %struct.video_input* %0, %struct.video_input** %3, align 8
  store %struct.video_data* %1, %struct.video_data** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.video_input*, %struct.video_input** %3, align 8
  %9 = getelementptr inbounds %struct.video_input, %struct.video_input* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %2
  %13 = load %struct.video_input*, %struct.video_input** %3, align 8
  %14 = getelementptr inbounds %struct.video_input, %struct.video_input* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* @MAX_CONVERT_BUFFERS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.video_input*, %struct.video_input** %3, align 8
  %21 = getelementptr inbounds %struct.video_input, %struct.video_input* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.video_input*, %struct.video_input** %3, align 8
  %24 = getelementptr inbounds %struct.video_input, %struct.video_input* %23, i32 0, i32 2
  %25 = load %struct.video_frame*, %struct.video_frame** %24, align 8
  %26 = load %struct.video_input*, %struct.video_input** %3, align 8
  %27 = getelementptr inbounds %struct.video_input, %struct.video_input* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %25, i64 %28
  store %struct.video_frame* %29, %struct.video_frame** %6, align 8
  %30 = load %struct.video_input*, %struct.video_input** %3, align 8
  %31 = getelementptr inbounds %struct.video_input, %struct.video_input* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %34 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %37 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.video_data*, %struct.video_data** %4, align 8
  %40 = getelementptr inbounds %struct.video_data, %struct.video_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i32**
  %43 = load %struct.video_data*, %struct.video_data** %4, align 8
  %44 = getelementptr inbounds %struct.video_data, %struct.video_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @video_scaler_scale(i64 %32, i32* %35, i32* %38, i32** %42, i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @MAX_AV_PLANES, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %56 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.video_data*, %struct.video_data** %4, align 8
  %62 = getelementptr inbounds %struct.video_data, %struct.video_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %67 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.video_data*, %struct.video_data** %4, align 8
  %73 = getelementptr inbounds %struct.video_data, %struct.video_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %54
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %50

80:                                               ; preds = %50
  br label %84

81:                                               ; preds = %22
  %82 = load i32, i32* @LOG_WARNING, align 4
  %83 = call i32 @blog(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %80
  br label %85

85:                                               ; preds = %84, %2
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @video_scaler_scale(i64, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
