; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_init_context.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_mux = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Couldn't find an appropriate muxer for '%s'\0A\00", align 1
@FFM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't initialize output context: %s\0A\00", align 1
@AV_CODEC_ID_NONE = common dso_local global i8* null, align 8
@FFM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_mux*)* @ffmpeg_mux_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_mux_init_context(%struct.ffmpeg_mux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_mux*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ffmpeg_mux* %0, %struct.ffmpeg_mux** %3, align 8
  %6 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %7 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32* @av_guess_format(i32* null, i8* %9, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %16 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @FFM_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %22, i32 0, i32 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @avformat_alloc_output_context2(%struct.TYPE_6__** %23, i32* %24, i32* null, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @av_err2str(i32 %30)
  %32 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @FFM_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %21
  %35 = load i8*, i8** @AV_CODEC_ID_NONE, align 8
  %36 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %37 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %35, i8** %41, align 8
  %42 = load i8*, i8** @AV_CODEC_ID_NONE, align 8
  %43 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %42, i8** %48, align 8
  %49 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %50 = call i32 @init_streams(%struct.ffmpeg_mux* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %34
  %53 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %54 = call i32 @free_avformat(%struct.ffmpeg_mux* %53)
  %55 = load i32, i32* @FFM_ERROR, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %34
  %57 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %58 = call i32 @open_output_file(%struct.ffmpeg_mux* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @FFM_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %3, align 8
  %64 = call i32 @free_avformat(%struct.ffmpeg_mux* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @FFM_SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %62, %52, %28, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @av_guess_format(i32*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_6__**, i32*, i32*, i32*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @init_streams(%struct.ffmpeg_mux*) #1

declare dso_local i32 @free_avformat(%struct.ffmpeg_mux*) #1

declare dso_local i32 @open_output_file(%struct.ffmpeg_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
