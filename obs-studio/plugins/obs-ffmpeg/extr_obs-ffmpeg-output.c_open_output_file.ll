; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_output_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dstr = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to parse muxer settings: %s\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"\0A\09%s=%s\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Using muxer settings: %s\00", align 1
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Couldn't open '%s', %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error opening '%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Invalid muxer settings: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*)* @open_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_output_file(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_data*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.dstr, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %3, align 8
  %11 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  store i32* null, i32** %6, align 8
  %16 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @av_dict_parse_string(i32** %6, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @av_err2str(i32 %25)
  %27 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %28 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ffmpeg_log_error(i32 %23, %struct.ffmpeg_data* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %30)
  %32 = call i32 @av_dict_free(i32** %6)
  store i32 0, i32* %2, align 4
  br label %152

33:                                               ; preds = %1
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @av_dict_count(i32* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 8, i1 false)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %39

39:                                               ; preds = %45, %37
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %43 = call %struct.TYPE_9__* @av_dict_get(i32* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %41, i32 %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %8, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dstr_catf(%struct.dstr* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %51)
  br label %39

53:                                               ; preds = %39
  %54 = load i32, i32* @LOG_INFO, align 4
  %55 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @blog(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = call i32 @dstr_free(%struct.dstr* %7)
  br label %59

59:                                               ; preds = %53, %33
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AVFMT_NOFILE, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %59
  %67 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %68 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %72 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %76 = call i32 @avio_open2(i32* %70, i32 %74, i32 %75, i32* null, i32** %6)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %66
  %80 = load i32, i32* @LOG_WARNING, align 4
  %81 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %82 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %83 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @av_err2str(i32 %86)
  %88 = call i32 @ffmpeg_log_error(i32 %80, %struct.ffmpeg_data* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %87)
  %89 = call i32 @av_dict_free(i32** %6)
  store i32 0, i32* %2, align 4
  br label %152

90:                                               ; preds = %66
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %93 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %98 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strncpy(i64* %96, i32 %100, i32 8)
  %102 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %103 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 7
  store i64 0, i64* %107, align 8
  %108 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %109 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = call i32 @avformat_write_header(%struct.TYPE_10__* %110, i32** %6)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %91
  %115 = load i32, i32* @LOG_WARNING, align 4
  %116 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %117 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %118 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @av_err2str(i32 %121)
  %123 = call i32 @ffmpeg_log_error(i32 %115, %struct.ffmpeg_data* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %122)
  store i32 0, i32* %2, align 4
  br label %152

124:                                              ; preds = %91
  %125 = load i32*, i32** %6, align 8
  %126 = call i64 @av_dict_count(i32* %125)
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = bitcast %struct.dstr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %129, i8 0, i64 8, i1 false)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %130

130:                                              ; preds = %136, %128
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %134 = call %struct.TYPE_9__* @av_dict_get(i32* %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %132, i32 %133)
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %10, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dstr_catf(%struct.dstr* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142)
  br label %130

144:                                              ; preds = %130
  %145 = load i32, i32* @LOG_INFO, align 4
  %146 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @blog(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = call i32 @dstr_free(%struct.dstr* %9)
  br label %150

150:                                              ; preds = %144, %124
  %151 = call i32 @av_dict_free(i32** %6)
  store i32 1, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %114, %79, %22
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @av_dict_parse_string(i32**, i32, i8*, i8*, i32) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.ffmpeg_data*, i8*, i32, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i64 @av_dict_count(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_9__* @av_dict_get(i32*, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @avio_open2(i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_10__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
