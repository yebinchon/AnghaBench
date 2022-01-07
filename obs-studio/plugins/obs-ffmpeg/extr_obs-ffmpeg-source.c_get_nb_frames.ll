; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_get_nb_frames.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_get_nb_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"num_frames\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Getting number of frames failed: No video stream in media file!\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"nb_frames not set, estimating using frame rate and duration\00", align 1
@AV_TIME_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @get_nb_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_nb_frames(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ffmpeg_source*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %11, %struct.ffmpeg_source** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %13 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @calldata_set_int(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %27 = call i32 @av_find_best_stream(%struct.TYPE_8__* %25, i32 %26, i32 -1, i32 -1, i32* null, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = call i32 @FF_BLOG(i32 %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @calldata_set_int(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %85

36:                                               ; preds = %21
  %37 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %38 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %8, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %81

55:                                               ; preds = %36
  %56 = load i32, i32* @LOG_DEBUG, align 4
  %57 = call i32 @FF_BLOG(i32 %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = bitcast %struct.TYPE_7__* %9 to i8*
  %61 = bitcast %struct.TYPE_7__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %5, align 8
  %63 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = load i64, i64* @AV_TIME_BASE, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %68, %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = fmul double %71, %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = fdiv double %75, %78
  %80 = call i64 @ceil(double %79)
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %55, %51
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @calldata_set_int(i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %81, %30, %17
  ret void
}

declare dso_local i32 @calldata_set_int(i32*, i8*, i64) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_8__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FF_BLOG(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
