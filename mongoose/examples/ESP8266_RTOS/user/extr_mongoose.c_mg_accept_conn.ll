; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_accept_conn.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_accept_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%union.socket_address = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%p: failed to accept: %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%p conn from %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*)* @mg_accept_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_accept_conn(%struct.mg_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %union.socket_address, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store i32 8, i32* %6, align 4
  %8 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.socket_address* %5 to i32*
  %12 = call i64 @accept(i32 %10, i32* %11, i32* %6)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @INVALID_SOCKET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = call i64 (...) @mg_is_error()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %21 = call i32 (...) @mg_get_errno()
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DBG(i8* %23)
  br label %25

25:                                               ; preds = %19, %16
  store i32 0, i32* %2, align 4
  br label %53

26:                                               ; preds = %1
  %27 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %28 = call %struct.mg_connection* @mg_if_accept_new_conn(%struct.mg_connection* %27)
  store %struct.mg_connection* %28, %struct.mg_connection** %4, align 8
  %29 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %30 = icmp eq %struct.mg_connection* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @closesocket(i64 %32)
  store i32 0, i32* %2, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = bitcast %union.socket_address* %5 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @inet_ntoa(i32 %38)
  %40 = bitcast %union.socket_address* %5 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @DBG(i8* %45)
  %47 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @mg_sock_set(%struct.mg_connection* %47, i64 %48)
  %50 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @mg_if_accept_tcp_cb(%struct.mg_connection* %50, %union.socket_address* %5, i32 %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %34, %31, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @accept(i32, i32*, i32*) #1

declare dso_local i64 @mg_is_error(...) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mg_get_errno(...) #1

declare dso_local %struct.mg_connection* @mg_if_accept_new_conn(%struct.mg_connection*) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @mg_sock_set(%struct.mg_connection*, i64) #1

declare dso_local i32 @mg_if_accept_tcp_cb(%struct.mg_connection*, %union.socket_address*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
