; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_seek.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"play: post seek=%ui\00", align 1
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"NetStream.Seek.Notify\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Seeking\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_rtmp_play_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_seek(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %8 = load i32, i32* @ngx_rtmp_play_module, align 4
  %9 = call %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__* %7, i32 %8)
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %11 = icmp eq %struct.TYPE_20__* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NGX_INVALID_FILE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  br label %70

20:                                               ; preds = %12
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ngx_log_debug1(i32 %31, i32 %36, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %70

41:                                               ; preds = %20
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @NGX_RTMP_MSID, align 4
  %44 = call i64 @ngx_rtmp_send_stream_eof(%struct.TYPE_18__* %42, i32 %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @NGX_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %41
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ngx_rtmp_play_do_seek(%struct.TYPE_18__* %50, i64 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = call i64 @ngx_rtmp_send_status(%struct.TYPE_18__* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @NGX_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = load i32, i32* @NGX_RTMP_MSID, align 4
  %64 = call i64 @ngx_rtmp_send_stream_begin(%struct.TYPE_18__* %62, i32 %63)
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @NGX_ERROR, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %25, %19
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = call i32 @next_seek(%struct.TYPE_18__* %71, %struct.TYPE_19__* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %67, %59, %47
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_rtmp_send_stream_eof(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_rtmp_play_do_seek(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @ngx_rtmp_send_status(%struct.TYPE_18__*, i8*, i8*, i8*) #1

declare dso_local i64 @ngx_rtmp_send_stream_begin(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @next_seek(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
