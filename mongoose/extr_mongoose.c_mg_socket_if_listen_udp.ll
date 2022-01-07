; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_listen_udp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_listen_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%union.socket_address = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, %union.socket_address*)* @mg_socket_if_listen_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_socket_if_listen_udp(%struct.mg_connection* %0, %union.socket_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %union.socket_address*, align 8
  %6 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %union.socket_address* %1, %union.socket_address** %5, align 8
  %7 = load %union.socket_address*, %union.socket_address** %5, align 8
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i64 @mg_open_listening_socket(%union.socket_address* %7, i32 %8, i32 0)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @INVALID_SOCKET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call i32 (...) @mg_get_errno()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @mg_get_errno()
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 1, %18 ]
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @mg_sock_set(%struct.mg_connection* %22, i64 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
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
