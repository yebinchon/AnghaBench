; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_upstream.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_15__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"http upstream process upstream\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reading upstream\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"http upstream delayed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*)* @ngx_http_upstream_process_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_upstream(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %5, align 8
  %18 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = call i32 @ngx_log_debug0(i32 %18, %struct.TYPE_18__* %21, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %36 = call i32 @ngx_connection_error(%struct.TYPE_17__* %34, i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %69

37:                                               ; preds = %2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = call i32 @ngx_log_debug0(i32 %43, %struct.TYPE_18__* %46, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = call i64 @ngx_handle_read_event(%struct.TYPE_15__* %48, i32 0)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load i32, i32* @NGX_ERROR, align 4
  %56 = call i32 @ngx_http_upstream_finalize_request(i32* %53, %struct.TYPE_14__* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %42
  br label %73

58:                                               ; preds = %37
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = call i64 @ngx_event_pipe(%struct.TYPE_16__* %59, i32 0)
  %61 = load i64, i64* @NGX_ABORT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load i32, i32* @NGX_ERROR, align 4
  %67 = call i32 @ngx_http_upstream_finalize_request(i32* %64, %struct.TYPE_14__* %65, i32 %66)
  br label %73

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = call i32 @ngx_http_upstream_process_request(i32* %70, %struct.TYPE_14__* %71)
  br label %73

73:                                               ; preds = %69, %63, %57
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_event_pipe(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_upstream_process_request(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
