; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_create_socket.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@SL_AF_INET = common dso_local global i32 0, align 4
@SL_SOCK_STREAM = common dso_local global i32 0, align 4
@SL_IPPROTO_TCP = common dso_local global i32 0, align 4
@telnet_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SL_SOL_SOCKET = common dso_local global i32 0, align 4
@SL_SO_NONBLOCKING = common dso_local global i32 0, align 4
@SL_SOC_OK = common dso_local global i32 0, align 4
@SL_INADDR_ANY = common dso_local global i32 0, align 4
@TELNET_PORT = common dso_local global i32 0, align 4
@TELNET_MAX_CLIENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @telnet_create_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_create_socket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SL_AF_INET, align 4
  %6 = load i32, i32* @SL_SOCK_STREAM, align 4
  %7 = load i32, i32* @SL_IPPROTO_TCP, align 4
  %8 = call i64 @sl_Socket(i32 %5, i32 %6, i32 %7)
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %16 = call i32 @modusocket_socket_add(i64 %15, i32 0)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %19 = load i32, i32* @SL_SOL_SOCKET, align 4
  %20 = load i32, i32* @SL_SO_NONBLOCKING, align 4
  %21 = call i32 @sl_SetSockOpt(i64 %18, i32 %19, i32 %20, %struct.TYPE_7__* %2, i32 4)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @SL_SOC_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @SL_AF_INET, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @SL_INADDR_ANY, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TELNET_PORT, align 4
  %32 = call i32 @sl_Htons(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %35 = bitcast %struct.TYPE_8__* %3 to i32*
  %36 = call i32 @sl_Bind(i64 %34, i32* %35, i32 12)
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @SL_SOC_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0), align 8
  %44 = load i32, i32* @TELNET_MAX_CLIENTS, align 4
  %45 = call i32 @sl_Listen(i64 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @SL_SOC_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SL_SOC_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %59

56:                                               ; preds = %14
  %57 = call i32 @servers_close_socket(i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @telnet_data, i32 0, i32 0))
  br label %58

58:                                               ; preds = %56, %0
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @sl_Socket(i32, i32, i32) #1

declare dso_local i32 @modusocket_socket_add(i64, i32) #1

declare dso_local i32 @sl_SetSockOpt(i64, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @sl_Htons(i32) #1

declare dso_local i32 @sl_Bind(i64, i32*, i32) #1

declare dso_local i32 @sl_Listen(i64, i32) #1

declare dso_local i32 @servers_close_socket(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
