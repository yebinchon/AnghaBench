; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_handle_keyframe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_handle_keyframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32 }
%struct.darray = type { i64, i32* }

@noErr = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"getting NAL parameter at index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_h264_encoder*, i32, i64, %struct.darray*, %struct.darray*)* @handle_keyframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_keyframe(%struct.vt_h264_encoder* %0, i32 %1, i64 %2, %struct.darray* %3, %struct.darray* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vt_h264_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.darray*, align 8
  %11 = alloca %struct.darray*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.darray* %3, %struct.darray** %10, align 8
  store %struct.darray* %4, %struct.darray** %11, align 8
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %39, %5
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @CMVideoFormatDescriptionGetH264ParameterSetAtIndex(i32 %21, i64 %22, i32** %13, i64* %14, i32* null, i32* null)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @noErr, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @LOG_ERROR, align 4
  %29 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @log_osstatus(i32 %28, %struct.vt_h264_encoder* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %6, align 4
  br label %55

32:                                               ; preds = %20
  %33 = load %struct.darray*, %struct.darray** %10, align 8
  %34 = call i32 @packet_put_startcode(%struct.darray* %33, i32 4)
  %35 = load %struct.darray*, %struct.darray** %10, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @packet_put(%struct.darray* %35, i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %15, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %15, align 8
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.darray*, %struct.darray** %11, align 8
  %44 = icmp ne %struct.darray* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.darray*, %struct.darray** %11, align 8
  %47 = load %struct.darray*, %struct.darray** %10, align 8
  %48 = getelementptr inbounds %struct.darray, %struct.darray* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.darray*, %struct.darray** %10, align 8
  %51 = getelementptr inbounds %struct.darray, %struct.darray* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @packet_put(%struct.darray* %46, i32* %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %42
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @CMVideoFormatDescriptionGetH264ParameterSetAtIndex(i32, i64, i32**, i64*, i32*, i32*) #1

declare dso_local i32 @log_osstatus(i32, %struct.vt_h264_encoder*, i8*, i32) #1

declare dso_local i32 @packet_put_startcode(%struct.darray*, i32) #1

declare dso_local i32 @packet_put(%struct.darray*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
