; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_bipc.c_nn_bipc_listen.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_bipc.c_nn_bipc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_bipc = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@NN_BIPC_BACKLOG = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_bipc*)* @nn_bipc_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_bipc_listen(%struct.nn_bipc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_bipc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca %struct.sockaddr_un*, align 8
  %7 = alloca i8*, align 8
  store %struct.nn_bipc* %0, %struct.nn_bipc** %3, align 8
  %8 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %9 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @nn_ep_getaddr(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 4)
  %13 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %13, %struct.sockaddr_un** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  %18 = zext i1 %17 to i32
  %19 = call i32 @nn_assert(i32 %18)
  %20 = load i32, i32* @AF_UNIX, align 4
  %21 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sockaddr_un*, %struct.sockaddr_un** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strncpy(i32 %24, i8* %25, i32 4)
  %27 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %28 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %27, i32 0, i32 0
  %29 = load i32, i32* @AF_UNIX, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = call i32 @nn_usock_start(i32* %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %1
  %37 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %38 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %37, i32 0, i32 0
  %39 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %40 = call i32 @nn_usock_bind(i32* %38, %struct.sockaddr* %39, i32 4)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %45 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %44, i32 0, i32 0
  %46 = call i32 @nn_usock_stop(i32* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %36
  %49 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %50 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %49, i32 0, i32 0
  %51 = load i32, i32* @NN_BIPC_BACKLOG, align 4
  %52 = call i32 @nn_usock_listen(i32* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %57 = getelementptr inbounds %struct.nn_bipc, %struct.nn_bipc* %56, i32 0, i32 0
  %58 = call i32 @nn_usock_stop(i32* %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load %struct.nn_bipc*, %struct.nn_bipc** %3, align 8
  %62 = call i32 @nn_bipc_start_accepting(%struct.nn_bipc* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %55, %43, %34
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @nn_ep_getaddr(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @nn_usock_start(i32*, i32, i32, i32) #1

declare dso_local i32 @nn_usock_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @nn_usock_stop(i32*) #1

declare dso_local i32 @nn_usock_listen(i32*, i32) #1

declare dso_local i32 @nn_bipc_start_accepting(%struct.nn_bipc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
