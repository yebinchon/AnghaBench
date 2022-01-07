; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_udp_wsarecv.c_ngx_udp_wsarecv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_udp_wsarecv.c_ngx_udp_wsarecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WSARecv: fd:%d rc:%d %ul of %z\00", align 1
@ngx_socket_errno = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"WSARecv() not ready\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"WSARecv() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_udp_wsarecv(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.TYPE_9__], align 16
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 16
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %25 = call i32 @WSARecv(i32 %23, %struct.TYPE_9__* %24, i32 1, i64* %9, i64* %10, i32* null, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ngx_log_debug4(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i64 %34, i64 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %64

42:                                               ; preds = %3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @ngx_log_debug0(i32 %50, i32 %53, i64 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %56, i64* %4, align 8
  br label %66

57:                                               ; preds = %42
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @ngx_connection_error(%struct.TYPE_8__* %60, i64 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %4, align 8
  br label %66

64:                                               ; preds = %3
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %57, %49
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32 @WSARecv(i32, %struct.TYPE_9__*, i32, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_8__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
