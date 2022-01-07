; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_do_event_loop.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_do_event_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@SUCCESS = common dso_local global i32 0, align 4
@__const.php_cli_server_do_event_loop.tv = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@php_cli_server_recv_event_read_request = common dso_local global i32 0, align 4
@php_cli_server_send_event = common dso_local global i32 0, align 4
@SOCK_EINTR = common dso_local global i32 0, align 4
@php_cli_server_log_level = common dso_local global i64 0, align 8
@PHP_CLI_SERVER_LOG_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @php_cli_server_do_event_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_do_event_loop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @SUCCESS, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.timeval* @__const.php_cli_server_do_event_loop.tv to i8*), i64 8, i1 false)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @php_cli_server_poller_poll(i32* %17, %struct.timeval* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = load i32, i32* @php_cli_server_recv_event_read_request, align 4
  %24 = load i32, i32* @php_cli_server_send_event, align 4
  %25 = call i32 @php_cli_server_do_event_for_each_fd(%struct.TYPE_4__* %22, i32 %23, i32 %24)
  br label %51

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %50

30:                                               ; preds = %26
  %31 = call i32 (...) @php_socket_errno()
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SOCK_EINTR, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i64, i64* @php_cli_server_log_level, align 8
  %37 = load i64, i64* @PHP_CLI_SERVER_LOG_ERROR, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @php_socket_strerror(i32 %40, i32* null, i32 0)
  store i8* %41, i8** %7, align 8
  %42 = load i64, i64* @PHP_CLI_SERVER_LOG_ERROR, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @php_cli_server_logf(i64 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @efree(i8* %45)
  br label %47

47:                                               ; preds = %39, %35
  %48 = load i32, i32* @FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %21
  br label %9

52:                                               ; preds = %9
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @php_cli_server_poller_poll(i32*, %struct.timeval*) #2

declare dso_local i32 @php_cli_server_do_event_for_each_fd(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @php_socket_errno(...) #2

declare dso_local i8* @php_socket_strerror(i32, i32*, i32) #2

declare dso_local i32 @php_cli_server_logf(i64, i8*, i8*) #2

declare dso_local i32 @efree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
