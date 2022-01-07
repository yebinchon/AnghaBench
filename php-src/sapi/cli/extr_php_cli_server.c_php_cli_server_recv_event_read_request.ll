; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_recv_event_read_request.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_recv_event_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@php_cli_server_request_error_unexpected_eof = common dso_local global i32 0, align 4
@s_start_req = common dso_local global i64 0, align 8
@PHP_CLI_SERVER_LOG_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"%s Closed without sending a request; it was probably just an unused speculative preconnection\00", align 1
@PHP_CLI_SERVER_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s Invalid request (%s)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@PHP_HTTP_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @php_cli_server_recv_event_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_recv_event_read_request(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = call i32 @php_cli_server_client_read_request(%struct.TYPE_16__* %8, i8** %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @php_cli_server_request_error_unexpected_eof, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @s_start_req, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @PHP_CLI_SERVER_LOG_MESSAGE, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, i32, ...) @php_cli_server_logf(i32 %28, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %40

33:                                               ; preds = %20, %15
  %34 = load i32, i32* @PHP_CLI_SERVER_LOG_ERROR, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i32, i8*, i32, ...) @php_cli_server_logf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @efree(i8* %41)
  br label %43

43:                                               ; preds = %40, %12
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = call i32 @php_cli_server_close_connection(%struct.TYPE_17__* %44, %struct.TYPE_16__* %45)
  %47 = load i32, i32* @FAILURE, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PHP_HTTP_NOT_IMPLEMENTED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = call i32 @php_cli_server_send_error_page(%struct.TYPE_17__* %59, %struct.TYPE_16__* %60, i32 501)
  store i32 %61, i32* %3, align 4
  br label %88

62:                                               ; preds = %51, %48
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* @POLLIN, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @php_cli_server_poller_remove(i32* %67, i32 %68, i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = call i32 @php_cli_server_dispatch(%struct.TYPE_17__* %73, %struct.TYPE_16__* %74)
  br label %84

76:                                               ; preds = %62
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* @POLLIN, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @php_cli_server_poller_add(i32* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %65
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %58, %43
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @php_cli_server_client_read_request(%struct.TYPE_16__*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @php_cli_server_logf(i32, i8*, i32, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @php_cli_server_close_connection(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @php_cli_server_send_error_page(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @php_cli_server_poller_remove(i32*, i32, i32) #1

declare dso_local i32 @php_cli_server_dispatch(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @php_cli_server_poller_add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
