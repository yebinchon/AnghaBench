; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_lavf.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_lavf.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_12__*, i32*)* }
%struct.stream_avseek = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i8* (i8*)* }
%struct.mp_tags = type { i32 }

@control.has_read_seek = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"rtmp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rtmpt\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rtmpe\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rtmpte\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rtmps\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rtmpts\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mmsh\00", align 1
@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.stream_avseek*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %116 [
    i32 130, label %19
    i32 128, label %39
    i32 129, label %105
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.stream_avseek*
  store %struct.stream_avseek* %21, %struct.stream_avseek** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = load %struct.stream_avseek*, %struct.stream_avseek** %9, align 8
  %24 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stream_avseek*, %struct.stream_avseek** %9, align 8
  %27 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.stream_avseek*, %struct.stream_avseek** %9, align 8
  %30 = getelementptr inbounds %struct.stream_avseek, %struct.stream_avseek* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @avio_seek_time(%struct.TYPE_12__* %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = call i32 @stream_drop_buffers(%struct.TYPE_11__* %36)
  store i32 1, i32* %4, align 4
  br label %118

38:                                               ; preds = %19
  br label %116

39:                                               ; preds = %3
  store i8* null, i8** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8* (%struct.TYPE_12__*, i32*)*, i8* (%struct.TYPE_12__*, i32*)** %48, align 8
  %50 = icmp ne i8* (%struct.TYPE_12__*, i32*)* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i8* (%struct.TYPE_12__*, i32*)*, i8* (%struct.TYPE_12__*, i32*)** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = call i8* %56(%struct.TYPE_12__* %57, i32* null)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = bitcast i8* %59 to %struct.TYPE_13__**
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %13, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i8* (i8*)*, i8* (i8*)** %66, align 8
  %68 = icmp ne i8* (i8*)* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i8* (i8*)*, i8* (i8*)** %71, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i8* %72(i8* %73)
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %69, %64, %51
  br label %76

76:                                               ; preds = %75, %44, %39
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %101, %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i8*], [8 x i8*]* @control.has_read_seek, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i8*], [8 x i8*]* @control.has_read_seek, i64 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* %92, i8* %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 1, i32* %4, align 4
  br label %118

100:                                              ; preds = %91, %88, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %77

104:                                              ; preds = %77
  br label %116

105:                                              ; preds = %3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = call %struct.mp_tags* @read_icy(%struct.TYPE_11__* %106)
  %108 = load i8*, i8** %7, align 8
  %109 = bitcast i8* %108 to %struct.mp_tags**
  store %struct.mp_tags* %107, %struct.mp_tags** %109, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = bitcast i8* %110 to %struct.mp_tags**
  %112 = load %struct.mp_tags*, %struct.mp_tags** %111, align 8
  %113 = icmp ne %struct.mp_tags* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %118

116:                                              ; preds = %3, %114, %104, %38
  %117 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %115, %99, %35
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @avio_seek_time(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @stream_drop_buffers(%struct.TYPE_11__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.mp_tags* @read_icy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
