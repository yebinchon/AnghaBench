; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_open_output_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_open_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_mux = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i64*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't open '%s', %s\00", align 1
@FFM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to parse muxer settings: %s\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Using muxer settings:\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A\09%s=%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Error opening '%s': %s\00", align 1
@FFM_UNSUPPORTED = common dso_local global i32 0, align 4
@FFM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_mux*)* @open_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_output_file(%struct.ffmpeg_mux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_mux*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.ffmpeg_mux* %0, %struct.ffmpeg_mux** %3, align 8
  %8 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AVFMT_NOFILE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %21 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %29 = call i32 @avio_open(i32* %23, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load i32, i32* @stderr, align 4
  %34 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %35 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @av_err2str(i32 %38)
  %40 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %39)
  %41 = load i32, i32* @FFM_ERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %126

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %45 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %50 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strncpy(i64* %48, i8* %52, i32 8)
  %54 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %55 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 7
  store i64 0, i64* %59, align 8
  store i32* null, i32** %6, align 8
  %60 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %61 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @av_dict_parse_string(i32** %6, i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %64, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %43
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i8* @av_err2str(i32 %68)
  %70 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %71 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %73)
  %75 = call i32 @av_dict_free(i32** %6)
  br label %76

76:                                               ; preds = %66, %43
  %77 = load i32*, i32** %6, align 8
  %78 = call i64 @av_dict_count(i32* %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %82

82:                                               ; preds = %88, %80
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %86 = call %struct.TYPE_9__* @av_dict_get(i32* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* %84, i32 %85)
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %7, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %91, i8* %94)
  br label %82

96:                                               ; preds = %82
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %76
  %99 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @avformat_write_header(%struct.TYPE_10__* %101, i32** %6)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load i32, i32* @stderr, align 4
  %107 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %108 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i8* @av_err2str(i32 %111)
  %113 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %110, i8* %112)
  %114 = call i32 @av_dict_free(i32** %6)
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, -22
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @FFM_UNSUPPORTED, align 4
  br label %121

119:                                              ; preds = %105
  %120 = load i32, i32* @FFM_ERROR, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %2, align 4
  br label %126

123:                                              ; preds = %98
  %124 = call i32 @av_dict_free(i32** %6)
  %125 = load i32, i32* @FFM_SUCCESS, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %123, %121, %32
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @avio_open(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @av_dict_parse_string(i32**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i64 @av_dict_count(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @av_dict_get(i32*, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_10__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
