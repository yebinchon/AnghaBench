; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_ffmpeg_decode_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_ffmpeg_decode_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_decode = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.obs_source_audio = type { i64, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_AV_PLANES = common dso_local global i64 0, align 8
@AUDIO_FORMAT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffmpeg_decode_audio(%struct.ffmpeg_decode* %0, i32* %1, i64 %2, %struct.obs_source_audio* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ffmpeg_decode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.obs_source_audio*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ffmpeg_decode* %0, %struct.ffmpeg_decode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.obs_source_audio* %3, %struct.obs_source_audio** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @copy_data(%struct.ffmpeg_decode* %18, i32* %19, i64 %20)
  %22 = call i32 @av_init_packet(%struct.TYPE_8__* %12)
  %23 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %5
  %35 = call %struct.TYPE_10__* (...) @av_frame_alloc()
  %36 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %37 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %36, i32 0, i32 0
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %39 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %150

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %5
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %52 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @avcodec_send_packet(%struct.TYPE_9__* %53, %struct.TYPE_8__* %12)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %50, %47, %44
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %60 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %63 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 @avcodec_receive_frame(%struct.TYPE_9__* %61, %struct.TYPE_10__* %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @AVERROR_EOF, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = call i32 @AVERROR(i32 %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %66
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %150

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 1, i32* %6, align 4
  br label %150

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %107, %88
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @MAX_AV_PLANES, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %95 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %103 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %93
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %15, align 8
  br label %89

110:                                              ; preds = %89
  %111 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %112 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %117 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %119 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @convert_sample_format(i32 %122)
  %124 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %125 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %127 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @convert_speaker_layout(i32 %131)
  %133 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %134 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %7, align 8
  %136 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %141 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.obs_source_audio*, %struct.obs_source_audio** %10, align 8
  %143 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AUDIO_FORMAT_UNKNOWN, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  br label %150

148:                                              ; preds = %110
  %149 = load i32*, i32** %11, align 8
  store i32 1, i32* %149, align 4
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %147, %86, %82, %42
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @copy_data(%struct.ffmpeg_decode*, i32*, i64) #2

declare dso_local i32 @av_init_packet(%struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_10__* @av_frame_alloc(...) #2

declare dso_local i32 @avcodec_send_packet(%struct.TYPE_9__*, %struct.TYPE_8__*) #2

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_9__*, %struct.TYPE_10__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @convert_sample_format(i32) #2

declare dso_local i32 @convert_speaker_layout(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
