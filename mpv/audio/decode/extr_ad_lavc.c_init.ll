; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32, i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.mp_codec_params = type { i32, i64 }
%struct.MPOpts = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.ad_lavc_params = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@GLOBAL_CONFIG = common dso_local global i32* null, align 8
@ad_lavc_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot find codec '%s' in libavcodec...\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"drc_scale\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not set decoder parameters.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Could not open codec.\0A\00", align 1
@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_codec_params*, i8*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.mp_filter* %0, %struct.mp_codec_params* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.mp_codec_params*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.MPOpts*, align 8
  %10 = alloca %struct.ad_lavc_params*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store %struct.mp_codec_params* %1, %struct.mp_codec_params** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %14 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %13, i32 0, i32 2
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %8, align 8
  %16 = load %struct.priv*, %struct.priv** %8, align 8
  %17 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %18 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @GLOBAL_CONFIG, align 8
  %21 = call i8* @mp_get_config_group(%struct.priv* %16, i32 %19, i32* %20)
  %22 = bitcast i8* %21 to %struct.MPOpts*
  store %struct.MPOpts* %22, %struct.MPOpts** %9, align 8
  %23 = load %struct.priv*, %struct.priv** %8, align 8
  %24 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %25 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @mp_get_config_group(%struct.priv* %23, i32 %26, i32* @ad_lavc_conf)
  %28 = bitcast i8* %27 to %struct.ad_lavc_params*
  store %struct.ad_lavc_params* %28, %struct.ad_lavc_params** %10, align 8
  %29 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %30 = call i32 @mp_get_codec_timebase(%struct.mp_codec_params* %29)
  %31 = load %struct.priv*, %struct.priv** %8, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %34 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %39 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.priv*, %struct.priv** %8, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %3
  %44 = load i8*, i8** %7, align 8
  %45 = call %struct.TYPE_16__* @avcodec_find_decoder_by_name(i8* %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %12, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 0, i32* %4, align 4
  br label %130

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %54 = call %struct.TYPE_15__* @avcodec_alloc_context3(%struct.TYPE_16__* %53)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %11, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = load %struct.priv*, %struct.priv** %8, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 3
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %57, align 8
  %58 = call i32 (...) @av_frame_alloc()
  %59 = load %struct.priv*, %struct.priv** %8, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ad_lavc_params*, %struct.ad_lavc_params** %10, align 8
  %70 = getelementptr inbounds %struct.ad_lavc_params, %struct.ad_lavc_params* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %52
  %74 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %75 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  %81 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @mp_chmap_to_lavc(i32* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %73, %52
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = load %struct.ad_lavc_params*, %struct.ad_lavc_params** %10, align 8
  %91 = getelementptr inbounds %struct.ad_lavc_params, %struct.ad_lavc_params* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %94 = call i32 @av_opt_set_double(%struct.TYPE_15__* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %96 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = load %struct.ad_lavc_params*, %struct.ad_lavc_params** %10, align 8
  %100 = getelementptr inbounds %struct.ad_lavc_params, %struct.ad_lavc_params* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mp_set_avopts(i32 %97, %struct.TYPE_15__* %98, i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %104 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %105 = call i64 @mp_set_avctx_codec_headers(%struct.TYPE_15__* %103, %struct.mp_codec_params* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %88
  %108 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %109 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %130

110:                                              ; preds = %88
  %111 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %112 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %115 = load %struct.ad_lavc_params*, %struct.ad_lavc_params** %10, align 8
  %116 = getelementptr inbounds %struct.ad_lavc_params, %struct.ad_lavc_params* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @mp_set_avcodec_threads(i32 %113, %struct.TYPE_15__* %114, i32 %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %121 = call i64 @avcodec_open2(%struct.TYPE_15__* %119, %struct.TYPE_16__* %120, i32* null)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %125 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %130

126:                                              ; preds = %110
  %127 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %128 = load %struct.priv*, %struct.priv** %8, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %123, %107, %48
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i8* @mp_get_config_group(%struct.priv*, i32, i32*) #1

declare dso_local i32 @mp_get_codec_timebase(%struct.mp_codec_params*) #1

declare dso_local %struct.TYPE_16__* @avcodec_find_decoder_by_name(i8*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @avcodec_alloc_context3(%struct.TYPE_16__*) #1

declare dso_local i32 @av_frame_alloc(...) #1

declare dso_local i32 @mp_chmap_to_lavc(i32*) #1

declare dso_local i32 @av_opt_set_double(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32 @mp_set_avopts(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @mp_set_avctx_codec_headers(%struct.TYPE_15__*, %struct.mp_codec_params*) #1

declare dso_local i32 @mp_set_avcodec_threads(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
