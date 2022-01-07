; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_fd2sockinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_fd2sockinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__rpc_sockinfo = type { i32, i64, i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@SOCKET_ERROR = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i64 0, align 8
@SO_PROTOCOL_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_fd2sockinfo(i32 %0, %struct.__rpc_sockinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__rpc_sockinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.__rpc_sockinfo* %1, %struct.__rpc_sockinfo** %5, align 8
  store i32 8, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %13 = call i64 @getsockname(i32 %11, %struct.sockaddr* %12, i32* %6)
  %14 = load i64, i64* @SOCKET_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %20 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  store i32 4, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_TYPE, align 4
  %24 = bitcast i32* %7 to i8*
  %25 = call i64 @getsockopt(i32 %21, i32 %22, i32 %23, i8* %24, i32* %6)
  %26 = load i64, i64* @SOCKET_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 (...) @WSAGetLastError()
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %55

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SOCK_DGRAM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %41, i32* %8, align 4
  br label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %55

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %34
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %48 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %51 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %54 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %44, %42, %28, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
