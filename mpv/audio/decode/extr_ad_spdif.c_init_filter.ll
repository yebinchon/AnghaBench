; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_init_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_init_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.spdifContext* }
%struct.spdifContext = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.mp_chmap = type { i32 }

@FF_PROFILE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"In: profile=%d samplerate=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@OUTBUF_SIZE = common dso_local global i32 0, align 4
@write_packet = common dso_local global i32 0, align 4
@AF_FORMAT_S_AAC = common dso_local global i32 0, align 4
@AF_FORMAT_S_AC3 = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_HD_HRA = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_HD_MA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"dtshd_rate\00", align 1
@AF_FORMAT_S_DTSHD = common dso_local global i32 0, align 4
@AF_FORMAT_S_DTS = common dso_local global i32 0, align 4
@AF_FORMAT_S_EAC3 = common dso_local global i32 0, align 4
@AF_FORMAT_S_MP3 = common dso_local global i32 0, align 4
@AF_FORMAT_S_TRUEHD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"libavformat spdif initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, i32*)* @init_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_filter(%struct.mp_filter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spdifContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mp_chmap, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %20 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %19, i32 0, i32 0
  %21 = load %struct.spdifContext*, %struct.spdifContext** %20, align 8
  store %struct.spdifContext* %21, %struct.spdifContext** %6, align 8
  %22 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @determine_codec_params(%struct.mp_filter* %23, i32* %24, i32* %7, i32* %8)
  %26 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MP_VERBOSE(%struct.mp_filter* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = call %struct.TYPE_11__* (...) @avformat_alloc_context()
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %182

34:                                               ; preds = %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %37 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %36, i32 0, i32 5
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %37, align 8
  %38 = call i32 @av_guess_format(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %182

46:                                               ; preds = %34
  %47 = load i32, i32* @OUTBUF_SIZE, align 4
  %48 = call i8* @av_mallocz(i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 (...) @abort() #3
  unreachable

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @OUTBUF_SIZE, align 4
  %56 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %57 = load i32, i32* @write_packet, align 4
  %58 = call %struct.TYPE_12__* @avio_alloc_context(i8* %54, i32 %55, i32 1, %struct.spdifContext* %56, i32* null, i32 %57, i32* null)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @av_free(i8* %66)
  br label %182

68:                                               ; preds = %53
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %69, i32 0)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %11, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %182

74:                                               ; preds = %68
  %75 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %76 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  store i32* null, i32** %12, align 8
  %82 = call i32 (...) @mp_aframe_create()
  %83 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %84 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %86 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %87 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @talloc_steal(%struct.spdifContext* %85, i32 %88)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %90 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %91 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %146 [
    i32 133, label %93
    i32 132, label %95
    i32 131, label %104
    i32 130, label %140
    i32 129, label %142
    i32 128, label %144
  ]

93:                                               ; preds = %74
  %94 = load i32, i32* @AF_FORMAT_S_AAC, align 4
  store i32 %94, i32* %14, align 4
  store i32 48000, i32* %15, align 4
  store i32 2, i32* %13, align 4
  br label %148

95:                                               ; preds = %74
  %96 = load i32, i32* @AF_FORMAT_S_AC3, align 4
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 48000, %101 ]
  store i32 %103, i32* %15, align 4
  store i32 2, i32* %13, align 4
  br label %148

104:                                              ; preds = %74
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @FF_PROFILE_DTS_HD_HRA, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @FF_PROFILE_DTS_HD_MA, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  %115 = icmp eq i32 %113, %114
  br label %116

116:                                              ; preds = %112, %108, %104
  %117 = phi i1 [ true, %108 ], [ true, %104 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @FF_PROFILE_DTS_HD_HRA, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 2, i32 8
  store i32 %123, i32* %17, align 4
  %124 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %125 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %116
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* %17, align 4
  %133 = mul nsw i32 %132, 96000
  %134 = call i32 @av_dict_set_int(i32** %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 0)
  %135 = load i32, i32* @AF_FORMAT_S_DTSHD, align 4
  store i32 %135, i32* %14, align 4
  store i32 192000, i32* %15, align 4
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %13, align 4
  br label %139

137:                                              ; preds = %128, %116
  %138 = load i32, i32* @AF_FORMAT_S_DTS, align 4
  store i32 %138, i32* %14, align 4
  store i32 48000, i32* %15, align 4
  store i32 2, i32* %13, align 4
  br label %139

139:                                              ; preds = %137, %131
  br label %148

140:                                              ; preds = %74
  %141 = load i32, i32* @AF_FORMAT_S_EAC3, align 4
  store i32 %141, i32* %14, align 4
  store i32 192000, i32* %15, align 4
  store i32 2, i32* %13, align 4
  br label %148

142:                                              ; preds = %74
  %143 = load i32, i32* @AF_FORMAT_S_MP3, align 4
  store i32 %143, i32* %14, align 4
  store i32 48000, i32* %15, align 4
  store i32 2, i32* %13, align 4
  br label %148

144:                                              ; preds = %74
  %145 = load i32, i32* @AF_FORMAT_S_TRUEHD, align 4
  store i32 %145, i32* %14, align 4
  store i32 192000, i32* %15, align 4
  store i32 8, i32* %13, align 4
  br label %148

146:                                              ; preds = %74
  %147 = call i32 (...) @abort() #3
  unreachable

148:                                              ; preds = %144, %142, %140, %139, %102, %93
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @mp_chmap_from_channels(%struct.mp_chmap* %18, i32 %149)
  %151 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %152 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mp_aframe_set_chmap(i32 %153, %struct.mp_chmap* %18)
  %155 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %156 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @mp_aframe_set_format(i32 %157, i32 %158)
  %160 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %161 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @mp_aframe_set_rate(i32 %162, i32 %163)
  %165 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %166 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @mp_aframe_get_sstride(i32 %167)
  %169 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %170 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = call i64 @avformat_write_header(%struct.TYPE_11__* %171, i32** %12)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %148
  %175 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %176 = call i32 @MP_FATAL(%struct.mp_filter* %175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %177 = call i32 @av_dict_free(i32** %12)
  br label %182

178:                                              ; preds = %148
  %179 = call i32 @av_dict_free(i32** %12)
  %180 = load %struct.spdifContext*, %struct.spdifContext** %6, align 8
  %181 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  store i32 0, i32* %3, align 4
  br label %187

182:                                              ; preds = %174, %73, %65, %45, %33
  %183 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %184 = call i32 @destroy(%struct.mp_filter* %183)
  %185 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %186 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %185)
  store i32 -1, i32* %3, align 4
  br label %187

187:                                              ; preds = %182, %178
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @determine_codec_params(%struct.mp_filter*, i32*, i32*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @avformat_alloc_context(...) #1

declare dso_local i32 @av_guess_format(i8*, i32*, i32*) #1

declare dso_local i8* @av_mallocz(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_12__* @avio_alloc_context(i8*, i32, i32, %struct.spdifContext*, i32*, i32, i32*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mp_aframe_create(...) #1

declare dso_local i32 @talloc_steal(%struct.spdifContext*, i32) #1

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #1

declare dso_local i32 @mp_chmap_from_channels(%struct.mp_chmap*, i32) #1

declare dso_local i32 @mp_aframe_set_chmap(i32, %struct.mp_chmap*) #1

declare dso_local i32 @mp_aframe_set_format(i32, i32) #1

declare dso_local i32 @mp_aframe_set_rate(i32, i32) #1

declare dso_local i32 @mp_aframe_get_sstride(i32) #1

declare dso_local i64 @avformat_write_header(%struct.TYPE_11__*, i32**) #1

declare dso_local i32 @MP_FATAL(%struct.mp_filter*, i8*) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @destroy(%struct.mp_filter*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
