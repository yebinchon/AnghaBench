; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_test_reading.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_test_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"http test reading\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@ngx_use_epoll_rdhup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_test_reading(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ngx_log_debug0(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* @MSG_PEEK, align 4
  %24 = call i32 @recv(i32 %21, i8* %22, i32 1, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  store i64 0, i64* %5, align 8
  br label %68

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NGX_EAGAIN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %68

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @ngx_event_flags, align 4
  %49 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load i32, i32* @NGX_READ_EVENT, align 4
  %60 = call i64 @ngx_del_event(%struct.TYPE_9__* %58, i32 %59, i32 0)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = call i32 @ngx_http_close_request(%struct.TYPE_8__* %64, i32 0)
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %52, %47
  br label %84

68:                                               ; preds = %40, %27
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @NGX_LOG_INFO, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ngx_log_error(i32 %75, i32 %78, i64 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %83 = call i32 @ngx_http_finalize_request(%struct.TYPE_8__* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
