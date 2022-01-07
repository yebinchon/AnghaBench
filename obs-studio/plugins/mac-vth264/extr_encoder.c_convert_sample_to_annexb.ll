; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_convert_sample_to_annexb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_convert_sample_to_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32 }
%struct.darray = type { i32 }

@kCMFormatDescriptionBridgeError_InvalidParameter_ = common dso_local global i64 0, align 8
@kCMFormatDescriptionError_InvalidParameter = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"assuming 2 parameter sets and 4 byte NAL length header\00", align 1
@noErr = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"getting parameter count from sample\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_h264_encoder*, %struct.darray*, %struct.darray*, i32, i32)* @convert_sample_to_annexb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_sample_to_annexb(%struct.vt_h264_encoder* %0, %struct.darray* %1, %struct.darray* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vt_h264_encoder*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca %struct.darray*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %7, align 8
  store %struct.darray* %1, %struct.darray** %8, align 8
  store %struct.darray* %2, %struct.darray** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @CMSampleBufferGetFormatDescription(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @CMVideoFormatDescriptionGetH264ParameterSetAtIndex(i32 %19, i32 0, i32* null, i32* null, i64* %14, i32* %15)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @kCMFormatDescriptionBridgeError_InvalidParameter_, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @kCMFormatDescriptionError_InvalidParameter, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = call i32 @VT_BLOG(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i64 2, i64* %14, align 8
  store i32 4, i32* %15, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @noErr, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %7, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @log_osstatus(i32 %36, %struct.vt_h264_encoder* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  store i32 0, i32* %6, align 4
  br label %61

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.darray*, %struct.darray** %8, align 8
  %49 = load %struct.darray*, %struct.darray** %9, align 8
  %50 = call i32 @handle_keyframe(%struct.vt_h264_encoder* %45, i32 %46, i64 %47, %struct.darray* %48, %struct.darray* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %61

53:                                               ; preds = %44, %41
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @CMSampleBufferGetDataBuffer(i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %7, align 8
  %57 = load %struct.darray*, %struct.darray** %8, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @convert_block_nals_to_annexb(%struct.vt_h264_encoder* %56, %struct.darray* %57, i32 %58, i32 %59)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %53, %52, %35
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @CMSampleBufferGetFormatDescription(i32) #1

declare dso_local i64 @CMVideoFormatDescriptionGetH264ParameterSetAtIndex(i32, i32, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @VT_BLOG(i32, i8*) #1

declare dso_local i32 @log_osstatus(i32, %struct.vt_h264_encoder*, i8*, i64) #1

declare dso_local i32 @handle_keyframe(%struct.vt_h264_encoder*, i32, i64, %struct.darray*, %struct.darray*) #1

declare dso_local i32 @CMSampleBufferGetDataBuffer(i32) #1

declare dso_local i32 @convert_block_nals_to_annexb(%struct.vt_h264_encoder*, %struct.darray*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
