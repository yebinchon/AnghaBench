; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_vt_h264_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_frame = type { i32, i32*, i32** }
%struct.encoder_packet = type { i32 }
%struct.vt_h264_encoder = type { i32, i32, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to create pixel buffer\00", align 1
@MAX_AV_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.encoder_frame*, %struct.encoder_packet*, i32*)* @vt_h264_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_h264_encode(i8* %0, %struct.encoder_frame* %1, %struct.encoder_packet* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.encoder_frame*, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vt_h264_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.encoder_frame* %1, %struct.encoder_frame** %7, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.vt_h264_encoder*
  store %struct.vt_h264_encoder* %24, %struct.vt_h264_encoder** %10, align 8
  %25 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %26 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %29 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CMTimeMake(i32 %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @CMTimeMultiply(i32 %32, i32 2)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %36 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @CMTimeMultiply(i32 %34, i32 %37)
  store i32 %38, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %39 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %40 = call i32 @get_cached_pixel_buffer(%struct.vt_h264_encoder* %39, i32** %15)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @LOG_ERROR, align 4
  %44 = call i32 @VT_BLOG(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %145

45:                                               ; preds = %4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @CVPixelBufferLockBaseAddress(i32* %46, i32 0)
  %48 = call i32 @STATUS_CHECK(i32 %47)
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %113, %45
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @MAX_AV_PLANES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %49
  %54 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %55 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %116

63:                                               ; preds = %53
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @CVPixelBufferGetBaseAddressOfPlane(i32* %64, i32 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %17, align 8
  %68 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %69 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %68, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %18, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @CVPixelBufferGetBytesPerRowOfPlane(i32* %75, i32 %76)
  store i64 %77, i64* %19, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i64 @CVPixelBufferGetHeightOfPlane(i32* %78, i32 %79)
  store i64 %80, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %81

81:                                               ; preds = %109, %63
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %20, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load i32*, i32** %17, align 8
  %87 = load i32*, i32** %18, align 8
  %88 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %89 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32* %86, i32* %87, i32 %94)
  %96 = load i64, i64* %19, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %17, align 8
  %99 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %100 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %18, align 8
  br label %109

109:                                              ; preds = %85
  %110 = load i64, i64* %21, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %21, align 8
  br label %81

112:                                              ; preds = %81
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %49

116:                                              ; preds = %62, %49
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @CVPixelBufferUnlockBaseAddress(i32* %117, i32 0)
  %119 = call i32 @STATUS_CHECK(i32 %118)
  %120 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %121 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @VTCompressionSessionEncodeFrame(i32 %122, i32* %123, i32 %124, i32 %125, i32* null, i32* %126, i32* null)
  %128 = call i32 @STATUS_CHECK(i32 %127)
  %129 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %130 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CMSimpleQueueDequeue(i32 %131)
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %22, align 8
  %135 = load i32*, i32** %22, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  store i32 1, i32* %5, align 4
  br label %146

138:                                              ; preds = %116
  %139 = load i32*, i32** %9, align 8
  store i32 1, i32* %139, align 4
  %140 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %10, align 8
  %141 = load i32*, i32** %22, align 8
  %142 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @parse_sample(%struct.vt_h264_encoder* %140, i32* %141, %struct.encoder_packet* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  br label %146

145:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %138, %137
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @CMTimeMake(i32, i32) #1

declare dso_local i32 @CMTimeMultiply(i32, i32) #1

declare dso_local i32 @get_cached_pixel_buffer(%struct.vt_h264_encoder*, i32**) #1

declare dso_local i32 @VT_BLOG(i32, i8*) #1

declare dso_local i32 @STATUS_CHECK(i32) #1

declare dso_local i32 @CVPixelBufferLockBaseAddress(i32*, i32) #1

declare dso_local i64 @CVPixelBufferGetBaseAddressOfPlane(i32*, i32) #1

declare dso_local i64 @CVPixelBufferGetBytesPerRowOfPlane(i32*, i32) #1

declare dso_local i64 @CVPixelBufferGetHeightOfPlane(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CVPixelBufferUnlockBaseAddress(i32*, i32) #1

declare dso_local i32 @VTCompressionSessionEncodeFrame(i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CMSimpleQueueDequeue(i32) #1

declare dso_local i32 @parse_sample(%struct.vt_h264_encoder*, i32*, %struct.encoder_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
