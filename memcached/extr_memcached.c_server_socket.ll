; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_server_socket.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_server_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }
%struct.linger = type { i32, i32 }
%struct.addrinfo = type { i64, %struct.TYPE_8__*, i32, %struct.addrinfo*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EAI_SYSTEM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"getaddrinfo(): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"getaddrinfo()\00", align 1
@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"server_socket\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@SO_LINGER = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@settings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"%s INET: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"%s INET6: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to duplicate file descriptor\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@conn_read = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@UDP_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@conn_listening = common dso_local global i32 0, align 4
@main_base = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"failed to create listening connection\0A\00", align 1
@listen_conn = common dso_local global %struct.TYPE_6__* null, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32)* @server_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_socket(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.linger, align 4
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca %union.anon, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = bitcast %struct.linger* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  %30 = load i64, i64* @AF_UNSPEC, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %31, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 3
  store %struct.addrinfo* null, %struct.addrinfo** %33, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 5
  %36 = load i32, i32* @AI_PASSIVE, align 4
  store i32 %36, i32* %35, align 4
  %37 = load i32, i32* @NI_MAXSERV, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %17, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @IS_UDP(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* @SOCK_DGRAM, align 4
  br label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @SOCK_STREAM, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = trunc i64 %38 to i32
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snprintf(i8* %40, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @getaddrinfo(i8* %58, i8* %40, %struct.addrinfo* %16, %struct.addrinfo** %14)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @EAI_SYSTEM, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i8* @gai_strerror(i32 %68)
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %73

71:                                               ; preds = %62
  %72 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  store i32 1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %308

74:                                               ; preds = %54
  %75 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %75, %struct.addrinfo** %15, align 8
  br label %76

76:                                               ; preds = %298, %74
  %77 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %78 = icmp ne %struct.addrinfo* %77, null
  br i1 %78, label %79, label %302

79:                                               ; preds = %76
  %80 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %81 = call i32 @new_socket(%struct.addrinfo* %80)
  store i32 %81, i32* %12, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @EMFILE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EX_OSERR, align 4
  %90 = call i32 @exit(i32 %89) #5
  unreachable

91:                                               ; preds = %83
  br label %298

92:                                               ; preds = %79
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @SOL_SOCKET, align 4
  %95 = load i32, i32* @SO_REUSEADDR, align 4
  %96 = bitcast i32* %21 to i8*
  %97 = call i32 @setsockopt(i32 %93, i32 %94, i32 %95, i8* %96, i32 4)
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @IS_UDP(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @maximize_sndbuf(i32 %102)
  br label %135

104:                                              ; preds = %92
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @SOL_SOCKET, align 4
  %107 = load i32, i32* @SO_KEEPALIVE, align 4
  %108 = bitcast i32* %21 to i8*
  %109 = call i32 @setsockopt(i32 %105, i32 %106, i32 %107, i8* %108, i32 4)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %104
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @SOL_SOCKET, align 4
  %117 = load i32, i32* @SO_LINGER, align 4
  %118 = bitcast %struct.linger* %13 to i8*
  %119 = call i32 @setsockopt(i32 %115, i32 %116, i32 %117, i8* %118, i32 8)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %114
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @IPPROTO_TCP, align 4
  %127 = load i32, i32* @TCP_NODELAY, align 4
  %128 = bitcast i32* %21 to i8*
  %129 = call i32 @setsockopt(i32 %125, i32 %126, i32 %127, i8* %128, i32 4)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %124
  br label %135

135:                                              ; preds = %134, %101
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %141 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @bind(i32 %136, %struct.TYPE_8__* %139, i32 %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %158

145:                                              ; preds = %135
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EADDRINUSE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %154 = call i32 @freeaddrinfo(%struct.addrinfo* %153)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %308

155:                                              ; preds = %145
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @close(i32 %156)
  br label %298

158:                                              ; preds = %135
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @IS_UDP(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 1), align 4
  %167 = call i32 @listen(i32 %165, i32 %166)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @close(i32 %171)
  %173 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %174 = call i32 @freeaddrinfo(%struct.addrinfo* %173)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %308

175:                                              ; preds = %164, %158
  %176 = load i32*, i32** %10, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %235

178:                                              ; preds = %175
  %179 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %180 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %179, i32 0, i32 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AF_INET, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %178
  %187 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %188 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @AF_INET6, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %235

194:                                              ; preds = %186, %178
  store i32 4, i32* %25, align 4
  %195 = load i32, i32* %12, align 4
  %196 = bitcast %union.anon* %24 to %struct.sockaddr*
  %197 = call i64 @getsockname(i32 %195, %struct.sockaddr* %196, i32* %25)
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %234

199:                                              ; preds = %194
  %200 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %201 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %200, i32 0, i32 1
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @AF_INET, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %199
  %208 = load i32*, i32** %10, align 8
  %209 = ptrtoint i32* %208 to i32
  %210 = load i32, i32* %9, align 4
  %211 = call i64 @IS_UDP(i32 %210)
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %215 = bitcast %union.anon* %24 to %struct.sockaddr_in*
  %216 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ntohs(i32 %217)
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %214, i32 %218)
  br label %233

220:                                              ; preds = %199
  %221 = load i32*, i32** %10, align 8
  %222 = ptrtoint i32* %221 to i32
  %223 = load i32, i32* %9, align 4
  %224 = call i64 @IS_UDP(i32 %223)
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %228 = bitcast %union.anon* %24 to %struct.sockaddr_in6*
  %229 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ntohs(i32 %230)
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %227, i32 %231)
  br label %233

233:                                              ; preds = %220, %207
  br label %234

234:                                              ; preds = %233, %194
  br label %235

235:                                              ; preds = %234, %186, %175
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %9, align 4
  %238 = call i64 @IS_UDP(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %236
  store i32 0, i32* %26, align 4
  br label %241

241:                                              ; preds = %269, %240
  %242 = load i32, i32* %26, align 4
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @settings, i32 0, i32 0), align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %272

245:                                              ; preds = %241
  %246 = load i32, i32* %26, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  store i32 %249, i32* %27, align 4
  br label %260

250:                                              ; preds = %245
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @dup(i32 %251)
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* %27, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %257 = load i32, i32* @EXIT_FAILURE, align 4
  %258 = call i32 @exit(i32 %257) #5
  unreachable

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259, %248
  %261 = load i32, i32* %27, align 4
  %262 = load i32, i32* @conn_read, align 4
  %263 = load i32, i32* @EV_READ, align 4
  %264 = load i32, i32* @EV_PERSIST, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @UDP_READ_BUFFER_SIZE, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @dispatch_conn_new(i32 %261, i32 %262, i32 %265, i32 %266, i32 %267, i32* null)
  br label %269

269:                                              ; preds = %260
  %270 = load i32, i32* %26, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %26, align 4
  br label %241

272:                                              ; preds = %241
  br label %297

273:                                              ; preds = %236
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @conn_listening, align 4
  %276 = load i32, i32* @EV_READ, align 4
  %277 = load i32, i32* @EV_PERSIST, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @main_base, align 4
  %281 = call %struct.TYPE_6__* @conn_new(i32 %274, i32 %275, i32 %278, i32 1, i32 %279, i32 %280, i32* null)
  store %struct.TYPE_6__* %281, %struct.TYPE_6__** %23, align 8
  %282 = icmp ne %struct.TYPE_6__* %281, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %273
  %284 = load i32, i32* @stderr, align 4
  %285 = call i32 (i32, i8*, ...) @fprintf(i32 %284, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %286 = load i32, i32* @EXIT_FAILURE, align 4
  %287 = call i32 @exit(i32 %286) #5
  unreachable

288:                                              ; preds = %273
  %289 = load i32, i32* %11, align 4
  %290 = icmp eq i32 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** @listen_conn, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 1
  store %struct.TYPE_6__* %293, %struct.TYPE_6__** %295, align 8
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %296, %struct.TYPE_6__** @listen_conn, align 8
  br label %297

297:                                              ; preds = %288, %272
  br label %298

298:                                              ; preds = %297, %155, %91
  %299 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %300 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %299, i32 0, i32 3
  %301 = load %struct.addrinfo*, %struct.addrinfo** %300, align 8
  store %struct.addrinfo* %301, %struct.addrinfo** %15, align 8
  br label %76

302:                                              ; preds = %76
  %303 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %304 = call i32 @freeaddrinfo(%struct.addrinfo* %303)
  %305 = load i32, i32* %20, align 4
  %306 = icmp eq i32 %305, 0
  %307 = zext i1 %306 to i32
  store i32 %307, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %308

308:                                              ; preds = %302, %169, %149, %73
  %309 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %6, align 4
  ret i32 %310
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @IS_UDP(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #3

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i8* @gai_strerror(i32) #3

declare dso_local i32 @perror(i8*) #3

declare dso_local i32 @new_socket(%struct.addrinfo*) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #3

declare dso_local i32 @maximize_sndbuf(i32) #3

declare dso_local i32 @bind(i32, %struct.TYPE_8__*, i32) #3

declare dso_local i32 @close(i32) #3

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #3

declare dso_local i32 @listen(i32, i32) #3

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #3

declare dso_local i32 @ntohs(i32) #3

declare dso_local i32 @dup(i32) #3

declare dso_local i32 @dispatch_conn_new(i32, i32, i32, i32, i32, i32*) #3

declare dso_local %struct.TYPE_6__* @conn_new(i32, i32, i32, i32, i32, i32, i32*) #3

declare dso_local i32 @assert(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
