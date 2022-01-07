; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_cipc.c_nn_cipc_start_connecting.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_cipc.c_nn_cipc_start_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_cipc = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@NN_CIPC_STATE_WAITING = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_SNDBUF = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@NN_RCVBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@NN_CIPC_STATE_CONNECTING = common dso_local global i32 0, align 4
@NN_STAT_INPROGRESS_CONNECTIONS = common dso_local global i32 0, align 4
@NN_IPC = common dso_local global i32 0, align 4
@NN_IPC_INBUFSZ = common dso_local global i32 0, align 4
@NN_IPC_OUTBUFSZ = common dso_local global i32 0, align 4
@NN_IPC_SEC_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_cipc*)* @nn_cipc_start_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cipc_start_connecting(%struct.nn_cipc* %0) #0 {
  %2 = alloca %struct.nn_cipc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nn_cipc* %0, %struct.nn_cipc** %2, align 8
  %9 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %10 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %9, i32 0, i32 2
  %11 = load i32, i32* @AF_UNIX, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @nn_usock_start(%struct.TYPE_4__* %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @nn_slow(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %21 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %20, i32 0, i32 3
  %22 = call i32 @nn_backoff_start(i32* %21)
  %23 = load i32, i32* @NN_CIPC_STATE_WAITING, align 4
  %24 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %25 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %88

26:                                               ; preds = %1
  store i64 4, i64* %8, align 8
  %27 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %28 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NN_SOL_SOCKET, align 4
  %31 = load i32, i32* @NN_SNDBUF, align 4
  %32 = call i32 @nn_ep_getopt(i32 %29, i32 %30, i32 %31, i32* %7, i64* %8)
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @nn_assert(i32 %35)
  %37 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %38 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %37, i32 0, i32 2
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_SNDBUF, align 4
  %41 = call i32 @nn_usock_setsockopt(%struct.TYPE_4__* %38, i32 %39, i32 %40, i32* %7, i32 4)
  store i64 4, i64* %8, align 8
  %42 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %43 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NN_SOL_SOCKET, align 4
  %46 = load i32, i32* @NN_RCVBUF, align 4
  %47 = call i32 @nn_ep_getopt(i32 %44, i32 %45, i32 %46, i32* %7, i64* %8)
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 4
  %50 = zext i1 %49 to i32
  %51 = call i32 @nn_assert(i32 %50)
  %52 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %53 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %52, i32 0, i32 2
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = load i32, i32* @SO_RCVBUF, align 4
  %56 = call i32 @nn_usock_setsockopt(%struct.TYPE_4__* %53, i32 %54, i32 %55, i32* %7, i32 4)
  %57 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %58 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @nn_ep_getaddr(i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = call i32 @memset(%struct.sockaddr_storage* %4, i32 0, i32 4)
  %62 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %62, %struct.sockaddr_un** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  %67 = zext i1 %66 to i32
  %68 = call i32 @nn_assert(i32 %67)
  %69 = load i32, i32* @AF_UNIX, align 4
  %70 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %72 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strncpy(i32 %73, i8* %74, i32 4)
  %76 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %77 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %76, i32 0, i32 2
  %78 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %79 = call i32 @nn_usock_connect(%struct.TYPE_4__* %77, %struct.sockaddr* %78, i32 4)
  %80 = load i32, i32* @NN_CIPC_STATE_CONNECTING, align 4
  %81 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %82 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nn_cipc*, %struct.nn_cipc** %2, align 8
  %84 = getelementptr inbounds %struct.nn_cipc, %struct.nn_cipc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NN_STAT_INPROGRESS_CONNECTIONS, align 4
  %87 = call i32 @nn_ep_stat_increment(i32 %85, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @nn_usock_start(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_backoff_start(i32*) #1

declare dso_local i32 @nn_ep_getopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_usock_setsockopt(%struct.TYPE_4__*, i32, i32, i32*, i32) #1

declare dso_local i8* @nn_ep_getaddr(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @nn_usock_connect(%struct.TYPE_4__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @nn_ep_stat_increment(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
