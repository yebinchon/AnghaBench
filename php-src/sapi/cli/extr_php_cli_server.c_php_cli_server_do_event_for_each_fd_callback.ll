; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_do_event_for_each_fd_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_do_event_for_each_fd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@php_cli_server_log_level = common dso_local global i64 0, align 8
@PHP_CLI_SERVER_LOG_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to accept a client (reason: %s)\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create a new request object\00", align 1
@PHP_CLI_SERVER_LOG_MESSAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%s Accepted\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @php_cli_server_do_event_for_each_fd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_do_event_for_each_fd_callback(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @pemalloc(i32 %32, i32 1)
  %34 = bitcast i8* %33 to %struct.sockaddr*
  store %struct.sockaddr* %34, %struct.sockaddr** %13, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %39 = call i32 @accept(i32 %37, %struct.sockaddr* %38, i32* %12)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ZEND_VALID_SOCKET(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %26
  %44 = load i64, i64* @php_cli_server_log_level, align 8
  %45 = load i64, i64* @PHP_CLI_SERVER_LOG_ERROR, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call i32 (...) @php_socket_errno()
  %49 = call i8* @php_socket_strerror(i32 %48, i32* null, i32 0)
  store i8* %49, i8** %14, align 8
  %50 = load i64, i64* @PHP_CLI_SERVER_LOG_ERROR, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 (i64, i8*, ...) @php_cli_server_logf(i64 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @efree(i8* %53)
  br label %55

55:                                               ; preds = %47, %43
  %56 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %57 = call i32 @pefree(%struct.sockaddr* %56, i32 1)
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %141

59:                                               ; preds = %26
  %60 = load i32, i32* @SUCCESS, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @php_set_sock_blocking(i32 %61, i32 0)
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %66 = call i32 @pefree(%struct.sockaddr* %65, i32 1)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @closesocket(i32 %67)
  %69 = load i32, i32* @SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %141

70:                                               ; preds = %59
  %71 = call i8* @pemalloc(i32 16, i32 1)
  %72 = bitcast i8* %71 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %10, align 8
  %73 = load i64, i64* @FAILURE, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @php_cli_server_client_ctor(%struct.TYPE_13__* %74, %struct.TYPE_14__* %75, i32 %76, %struct.sockaddr* %77, i32 %78)
  %80 = icmp eq i64 %73, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load i64, i64* @PHP_CLI_SERVER_LOG_ERROR, align 8
  %83 = call i32 (i64, i8*, ...) @php_cli_server_logf(i64 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %85 = call i32 @pefree(%struct.sockaddr* %84, i32 1)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @closesocket(i32 %86)
  %88 = load i32, i32* @SUCCESS, align 4
  store i32 %88, i32* %4, align 4
  br label %141

89:                                               ; preds = %70
  %90 = load i64, i64* @PHP_CLI_SERVER_LOG_MESSAGE, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i64, i8*, ...) @php_cli_server_logf(i64 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = call i32 @zend_hash_index_update_ptr(i32* %96, i32 %97, %struct.TYPE_13__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* @POLLIN, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @php_cli_server_poller_add(i32* %101, i32 %102, i32 %105)
  br label %139

107:                                              ; preds = %3
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %6, align 4
  %111 = call %struct.TYPE_13__* @zend_hash_index_find_ptr(i32* %109, i32 %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %15, align 8
  %112 = icmp ne %struct.TYPE_13__* null, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @POLLIN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %124 = call i32 %121(%struct.TYPE_14__* %122, %struct.TYPE_13__* %123)
  br label %125

125:                                              ; preds = %118, %113
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @POLLOUT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)** %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %136 = call i32 %133(%struct.TYPE_14__* %134, %struct.TYPE_13__* %135)
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %137, %107
  br label %139

139:                                              ; preds = %138, %89
  %140 = load i32, i32* @SUCCESS, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %81, %64, %55
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i8* @pemalloc(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ZEND_VALID_SOCKET(i32) #1

declare dso_local i8* @php_socket_strerror(i32, i32*, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i32 @php_cli_server_logf(i64, i8*, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @pefree(%struct.sockaddr*, i32) #1

declare dso_local i32 @php_set_sock_blocking(i32, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i64 @php_cli_server_client_ctor(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @zend_hash_index_update_ptr(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @php_cli_server_poller_add(i32*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @zend_hash_index_find_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
