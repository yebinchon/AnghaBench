; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_determine_codec_params.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_determine_codec_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.spdifContext* }
%struct.spdifContext = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@FF_PROFILE_UNKNOWN = common dso_local global i32 0, align 4
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@AV_CODEC_ID_DTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to parse codec profile.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*, %struct.TYPE_15__*, i32*, i32*)* @determine_codec_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_codec_params(%struct.mp_filter* %0, %struct.TYPE_15__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.spdifContext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 0
  %19 = load %struct.spdifContext*, %struct.spdifContext** %18, align 8
  store %struct.spdifContext* %19, %struct.spdifContext** %9, align 8
  %20 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  store i32 %20, i32* %10, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  store i32* null, i32** %12, align 8
  %21 = load %struct.spdifContext*, %struct.spdifContext** %9, align 8
  %22 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_16__* @av_parser_init(i64 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %13, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %4
  %28 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = call %struct.TYPE_17__* @avcodec_alloc_context3(i32* null)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %11, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %38 = call i32 @av_parser_close(%struct.TYPE_16__* %37)
  br label %117

39:                                               ; preds = %27
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @av_parser_parse2(%struct.TYPE_16__* %40, %struct.TYPE_17__* %41, i32** %14, i32* %15, i32 %44, i32 %47, i32 0, i32 0, i32 0)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = call i32 @avcodec_free_context(%struct.TYPE_17__** %11)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %59 = call i32 @av_parser_close(%struct.TYPE_16__* %58)
  br label %60

60:                                               ; preds = %39, %4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load %struct.spdifContext*, %struct.spdifContext** %9, align 8
  %66 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AV_CODEC_ID_DTS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %60
  br label %126

71:                                               ; preds = %64
  %72 = load %struct.spdifContext*, %struct.spdifContext** %9, align 8
  %73 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32* @avcodec_find_decoder(i64 %74)
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %117

79:                                               ; preds = %71
  %80 = call i32* (...) @av_frame_alloc()
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %117

84:                                               ; preds = %79
  %85 = load i32*, i32** %16, align 8
  %86 = call %struct.TYPE_17__* @avcodec_alloc_context3(i32* %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %11, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %117

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = call i64 @avcodec_open2(%struct.TYPE_17__* %91, i32* %92, i32* null)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %117

96:                                               ; preds = %90
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = call i64 @avcodec_send_packet(%struct.TYPE_17__* %97, %struct.TYPE_15__* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %117

102:                                              ; preds = %96
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i64 @avcodec_receive_frame(%struct.TYPE_17__* %103, i32* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %117

108:                                              ; preds = %102
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %108, %107, %101, %95, %89, %83, %78, %36
  %118 = call i32 @av_frame_free(i32** %12)
  %119 = call i32 @avcodec_free_context(%struct.TYPE_17__** %11)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %125 = call i32 @MP_WARN(%struct.mp_filter* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %70, %123, %117
  ret void
}

declare dso_local %struct.TYPE_16__* @av_parser_init(i64) #1

declare dso_local %struct.TYPE_17__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @av_parser_close(%struct.TYPE_16__*) #1

declare dso_local i32 @av_parser_parse2(%struct.TYPE_16__*, %struct.TYPE_17__*, i32**, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_17__**) #1

declare dso_local i32* @avcodec_find_decoder(i64) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i64 @avcodec_send_packet(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i64 @avcodec_receive_frame(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @MP_WARN(%struct.mp_filter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
