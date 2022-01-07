; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_streaming_read.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_streaming_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.pollfd = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"dvb_streaming_read(%d)\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"dvb_streaming_read, failed with errno %d when reading %d bytes\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ret (%d) bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"dvb_streaming_read, return 0 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @dvb_streaming_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_streaming_read(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.pollfd], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MP_TRACE(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %75, %74, %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @read(i32 %35, i8* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  br label %82

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @POLLIN, align 4
  %60 = load i32, i32* @POLLPRI, align 4
  %61 = or i32 %59, %60
  %62 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %63 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %65 = call i64 @poll(%struct.pollfd* %64, i32 1, i32 2000)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i64, i64* @errno, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_ERR(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %72)
  store i64 0, i64* @errno, align 8
  br label %82

74:                                               ; preds = %53
  br label %30

75:                                               ; preds = %34
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @MP_TRACE(%struct.TYPE_8__* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %30

82:                                               ; preds = %67, %52, %30
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = call i32 (%struct.TYPE_8__*, i8*, ...) @MP_ERR(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = call i32 @dvb_update_config(%struct.TYPE_8__* %89)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @MP_TRACE(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @dvb_update_config(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
