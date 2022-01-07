; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_ctcp.c_nn_ctcp_start_connecting.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_ctcp.c_nn_ctcp_start_connecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ctcp = type { i32, i8*, i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }
%struct.sockaddr = type { i32 }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_IPV4ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@NN_CTCP_STATE_WAITING = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@NN_SNDBUF = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@NN_RCVBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@NN_TCP = common dso_local global i32 0, align 4
@NN_TCP_NODELAY = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@NN_CTCP_STATE_CONNECTING = common dso_local global i8* null, align 8
@NN_STAT_INPROGRESS_CONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_ctcp*, %struct.sockaddr_storage*, i64)* @nn_ctcp_start_connecting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ctcp_start_connecting(%struct.nn_ctcp* %0, %struct.sockaddr_storage* %1, i64 %2) #0 {
  %4 = alloca %struct.nn_ctcp*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.nn_ctcp* %0, %struct.nn_ctcp** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %22 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @nn_ep_getaddr(i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 8)
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 58)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @nn_port_resolve(i8* %34, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @errnum_assert(i32 %45, i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %16, align 4
  store i64 4, i64* %18, align 8
  %50 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %51 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NN_SOL_SOCKET, align 4
  %54 = load i32, i32* @NN_IPV4ONLY, align 4
  %55 = call i32 @nn_ep_getopt(i32 %52, i32 %53, i32 %54, i32* %17, i64* %18)
  %56 = load i64, i64* %18, align 8
  %57 = icmp eq i64 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @nn_assert(i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 59)
  store i8* %61, i8** %15, align 8
  %62 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 8)
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %3
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @nn_iface_resolve(i8* %66, i32 %72, i32 %73, %struct.sockaddr_storage* %10, i64* %11)
  store i32 %74, i32* %7, align 4
  br label %78

75:                                               ; preds = %3
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @nn_iface_resolve(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %76, %struct.sockaddr_storage* %10, i64* %11)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @nn_slow(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %86 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %85, i32 0, i32 3
  %87 = call i32 @nn_backoff_start(i32* %86)
  %88 = load i8*, i8** @NN_CTCP_STATE_WAITING, align 8
  %89 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %90 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %214

91:                                               ; preds = %78
  %92 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %93 = bitcast %struct.sockaddr_storage* %8 to i8*
  %94 = bitcast %struct.sockaddr_storage* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 8, i1 false)
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %9, align 8
  %96 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AF_INET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32, i32* %16, align 4
  %102 = call i8* @htons(i32 %101)
  %103 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %118

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AF_INET6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* %16, align 4
  %112 = call i8* @htons(i32 %111)
  %113 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %114 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %117

115:                                              ; preds = %105
  %116 = call i32 @nn_assert(i32 0)
  br label %117

117:                                              ; preds = %115, %110
  br label %118

118:                                              ; preds = %117, %100
  %119 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %120 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @SOCK_STREAM, align 4
  %124 = call i32 @nn_usock_start(i32* %120, i64 %122, i32 %123, i32 0)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i64 @nn_slow(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %118
  %131 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %132 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %131, i32 0, i32 3
  %133 = call i32 @nn_backoff_start(i32* %132)
  %134 = load i8*, i8** @NN_CTCP_STATE_WAITING, align 8
  %135 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %136 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %214

137:                                              ; preds = %118
  store i64 4, i64* %20, align 8
  %138 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %139 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NN_SOL_SOCKET, align 4
  %142 = load i32, i32* @NN_SNDBUF, align 4
  %143 = call i32 @nn_ep_getopt(i32 %140, i32 %141, i32 %142, i32* %19, i64* %20)
  %144 = load i64, i64* %20, align 8
  %145 = icmp eq i64 %144, 4
  %146 = zext i1 %145 to i32
  %147 = call i32 @nn_assert(i32 %146)
  %148 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %149 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %148, i32 0, i32 2
  %150 = load i32, i32* @SOL_SOCKET, align 4
  %151 = load i32, i32* @SO_SNDBUF, align 4
  %152 = call i32 @nn_usock_setsockopt(i32* %149, i32 %150, i32 %151, i32* %19, i32 4)
  store i64 4, i64* %20, align 8
  %153 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %154 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @NN_SOL_SOCKET, align 4
  %157 = load i32, i32* @NN_RCVBUF, align 4
  %158 = call i32 @nn_ep_getopt(i32 %155, i32 %156, i32 %157, i32* %19, i64* %20)
  %159 = load i64, i64* %20, align 8
  %160 = icmp eq i64 %159, 4
  %161 = zext i1 %160 to i32
  %162 = call i32 @nn_assert(i32 %161)
  %163 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %164 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %163, i32 0, i32 2
  %165 = load i32, i32* @SOL_SOCKET, align 4
  %166 = load i32, i32* @SO_RCVBUF, align 4
  %167 = call i32 @nn_usock_setsockopt(i32* %164, i32 %165, i32 %166, i32* %19, i32 4)
  store i64 4, i64* %20, align 8
  %168 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %169 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @NN_TCP, align 4
  %172 = load i32, i32* @NN_TCP_NODELAY, align 4
  %173 = call i32 @nn_ep_getopt(i32 %170, i32 %171, i32 %172, i32* %19, i64* %20)
  %174 = load i64, i64* %20, align 8
  %175 = icmp eq i64 %174, 4
  %176 = zext i1 %175 to i32
  %177 = call i32 @nn_assert(i32 %176)
  %178 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %179 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %178, i32 0, i32 2
  %180 = load i32, i32* @IPPROTO_TCP, align 4
  %181 = load i32, i32* @TCP_NODELAY, align 4
  %182 = call i32 @nn_usock_setsockopt(i32* %179, i32 %180, i32 %181, i32* %19, i32 4)
  %183 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %184 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %183, i32 0, i32 2
  %185 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %186 = load i64, i64* %11, align 8
  %187 = call i32 @nn_usock_bind(i32* %184, %struct.sockaddr* %185, i64 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i64 @nn_slow(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %137
  %194 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %195 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %194, i32 0, i32 3
  %196 = call i32 @nn_backoff_start(i32* %195)
  %197 = load i8*, i8** @NN_CTCP_STATE_WAITING, align 8
  %198 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %199 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %214

200:                                              ; preds = %137
  %201 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %202 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %201, i32 0, i32 2
  %203 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %204 = load i64, i64* %9, align 8
  %205 = call i32 @nn_usock_connect(i32* %202, %struct.sockaddr* %203, i64 %204)
  %206 = load i8*, i8** @NN_CTCP_STATE_CONNECTING, align 8
  %207 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %208 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load %struct.nn_ctcp*, %struct.nn_ctcp** %4, align 8
  %210 = getelementptr inbounds %struct.nn_ctcp, %struct.nn_ctcp* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @NN_STAT_INPROGRESS_CONNECTIONS, align 4
  %213 = call i32 @nn_ep_stat_increment(i32 %211, i32 %212, i32 1)
  br label %214

214:                                              ; preds = %200, %193, %130, %84
  ret void
}

declare dso_local i8* @nn_ep_getaddr(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nn_port_resolve(i8*, i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_ep_getopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @nn_iface_resolve(i8*, i32, i32, %struct.sockaddr_storage*, i64*) #1

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
