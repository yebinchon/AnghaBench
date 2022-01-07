; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_listen_tcp.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_listen_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%union.socket_address = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_socket_if_listen_tcp(%struct.mg_connection* %0, %union.socket_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %union.socket_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %union.socket_address* %1, %union.socket_address** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %union.socket_address*, %union.socket_address** %5, align 8
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @mg_open_listening_socket(%union.socket_address* %8, i32 %9, i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @INVALID_SOCKET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = call i32 (...) @mg_get_errno()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @mg_get_errno()
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 1, %20 ]
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @mg_sock_set(%struct.mg_connection* %24, i64 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @mg_open_listening_socket(%union.socket_address*, i32, i32) #1

declare dso_local i32 @mg_get_errno(...) #1

declare dso_local i32 @mg_sock_set(%struct.mg_connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
