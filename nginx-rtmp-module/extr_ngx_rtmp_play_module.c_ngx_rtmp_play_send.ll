; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_send.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_17__*, i32*, i64*)* }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"play: send schedule %i\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"play: send buffer full\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"play: send restart\00", align 1
@ngx_posted_events = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"play: send done\00", align 1
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"NetStream.Play.Complete\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"NetStream.Play.Stop\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_rtmp_play_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_play_send(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = load i32, i32* @ngx_rtmp_play_module, align 4
  %12 = call %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__* %10, i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = icmp eq %struct.TYPE_15__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_17__*, i32*, i64*)*, i64 (%struct.TYPE_17__*, i32*, i64*)** %24, align 8
  %26 = icmp eq i64 (%struct.TYPE_17__*, i32*, i64*)* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %15, %1
  br label %98

28:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_17__*, i32*, i64*)*, i64 (%struct.TYPE_17__*, i32*, i64*)** %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = call i64 %33(%struct.TYPE_17__* %34, i32* %36, i64* %6)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @ngx_log_debug1(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ngx_add_timer(%struct.TYPE_19__* %49, i64 %50)
  br label %98

52:                                               ; preds = %28
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @NGX_AGAIN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_log_debug0(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = call i32 @ngx_post_event(%struct.TYPE_19__* %64, i32* %66)
  br label %98

68:                                               ; preds = %52
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @NGX_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ngx_log_debug0(i32 %73, i32 %78, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = call i32 @ngx_post_event(%struct.TYPE_19__* %80, i32* @ngx_posted_events)
  br label %98

82:                                               ; preds = %68
  %83 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ngx_log_debug0(i32 %83, i32 %88, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = load i32, i32* @NGX_RTMP_MSID, align 4
  %92 = call i32 @ngx_rtmp_send_stream_eof(%struct.TYPE_17__* %90, i32 %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @ngx_rtmp_send_play_status(%struct.TYPE_17__* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %94, i32 0)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = call i32 @ngx_rtmp_send_status(%struct.TYPE_17__* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %82, %72, %56, %40, %27
  ret void
}

declare dso_local %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ngx_rtmp_send_stream_eof(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_rtmp_send_play_status(%struct.TYPE_17__*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_17__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
