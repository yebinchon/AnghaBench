; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_this_ip46.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_this_ip46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i64, %struct.TYPE_3__*, i64, %struct.addrinfo* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i64, i32, i32 }
%struct.sockaddr_in = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot resolve host '%s', port '%s': %s\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@D_CONNECT_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [274 x i8] c"Address info: host = '%s', service = '%s', ai_flags = 0x%02X, ai_family = %d (PF_INET = %d, PF_INET6 = %d), ai_socktype = %d (SOCK_STREAM = %d, SOCK_DGRAM = %d), ai_protocol = %d (IPPROTO_TCP = %d, IPPROTO_UDP = %d), ai_addrlen = %lu (sockaddr_in = %lu, sockaddr_in6 = %lu)\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"ai_addr = sin_family: %d (AF_INET = %d, AF_INET6 = %d), sin_addr: '%s', sin_port: '%s'\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [128 x i8] c"ai_addr = sin6_family: %d (AF_INET = %d, AF_INET6 = %d), sin6_addr: '%s', sin6_port: '%s', sin6_flowinfo: %u, sin6_scope_id: %u\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unknown protocol family %d.\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Failed to set timeout on the socket to ip '%s' port '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"Waiting for connection to ip %s port %s to be established\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"connect() to ip %s port %s completed successfully\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Failed to connect to '%s', port '%s'. select() returned %d\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Timed out while connecting to '%s', port '%s'. select() returned %d\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to connect to '%s', port '%s'\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Connected to '%s' on port '%s'.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i8*, %struct.timeval*)* @connect_to_this_ip46 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_this_ip46(i32 %0, i32 %1, i8* %2, i64 %3, i8* %4, %struct.timeval* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in6*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.sockaddr_in*, align 8
  %24 = alloca %struct.sockaddr_in6*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.timeval* %5, %struct.timeval** %13, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %16, align 8
  %28 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 48)
  %29 = load i32, i32* @PF_UNSPEC, align 4
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @getaddrinfo(i8* %35, i8* %36, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %6
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @gai_strerror(i32 %43)
  %45 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i32 %44)
  store i32 -1, i32* %7, align 4
  br label %261

46:                                               ; preds = %6
  store i32 -1, i32* %18, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %47, %struct.addrinfo** %16, align 8
  br label %48

48:                                               ; preds = %253, %46
  %49 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %18, align 4
  %53 = icmp eq i32 %52, -1
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %257

56:                                               ; preds = %54
  %57 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = bitcast %struct.TYPE_3__* %64 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %65, %struct.sockaddr_in6** %19, align 8
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %61
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* @NI_MAXHOST, align 4
  %77 = add nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %20, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %21, align 8
  %81 = load i32, i32* @NI_MAXSERV, align 4
  %82 = add nsw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %22, align 8
  %85 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %78 to i32
  %92 = trunc i64 %83 to i32
  %93 = load i32, i32* @NI_NUMERICHOST, align 4
  %94 = load i32, i32* @NI_NUMERICSERV, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @getnameinfo(%struct.TYPE_3__* %87, i64 %90, i8* %80, i32 %91, i8* %84, i32 %92, i32 %95)
  %97 = load i32, i32* @D_CONNECT_TO, align 4
  %98 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SOCK_STREAM, align 4
  %109 = load i32, i32* @SOCK_DGRAM, align 4
  %110 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IPPROTO_TCP, align 4
  %114 = load i32, i32* @IPPROTO_UDP, align 4
  %115 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32, i8*, ...) @debug(i32 %97, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %84, i32 %101, i32 %104, i32 129, i32 128, i32 %107, i32 %108, i32 %109, i32 %112, i32 %113, i32 %114, i64 %117, i64 4, i64 16)
  %119 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %120 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %119, i32 0, i32 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %156 [
    i32 129, label %124
    i32 128, label %137
  ]

124:                                              ; preds = %75
  %125 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %126 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %125, i32 0, i32 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = bitcast %struct.TYPE_3__* %127 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %128, %struct.sockaddr_in** %23, align 8
  %129 = load %struct.sockaddr_in*, %struct.sockaddr_in** %23, align 8
  %130 = load i32, i32* @D_CONNECT_TO, align 4
  %131 = load %struct.sockaddr_in*, %struct.sockaddr_in** %23, align 8
  %132 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @AF_INET, align 4
  %135 = load i32, i32* @AF_INET6, align 4
  %136 = call i32 (i32, i8*, ...) @debug(i32 %130, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134, i32 %135, i8* %80, i8* %84)
  br label %162

137:                                              ; preds = %75
  %138 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = bitcast %struct.TYPE_3__* %140 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %141, %struct.sockaddr_in6** %24, align 8
  %142 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %143 = load i32, i32* @D_CONNECT_TO, align 4
  %144 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AF_INET, align 4
  %148 = load i32, i32* @AF_INET6, align 4
  %149 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %150 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %24, align 8
  %153 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i32, i8*, ...) @debug(i32 %143, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i8* %80, i8* %84, i32 %151, i64 %154)
  br label %162

156:                                              ; preds = %75
  %157 = load i32, i32* @D_CONNECT_TO, align 4
  %158 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %159 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @debug(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  store i32 4, i32* %25, align 4
  br label %249

162:                                              ; preds = %137, %124
  %163 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %170 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @socket(i32 %165, i32 %168, i32 %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %248

175:                                              ; preds = %162
  %176 = load %struct.timeval*, %struct.timeval** %13, align 8
  %177 = icmp ne %struct.timeval* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* @SOL_SOCKET, align 4
  %181 = load i32, i32* @SO_SNDTIMEO, align 4
  %182 = load %struct.timeval*, %struct.timeval** %13, align 8
  %183 = bitcast %struct.timeval* %182 to i8*
  %184 = call i64 @setsockopt(i32 %179, i32 %180, i32 %181, i8* %183, i32 4)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %80, i8* %84)
  br label %188

188:                                              ; preds = %186, %178
  br label %189

189:                                              ; preds = %188, %175
  store i64 0, i64* @errno, align 8
  %190 = load i32, i32* %18, align 4
  %191 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %192 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %191, i32 0, i32 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %195 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @connect(i32 %190, %struct.TYPE_3__* %193, i64 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %241

199:                                              ; preds = %189
  %200 = load i64, i64* @errno, align 8
  %201 = load i64, i64* @EALREADY, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* @errno, align 8
  %205 = load i64, i64* @EINPROGRESS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %236

207:                                              ; preds = %203, %199
  %208 = call i32 @info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %80, i8* %84)
  %209 = call i32 @FD_ZERO(i32* %26)
  %210 = call i32 @FD_SET(i32 0, i32* %26)
  %211 = load %struct.timeval*, %struct.timeval** %13, align 8
  %212 = call i32 @select(i32 1, i32* null, i32* %26, i32* null, %struct.timeval* %211)
  store i32 %212, i32* %27, align 4
  %213 = load i32, i32* %27, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %207
  %216 = load i32, i32* %18, align 4
  %217 = call i64 @FD_ISSET(i32 %216, i32* %26)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 @info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %80, i8* %84)
  br label %235

221:                                              ; preds = %215, %207
  %222 = load i32, i32* %27, align 4
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32, i32* %27, align 4
  %226 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i8* %80, i8* %84, i32 %225)
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @close(i32 %227)
  store i32 -1, i32* %18, align 4
  br label %234

229:                                              ; preds = %221
  %230 = load i32, i32* %27, align 4
  %231 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* %80, i8* %84, i32 %230)
  %232 = load i32, i32* %18, align 4
  %233 = call i32 @close(i32 %232)
  store i32 -1, i32* %18, align 4
  br label %234

234:                                              ; preds = %229, %224
  br label %235

235:                                              ; preds = %234, %219
  br label %240

236:                                              ; preds = %203
  %237 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %80, i8* %84)
  %238 = load i32, i32* %18, align 4
  %239 = call i32 @close(i32 %238)
  store i32 -1, i32* %18, align 4
  br label %240

240:                                              ; preds = %236, %235
  br label %241

241:                                              ; preds = %240, %189
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, -1
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* @D_CONNECT_TO, align 4
  %246 = call i32 (i32, i8*, ...) @debug(i32 %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %80, i8* %84)
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %162
  store i32 0, i32* %25, align 4
  br label %249

249:                                              ; preds = %248, %156
  %250 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %25, align 4
  switch i32 %251, label %263 [
    i32 0, label %252
    i32 4, label %253
  ]

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %252, %249
  %254 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %255 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %254, i32 0, i32 6
  %256 = load %struct.addrinfo*, %struct.addrinfo** %255, align 8
  store %struct.addrinfo* %256, %struct.addrinfo** %16, align 8
  br label %48

257:                                              ; preds = %54
  %258 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %259 = call i32 @freeaddrinfo(%struct.addrinfo* %258)
  %260 = load i32, i32* %18, align 4
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %257, %40
  %262 = load i32, i32* %7, align 4
  ret i32 %262

263:                                              ; preds = %249
  unreachable
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getnameinfo(%struct.TYPE_3__*, i64, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @connect(i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @info(i8*, i8*, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
