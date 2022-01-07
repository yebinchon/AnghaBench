; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_log_muxer_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_log_muxer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32 }
%struct.dstr = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to parse muxer settings: %s\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"\0A\09%s=%s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Using muxer settings:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, i8*)* @log_muxer_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_muxer_params(%struct.ffmpeg_muxer* %0, i8* %1) #0 {
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @av_dict_parse_string(i32** %6, i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @av_err2str(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* %15)
  %17 = call i32 @av_dict_free(i32** %6)
  br label %45

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @av_dict_count(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %24

24:                                               ; preds = %30, %22
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %28 = call %struct.TYPE_4__* @av_dict_get(i32* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %26, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dstr_catf(%struct.dstr* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %36)
  br label %24

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = call i32 @dstr_free(%struct.dstr* %7)
  br label %43

43:                                               ; preds = %38, %18
  %44 = call i32 @av_dict_free(i32** %6)
  br label %45

45:                                               ; preds = %43, %12
  ret void
}

declare dso_local i32 @av_dict_parse_string(i32**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, i32, i8*) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i64 @av_dict_count(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
