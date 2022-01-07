; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_decoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8* }

@AV_CODEC_ID_PNG = common dso_local global i64 0, align 8
@AV_CODEC_ID_TIFF = common dso_local global i64 0, align 8
@AV_CODEC_ID_JPEG2000 = common dso_local global i64 0, align 8
@AV_CODEC_ID_WEBP = common dso_local global i64 0, align 8
@get_hwaccel_format = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"no hardware decoder found for codec with id %d\00", align 1
@AV_CODEC_ID_VP8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"libvpx\00", align 1
@AV_CODEC_ID_VP9 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"libvpx-vp9\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"no decoder found for codec with id %d\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unable to open decoder with codec id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*, %struct.TYPE_12__*)* @find_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_decoder(%struct.ff_demuxer* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_demuxer*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AV_CODEC_ID_PNG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AV_CODEC_ID_TIFF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_CODEC_ID_JPEG2000, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_WEBP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30, %24, %2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %47 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %45
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call %struct.TYPE_13__* @find_hwaccel_codec(%struct.TYPE_14__* %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %11, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32* @avcodec_find_decoder_by_name(i8* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @get_hwaccel_format, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i64 @avcodec_open2(%struct.TYPE_14__* %73, i32* %74, i32** %8)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %63
  %80 = load i32, i32* @AV_LOG_WARNING, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %89, align 8
  br label %92

90:                                               ; preds = %63
  %91 = load i32*, i32** %12, align 8
  store i32* %91, i32** %7, align 8
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %79
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93, %51
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32*, i32** %7, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %144

98:                                               ; preds = %95
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32* @avcodec_find_decoder_by_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %105, i32** %7, align 8
  br label %115

106:                                              ; preds = %98
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AV_CODEC_ID_VP9, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32* @avcodec_find_decoder_by_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %113, i32** %7, align 8
  br label %114

114:                                              ; preds = %112, %106
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i32*, i32** %7, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32* @avcodec_find_decoder(i64 %121)
  store i32* %122, i32** %7, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32*, i32** %7, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* @AV_LOG_WARNING, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @av_log(i32* null, i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %130)
  store i32 0, i32* %3, align 4
  br label %150

132:                                              ; preds = %123
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i64 @avcodec_open2(%struct.TYPE_14__* %133, i32* %134, i32** %8)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @AV_LOG_WARNING, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @av_log(i32* null, i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %141)
  store i32 0, i32* %3, align 4
  br label %150

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %95
  %145 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @initialize_decoder(%struct.ff_demuxer* %145, %struct.TYPE_14__* %146, %struct.TYPE_12__* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %137, %126
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_13__* @find_hwaccel_codec(%struct.TYPE_14__*) #1

declare dso_local i32* @avcodec_find_decoder_by_name(i8*) #1

declare dso_local i64 @avcodec_open2(%struct.TYPE_14__*, i32*, i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i64) #1

declare dso_local i32* @avcodec_find_decoder(i64) #1

declare dso_local i32 @initialize_decoder(%struct.ff_demuxer*, %struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
