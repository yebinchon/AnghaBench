; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_close_stream.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"play: close_stream\00", align 1
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"NetStream.Play.Stop\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Stop video on demand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @ngx_rtmp_play_close_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_close_stream(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = load i32, i32* @ngx_rtmp_play_module, align 4
  %8 = call %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__* %6, i32 %7)
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %10 = icmp eq %struct.TYPE_18__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ngx_log_debug0(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @ngx_rtmp_play_do_stop(%struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = call i32 @ngx_rtmp_play_do_done(%struct.TYPE_17__* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NGX_INVALID_FILE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %12
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ngx_close_file(i64 %34)
  %36 = load i64, i64* @NGX_INVALID_FILE, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = load i32, i32* @NGX_RTMP_MSID, align 4
  %42 = call i32 @ngx_rtmp_send_stream_eof(%struct.TYPE_17__* %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = call i32 @ngx_rtmp_send_status(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %30, %12
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = call i32 @ngx_rtmp_play_cleanup_local_file(%struct.TYPE_17__* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = call i32 @ngx_rtmp_play_leave(%struct.TYPE_17__* %54)
  br label %56

56:                                               ; preds = %53, %11
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @next_close_stream(%struct.TYPE_17__* %57, i32* %58)
  ret i32 %59
}

declare dso_local %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_play_do_stop(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_rtmp_play_do_done(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_close_file(i64) #1

declare dso_local i32 @ngx_rtmp_send_stream_eof(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_17__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_play_cleanup_local_file(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_rtmp_play_leave(%struct.TYPE_17__*) #1

declare dso_local i32 @next_close_stream(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
