; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_handle_seek.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_handle_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { i32, i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to seek stream: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*)* @handle_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_seek(%struct.ff_demuxer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ff_demuxer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %3, align 8
  %7 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %8 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %13 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %16 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %15, i32 0, i32 6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %5, align 8
  br label %37

25:                                               ; preds = %11
  %26 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %27 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %32 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %5, align 8
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %42 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %41, i32 0, i32 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @av_rescale_q(i64 %49, i32 %50, i32 %53)
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %48, %40, %37
  %56 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %57 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %61 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @av_seek_frame(%struct.TYPE_8__* %58, i32 0, i64 %59, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %55
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @av_err2str(i32 %68)
  %70 = call i32 @av_log(i32* null, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %72 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %74 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %90

75:                                               ; preds = %55
  %76 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %77 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %82 = call i32 @ff_demuxer_flush(%struct.ff_demuxer* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %85 = call i32 @ff_demuxer_reset(%struct.ff_demuxer* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %88 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %1
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_seek_frame(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ff_demuxer_flush(%struct.ff_demuxer*) #1

declare dso_local i32 @ff_demuxer_reset(%struct.ff_demuxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
