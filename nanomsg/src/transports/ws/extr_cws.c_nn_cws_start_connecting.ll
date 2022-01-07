; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_start_connecting.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_cws.c_nn_cws_start_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_cws = type { i32, i8*, i32, i32, i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }
%struct.sockaddr = type { i32 }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@NN_CWS_STATE_WAITING = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@NN_SNDBUF = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@NN_RCVBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@NN_CWS_STATE_CONNECTING = common dso_local global i8* null, align 8
@NN_STAT_INPROGRESS_CONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_cws*, %struct.sockaddr_storage*, i64)* @nn_cws_start_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cws_start_connecting(%struct.nn_cws* %0, %struct.sockaddr_storage* %1, i64 %2) #0 {
  %4 = alloca %struct.nn_cws*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.nn_cws* %0, %struct.nn_cws** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 8)
  %16 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 8)
  store i64 4, i64* %14, align 8
  %17 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %18 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NN_SOL_SOCKET, align 4
  %21 = load i32, i32* @NN_IPV4ONLY, align 4
  %22 = call i32 @nn_ep_getopt(i32 %19, i32 %20, i32 %21, i32* %12, i64* %14)
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 @nn_assert(i32 %25)
  %27 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %28 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %27, i32 0, i32 5
  %29 = call i32 @nn_chunkref_data(i32* %28)
  %30 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %31 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %30, i32 0, i32 5
  %32 = call i32 @nn_chunkref_size(i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @nn_iface_resolve(i32 %29, i32 %32, i32 %33, %struct.sockaddr_storage* %10, i64* %11)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @nn_slow(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %42 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %41, i32 0, i32 3
  %43 = call i32 @nn_backoff_start(i32* %42)
  %44 = load i8*, i8** @NN_CWS_STATE_WAITING, align 8
  %45 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %46 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %159

47:                                               ; preds = %3
  %48 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %49 = bitcast %struct.sockaddr_storage* %8 to i8*
  %50 = bitcast %struct.sockaddr_storage* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %9, align 8
  %52 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AF_INET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %58 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @htons(i32 %59)
  %61 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %78

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %70 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @htons(i32 %71)
  %73 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %77

75:                                               ; preds = %63
  %76 = call i32 @nn_assert(i32 0)
  br label %77

77:                                               ; preds = %75, %68
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %80 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @SOCK_STREAM, align 4
  %84 = call i32 @nn_usock_start(i32* %80, i64 %82, i32 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @nn_slow(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %92 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %91, i32 0, i32 3
  %93 = call i32 @nn_backoff_start(i32* %92)
  %94 = load i8*, i8** @NN_CWS_STATE_WAITING, align 8
  %95 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %96 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %159

97:                                               ; preds = %78
  store i64 4, i64* %14, align 8
  %98 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %99 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @NN_SOL_SOCKET, align 4
  %102 = load i32, i32* @NN_SNDBUF, align 4
  %103 = call i32 @nn_ep_getopt(i32 %100, i32 %101, i32 %102, i32* %13, i64* %14)
  %104 = load i64, i64* %14, align 8
  %105 = icmp eq i64 %104, 4
  %106 = zext i1 %105 to i32
  %107 = call i32 @nn_assert(i32 %106)
  %108 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %109 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %108, i32 0, i32 2
  %110 = load i32, i32* @SOL_SOCKET, align 4
  %111 = load i32, i32* @SO_SNDBUF, align 4
  %112 = call i32 @nn_usock_setsockopt(i32* %109, i32 %110, i32 %111, i32* %13, i32 4)
  store i64 4, i64* %14, align 8
  %113 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %114 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NN_SOL_SOCKET, align 4
  %117 = load i32, i32* @NN_RCVBUF, align 4
  %118 = call i32 @nn_ep_getopt(i32 %115, i32 %116, i32 %117, i32* %13, i64* %14)
  %119 = load i64, i64* %14, align 8
  %120 = icmp eq i64 %119, 4
  %121 = zext i1 %120 to i32
  %122 = call i32 @nn_assert(i32 %121)
  %123 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %124 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %123, i32 0, i32 2
  %125 = load i32, i32* @SOL_SOCKET, align 4
  %126 = load i32, i32* @SO_RCVBUF, align 4
  %127 = call i32 @nn_usock_setsockopt(i32* %124, i32 %125, i32 %126, i32* %13, i32 4)
  %128 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %129 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %128, i32 0, i32 2
  %130 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @nn_usock_bind(i32* %129, %struct.sockaddr* %130, i64 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i64 @nn_slow(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %97
  %139 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %140 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %139, i32 0, i32 3
  %141 = call i32 @nn_backoff_start(i32* %140)
  %142 = load i8*, i8** @NN_CWS_STATE_WAITING, align 8
  %143 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %144 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %159

145:                                              ; preds = %97
  %146 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %147 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %146, i32 0, i32 2
  %148 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @nn_usock_connect(i32* %147, %struct.sockaddr* %148, i64 %149)
  %151 = load i8*, i8** @NN_CWS_STATE_CONNECTING, align 8
  %152 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %153 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.nn_cws*, %struct.nn_cws** %4, align 8
  %155 = getelementptr inbounds %struct.nn_cws, %struct.nn_cws* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @NN_STAT_INPROGRESS_CONNECTIONS, align 4
  %158 = call i32 @nn_ep_stat_increment(i32 %156, i32 %157, i32 1)
  br label %159

159:                                              ; preds = %145, %138, %90, %40
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @nn_ep_getopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_iface_resolve(i32, i32, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_chunkref_data(i32*) #1

declare dso_local i32 @nn_chunkref_size(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_backoff_start(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @nn_usock_start(i32*, i64, i32, i32) #1

declare dso_local i32 @nn_usock_setsockopt(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @nn_usock_bind(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32 @nn_usock_connect(i32*, %struct.sockaddr*, i64) #1

declare dso_local i32 @nn_ep_stat_increment(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
