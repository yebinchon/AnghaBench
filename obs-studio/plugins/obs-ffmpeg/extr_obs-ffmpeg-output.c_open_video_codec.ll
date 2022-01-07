; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_video_codec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_open_video_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_data = type { %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"libx264\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [79 x i8] c"If you're trying to set x264 parameters, use x264-params=name=value:name=value\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to open video codec: %s\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to allocate video frame\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to allocate vframe: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_data*)* @open_video_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_video_codec(%struct.ffmpeg_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_data*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.ffmpeg_data* %0, %struct.ffmpeg_data** %3, align 8
  %7 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %8 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %7, i32 0, i32 3
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %13 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i8** @strlist_split(i32 %15, i8 signext 32, i32 0)
  store i8** %16, i8*** %5, align 8
  %17 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @av_opt_set(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i8**, i8*** %5, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @parse_params(%struct.TYPE_11__* %33, i8** %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %39 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @LOG_WARNING, align 4
  %47 = call i32 @blog(i32 %46, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37, %32
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @strlist_free(i8** %49)
  br label %51

51:                                               ; preds = %48, %29
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %54 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @avcodec_open2(%struct.TYPE_11__* %52, %struct.TYPE_12__* %55, i32* null)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i32, i32* @LOG_WARNING, align 4
  %61 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @av_err2str(i32 %62)
  %64 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %60, %struct.ffmpeg_data* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 0, i32* %2, align 4
  br label %129

65:                                               ; preds = %51
  %66 = call %struct.TYPE_13__* (...) @av_frame_alloc()
  %67 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %68 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %67, i32 0, i32 0
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %68, align 8
  %69 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %70 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @LOG_WARNING, align 4
  %75 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %76 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %74, %struct.ffmpeg_data* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

77:                                               ; preds = %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %82 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %89 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %96 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %104 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  %107 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %108 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %112 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %116 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = call i32 (...) @base_get_alignment()
  %119 = call i32 @av_frame_get_buffer(%struct.TYPE_13__* %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %77
  %123 = load i32, i32* @LOG_WARNING, align 4
  %124 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @av_err2str(i32 %125)
  %127 = call i32 (i32, %struct.ffmpeg_data*, i8*, ...) @ffmpeg_log_error(i32 %123, %struct.ffmpeg_data* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  store i32 0, i32* %2, align 4
  br label %129

128:                                              ; preds = %77
  store i32 1, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %122, %73, %59
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8** @strlist_split(i32, i8 signext, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @av_opt_set(i32, i8*, i8*, i32) #1

declare dso_local i32 @parse_params(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @strlist_free(i8**) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.ffmpeg_data*, i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local %struct.TYPE_13__* @av_frame_alloc(...) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @base_get_alignment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
