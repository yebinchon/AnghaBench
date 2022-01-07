; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_audio_codec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_audio_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { i32, i32*, i32, %struct.TYPE_10__**, %struct.TYPE_8__, %struct.TYPE_7__** }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate audio frame\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to open audio codec: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create audio buffer: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*, i32)* @open_audio_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_audio_codec(%struct.ffmpeg_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ffmpeg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %9, i32 0, i32 5
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8** @strlist_split(i32 %21, i8 signext 32, i32 0)
  store i8** %22, i8*** %7, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @parse_params(%struct.TYPE_9__* %26, i8** %27)
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @strlist_free(i8** %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = call %struct.TYPE_10__* (...) @av_frame_alloc()
  %33 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %34 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %37
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %38, align 8
  %39 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %50 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %48, %struct.ffmpeg_data* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %151

51:                                               ; preds = %31
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %56 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %55, i32 0, i32 3
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %57, i64 %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  store i32 %54, i32* %62, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %67 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32 %65, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %78 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %76, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %89 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %87, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 -2, i32* %97, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @avcodec_open2(%struct.TYPE_9__* %98, i32 %101, i32* null)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %51
  %106 = load i32, i32* @LOG_WARNING, align 4
  %107 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @av_err2str(i32 %108)
  %110 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %106, %struct.ffmpeg_data* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  store i32 0, i32* %3, align 4
  br label %151

111:                                              ; preds = %51
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ %119, %116 ], [ 1024, %120 ]
  %123 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %124 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %126 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %136 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @av_samples_alloc(i32 %131, i32* null, i32 %134, i32 %137, i32 %140, i32 0)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %121
  %145 = load i32, i32* @LOG_WARNING, align 4
  %146 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @av_err2str(i32 %147)
  %149 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %145, %struct.ffmpeg_data* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  store i32 0, i32* %3, align 4
  br label %151

150:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %144, %105, %47
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i8** @strlist_split(i32, i8 signext, i32) #1

declare dso_local i32 @parse_params(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @strlist_free(i8**) #1

declare dso_local %struct.TYPE_10__* @av_frame_alloc(...) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.ffmpeg_data*, i8*, ...) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_samples_alloc(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
