; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_create_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_create_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32, float, float, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCMVideoCodecType_H264 = common dso_local global i32 0, align 4
@sample_encoded_callback = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"session created with hardware encoding\00", align 1
@kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_MaxKeyFrameInterval = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_ExpectedFrameRate = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_AllowFrameReordering = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i32 0, align 4
@kCFBooleanFalse = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_RealTime = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"setting kVTCompressionPropertyKey_RealTime, frame delay might be increased\00", align 1
@kVTCompressionPropertyKey_ProfileLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_h264_encoder*)* @create_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_encoder(%struct.vt_h264_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_h264_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %3, align 8
  %9 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @create_encoder_spec(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %14 = call i32* @create_pixbuf_spec(%struct.vt_h264_encoder* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @kCFAllocatorDefault, align 4
  %16 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %20 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @kCMVideoCodecType_H264, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %26 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @VTCompressionSessionCreate(i32 %15, i32 %18, i32 %21, i32 %22, i32* %23, i32* %24, i32* null, i32* @sample_encoded_callback, i32 %27, i32* %5)
  %29 = call i32 @STATUS_CHECK(i64 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @CFRelease(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @CFRelease(i32* %32)
  store i32* null, i32** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @kVTCompressionPropertyKey_UsingHardwareAcceleratedVideoEncoder, align 4
  %36 = call i64 @VTSessionCopyProperty(i32 %34, i32 %35, i32* null, i32** %8)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @noErr, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @CFBooleanGetValue(i32* %41)
  %43 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = icmp ne i32 %42, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @LOG_INFO, align 4
  %48 = call i32 @VT_BLOG(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %52

49:                                               ; preds = %40, %1
  %50 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %51 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @CFRelease(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration, align 4
  %61 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %62 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %61, i32 0, i32 1
  %63 = load float, float* %62, align 4
  %64 = call i64 @session_set_prop_int(i32 %59, i32 %60, float %63)
  %65 = call i32 @STATUS_CHECK(i64 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @kVTCompressionPropertyKey_MaxKeyFrameInterval, align 4
  %68 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %69 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %72 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %71, i32 0, i32 11
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to float
  %75 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %76 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %75, i32 0, i32 2
  %77 = load float, float* %76, align 8
  %78 = fdiv float %74, %77
  %79 = fmul float %70, %78
  %80 = call i64 @session_set_prop_int(i32 %66, i32 %67, float %79)
  %81 = call i32 @STATUS_CHECK(i64 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @kVTCompressionPropertyKey_ExpectedFrameRate, align 4
  %84 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %85 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to float
  %88 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %89 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %88, i32 0, i32 2
  %90 = load float, float* %89, align 8
  %91 = fdiv float %87, %90
  %92 = call float @ceil(float %91)
  %93 = call i64 @session_set_prop_int(i32 %82, i32 %83, float %92)
  %94 = call i32 @STATUS_CHECK(i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @kVTCompressionPropertyKey_AllowFrameReordering, align 4
  %97 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %98 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %58
  %102 = load i32, i32* @kCFBooleanTrue, align 4
  br label %105

103:                                              ; preds = %58
  %104 = load i32, i32* @kCFBooleanFalse, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = call i64 @session_set_prop(i32 %95, i32 %96, i32 %106)
  %108 = call i32 @STATUS_CHECK(i64 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @kVTCompressionPropertyKey_RealTime, align 4
  %111 = load i32, i32* @kCFBooleanTrue, align 4
  %112 = call i64 @session_set_prop(i32 %109, i32 %110, i32 %111)
  store i64 %112, i64* %4, align 8
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @noErr, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load i32, i32* @LOG_WARNING, align 4
  %118 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @log_osstatus(i32 %117, %struct.vt_h264_encoder* %118, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %116, %105
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @kVTCompressionPropertyKey_ProfileLevel, align 4
  %124 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %125 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @obs_to_vt_profile(i32 %126)
  %128 = call i64 @session_set_prop(i32 %122, i32 %123, i32 %127)
  %129 = call i32 @STATUS_CHECK(i64 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %132 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %135 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %138 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %141 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @session_set_bitrate(i32 %130, i32 %133, i32 %136, i32 %139, i32 %142)
  %144 = call i32 @STATUS_CHECK(i64 %143)
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %147 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @session_set_colorspace(i32 %145, i32 %148)
  %150 = call i32 @STATUS_CHECK(i64 %149)
  %151 = load i32, i32* %5, align 4
  %152 = call i64 @VTCompressionSessionPrepareToEncodeFrames(i32 %151)
  %153 = call i32 @STATUS_CHECK(i64 %152)
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %156 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  store i32 1, i32* %2, align 4
  br label %170

157:                                              ; No predecessors!
  %158 = load i32*, i32** %6, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @CFRelease(i32* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32*, i32** %7, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @CFRelease(i32* %167)
  br label %169

169:                                              ; preds = %166, %163
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %121
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32* @create_encoder_spec(i32) #1

declare dso_local i32* @create_pixbuf_spec(%struct.vt_h264_encoder*) #1

declare dso_local i32 @STATUS_CHECK(i64) #1

declare dso_local i64 @VTCompressionSessionCreate(i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i64 @VTSessionCopyProperty(i32, i32, i32*, i32**) #1

declare dso_local i32 @CFBooleanGetValue(i32*) #1

declare dso_local i32 @VT_BLOG(i32, i8*) #1

declare dso_local i64 @session_set_prop_int(i32, i32, float) #1

declare dso_local float @ceil(float) #1

declare dso_local i64 @session_set_prop(i32, i32, i32) #1

declare dso_local i32 @log_osstatus(i32, %struct.vt_h264_encoder*, i8*, i64) #1

declare dso_local i32 @obs_to_vt_profile(i32) #1

declare dso_local i64 @session_set_bitrate(i32, i32, i32, i32, i32) #1

declare dso_local i64 @session_set_colorspace(i32, i32) #1

declare dso_local i64 @VTCompressionSessionPrepareToEncodeFrames(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
