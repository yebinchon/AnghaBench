; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_demux_close_lavf.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_demux_close_lavf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.stream_info**, %struct.TYPE_17__*, %struct.TYPE_11__*, %struct.TYPE_16__* }
%struct.stream_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_16__ = type { i32* }

@.str = private unnamed_addr constant [45 x i8] c"Leaking %d nested connections (FFmpeg bug).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @demux_close_lavf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_close_lavf(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_info*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %116

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32* [ %22, %17 ], [ null, %23 ]
  store i32* %25, i32** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 7
  %28 = call i32 @avformat_close_input(%struct.TYPE_16__** %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %33, %24
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MP_WARN(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = icmp ne %struct.TYPE_17__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = call i32 @av_freep(%struct.TYPE_17__** %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = call i32 @av_freep(%struct.TYPE_17__** %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %98, %67
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load %struct.stream_info**, %struct.stream_info*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.stream_info*, %struct.stream_info** %80, i64 %82
  %84 = load %struct.stream_info*, %struct.stream_info** %83, align 8
  store %struct.stream_info* %84, %struct.stream_info** %6, align 8
  %85 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %86 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %91 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = call i32 @avcodec_parameters_free(i32* %95)
  br label %97

97:                                               ; preds = %89, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @free_stream(i32 %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = call i32 @talloc_free(%struct.TYPE_14__* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %115, align 8
  br label %116

116:                                              ; preds = %111, %1
  ret void
}

declare dso_local i32 @avformat_close_input(%struct.TYPE_16__**) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_17__**) #1

declare dso_local i32 @avcodec_parameters_free(i32*) #1

declare dso_local i32 @free_stream(i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
