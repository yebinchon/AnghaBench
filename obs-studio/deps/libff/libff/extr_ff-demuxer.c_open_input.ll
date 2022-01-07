; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_open_input.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_open_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ff_demuxer*, i32 }

@demuxer_interrupted_callback = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to find input format %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*, %struct.TYPE_10__**)* @open_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_input(%struct.ff_demuxer* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_demuxer*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* @demuxer_interrupted_callback, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store %struct.ff_demuxer* %10, %struct.ff_demuxer** %11, align 8
  %12 = call %struct.TYPE_10__* (...) @avformat_alloc_context()
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %13, align 8
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = bitcast %struct.TYPE_9__* %16 to i8*
  %18 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %20 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %25 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @av_find_input_format(i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @AV_LOG_WARNING, align 4
  %32 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %33 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @av_log(i32* null, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %36

36:                                               ; preds = %30, %23
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %39 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %40 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.ff_demuxer*, %struct.ff_demuxer** %4, align 8
  %44 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i64 @avformat_open_input(%struct.TYPE_10__** %38, i32 %41, i32* %42, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i64 @avformat_find_stream_info(%struct.TYPE_10__* %51, i32* null)
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %48
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_10__* @avformat_alloc_context(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @av_find_input_format(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32*) #1

declare dso_local i64 @avformat_open_input(%struct.TYPE_10__**, i32, i32*, i32*) #1

declare dso_local i64 @avformat_find_stream_info(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
