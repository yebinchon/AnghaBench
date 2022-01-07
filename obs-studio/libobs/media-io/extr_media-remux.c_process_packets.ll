; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_media-remux.c_process_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_media-remux.c_process_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { float, i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"media_remux: Error reading packet: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"media_remux: Error muxing packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32 (i8*, float)*, i8*)* @process_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_packets(%struct.TYPE_10__* %0, i32 (i8*, float)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32 (i8*, float)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 (i8*, float)* %1, i32 (i8*, float)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %83, %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = call i32 @av_read_frame(%struct.TYPE_12__* %14, %struct.TYPE_11__* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AVERROR_EOF, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @LOG_ERROR, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @av_err2str(i32 %24)
  %26 = call i32 @blog(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %84

28:                                               ; preds = %11
  %29 = load i32 (i8*, float)*, i32 (i8*, float)** %5, align 8
  %30 = icmp ne i32 (i8*, float)* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = icmp sgt i32 %32, 10
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %37 = load float, float* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to float
  %42 = fdiv float %37, %41
  %43 = fmul float %42, 1.000000e+02
  store float %43, float* %10, align 4
  %44 = load i32 (i8*, float)*, i32 (i8*, float)** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load float, float* %10, align 4
  %47 = call i32 %44(i8* %45, float %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %84

50:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %31, %28
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @process_packet(%struct.TYPE_11__* %7, i32 %60, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = call i32 @av_interleaved_write_frame(%struct.TYPE_13__* %73, %struct.TYPE_11__* %7)
  store i32 %74, i32* %8, align 4
  %75 = call i32 @av_packet_unref(%struct.TYPE_11__* %7)
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %51
  %79 = load i32, i32* @LOG_ERROR, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @av_err2str(i32 %80)
  %82 = call i32 @blog(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %51
  br label %11

84:                                               ; preds = %78, %49, %27
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @av_read_frame(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @process_packet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
