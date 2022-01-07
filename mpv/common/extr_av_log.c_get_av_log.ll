; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_log.c_get_av_log.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_log.c_get_av_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@log_root = common dso_local global %struct.mp_log* null, align 8
@.str = private unnamed_addr constant [113 x i8] c"av_log callback called with bad parameters (NULL AVClass).\0AThis is a bug in one of Libav/FFmpeg libraries used.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"AVCodecContext\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@log_decaudio = common dso_local global %struct.mp_log* null, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@log_decvideo = common dso_local global %struct.mp_log* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"AVFormatContext\00", align 1
@log_demuxer = common dso_local global %struct.mp_log* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_log* (i8*)* @get_av_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_log* @get_av_log(i8* %0) #0 {
  %2 = alloca %struct.mp_log*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.mp_log*, %struct.mp_log** @log_root, align 8
  store %struct.mp_log* %10, %struct.mp_log** %2, align 8
  br label %89

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__**
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load %struct.mp_log*, %struct.mp_log** @log_root, align 8
  %19 = call i32 @mp_warn(%struct.mp_log* %18, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mp_log*, %struct.mp_log** @log_root, align 8
  store %struct.mp_log* %20, %struct.mp_log** %2, align 8
  br label %89

21:                                               ; preds = %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i64 @av_codec_is_decoder(%struct.TYPE_8__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.mp_log*, %struct.mp_log** @log_decaudio, align 8
  store %struct.mp_log* %49, %struct.mp_log** %2, align 8
  br label %89

50:                                               ; preds = %42
  br label %69

51:                                               ; preds = %34
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i64 @av_codec_is_decoder(%struct.TYPE_8__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load %struct.mp_log*, %struct.mp_log** @log_decvideo, align 8
  store %struct.mp_log* %66, %struct.mp_log** %2, align 8
  br label %89

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %21
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = bitcast i8* %78 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load %struct.mp_log*, %struct.mp_log** @log_demuxer, align 8
  store %struct.mp_log* %85, %struct.mp_log** %2, align 8
  br label %89

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.mp_log*, %struct.mp_log** @log_root, align 8
  store %struct.mp_log* %88, %struct.mp_log** %2, align 8
  br label %89

89:                                               ; preds = %87, %84, %65, %48, %17, %9
  %90 = load %struct.mp_log*, %struct.mp_log** %2, align 8
  ret %struct.mp_log* %90
}

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @av_codec_is_decoder(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
