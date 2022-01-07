; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_StreamServerPort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_StreamServerPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, %struct.addrinfo*, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"could not translate host name \22%s\22, service \22%s\22 to address: %s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"could not translate service \22%s\22 to address: %s\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"could not bind to all requested addresses: MAXLISTEN (%d) exceeded\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"unrecognized address family %d\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"could not create %s socket for address \22%s\22: %m\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"setsockopt(SO_REUSEADDR) failed for %s address \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"could not bind %s address \22%s\22: %m\00", align 1
@.str.9 = private unnamed_addr constant [93 x i8] c"Is another postmaster already running on port %d? If not, remove socket file \22%s\22 and retry.\00", align 1
@.str.10 = private unnamed_addr constant [88 x i8] c"Is another postmaster already running on port %d? If not, wait a few seconds and retry.\00", align 1
@MaxBackends = common dso_local global i32 0, align 4
@PG_SOMAXCONN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"could not listen on %s address \22%s\22: %m\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"listening on %s address \22%s\22, port %d\00", align 1
@STATUS_OK = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@UNIXSOCK_PATH_BUFLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StreamServerPort(i32 %0, i8* %1, i16 zeroext %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [32 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca [64 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.addrinfo*, align 8
  %26 = alloca %struct.addrinfo*, align 8
  %27 = alloca %struct.addrinfo, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %32 = load i32, i32* @NI_MAXHOST, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %22, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %23, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %25, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %30, align 4
  %36 = call i32 @MemSet(%struct.addrinfo* %27, i32 0, i32 32)
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @AI_PASSIVE, align 4
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %44 = load i16, i16* %10, align 2
  %45 = call i32 @snprintf(i8* %43, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i16 zeroext %44)
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  store i8* %46, i8** %24, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %24, align 8
  %49 = call i32 @pg_getaddrinfo_all(i8* %47, i8* %48, %struct.addrinfo* %27, %struct.addrinfo** %25)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %6
  %53 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %54 = icmp ne %struct.addrinfo* %53, null
  br i1 %54, label %83, label %55

55:                                               ; preds = %52, %6
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @LOG, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %24, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @gai_strerror(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61, i32 %63)
  %65 = call i32 @ereport(i32 %59, i32 %64)
  br label %73

66:                                               ; preds = %55
  %67 = load i32, i32* @LOG, align 4
  %68 = load i8*, i8** %24, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @gai_strerror(i32 %69)
  %71 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %70)
  %72 = call i32 @ereport(i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %66, %58
  %74 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %75 = icmp ne %struct.addrinfo* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %80 = call i32 @pg_freeaddrinfo_all(i32 %78, %struct.addrinfo* %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %82, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %279

83:                                               ; preds = %52
  %84 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  store %struct.addrinfo* %84, %struct.addrinfo** %26, align 8
  br label %85

85:                                               ; preds = %263, %83
  %86 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %87 = icmp ne %struct.addrinfo* %86, null
  br i1 %87, label %88, label %267

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @IS_AF_UNIX(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @IS_AF_UNIX(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %263

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %114, %99
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i64*, i64** %12, align 8
  %106 = load i32, i32* %28, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PGINVALID_SOCKET, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %117

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %28, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %28, align 4
  br label %100

117:                                              ; preds = %112, %100
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @LOG, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = call i32 @ereport(i32 %122, i32 %124)
  br label %267

126:                                              ; preds = %117
  %127 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %132 [
    i32 130, label %130
  ]

130:                                              ; preds = %126
  %131 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %131, i8** %19, align 8
  br label %141

132:                                              ; preds = %126
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %134 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %135 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = trunc i32 %137 to i16
  %139 = call i32 @snprintf(i8* %133, i32 64, i8* %134, i16 zeroext %138)
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  store i8* %140, i8** %19, align 8
  br label %141

141:                                              ; preds = %132, %130
  %142 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.sockaddr_storage*
  %146 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = trunc i64 %33 to i32
  %150 = load i32, i32* @NI_NUMERICHOST, align 4
  %151 = call i32 @pg_getnameinfo_all(%struct.sockaddr_storage* %145, i32 %148, i8* %35, i32 %149, i32* null, i32 0, i32 %150)
  store i8* %35, i8** %21, align 8
  %152 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SOCK_STREAM, align 4
  %156 = call i64 @socket(i32 %154, i32 %155, i32 0)
  store i64 %156, i64* %14, align 8
  %157 = load i64, i64* @PGINVALID_SOCKET, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %141
  %160 = load i32, i32* @LOG, align 4
  %161 = call i32 (...) @errcode_for_socket_access()
  %162 = load i8*, i8** %19, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %162, i8* %163)
  %165 = call i32 @ereport(i32 %160, i32 %164)
  br label %263

166:                                              ; preds = %141
  %167 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @IS_AF_UNIX(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %14, align 8
  %174 = load i32, i32* @SOL_SOCKET, align 4
  %175 = load i32, i32* @SO_REUSEADDR, align 4
  %176 = bitcast i32* %30 to i8*
  %177 = call i32 @setsockopt(i64 %173, i32 %174, i32 %175, i8* %176, i32 4)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %188

179:                                              ; preds = %172
  %180 = load i32, i32* @LOG, align 4
  %181 = call i32 (...) @errcode_for_socket_access()
  %182 = load i8*, i8** %19, align 8
  %183 = load i8*, i8** %21, align 8
  %184 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %182, i8* %183)
  %185 = call i32 @ereport(i32 %180, i32 %184)
  %186 = load i64, i64* %14, align 8
  %187 = call i32 @closesocket(i64 %186)
  br label %263

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188, %166
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %192 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %195 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bind(i64 %190, i64 %193, i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %225

200:                                              ; preds = %189
  %201 = load i32, i32* @LOG, align 4
  %202 = call i32 (...) @errcode_for_socket_access()
  %203 = load i8*, i8** %19, align 8
  %204 = load i8*, i8** %21, align 8
  %205 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %203, i8* %204)
  %206 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %207 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @IS_AF_UNIX(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %200
  %212 = load i16, i16* %10, align 2
  %213 = zext i16 %212 to i32
  %214 = load i8*, i8** %24, align 8
  %215 = call i32 (i8*, i32, ...) @errhint(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.9, i64 0, i64 0), i32 %213, i8* %214)
  br label %220

216:                                              ; preds = %200
  %217 = load i16, i16* %10, align 2
  %218 = zext i16 %217 to i32
  %219 = call i32 (i8*, i32, ...) @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %211
  %221 = phi i32 [ %215, %211 ], [ %219, %216 ]
  %222 = call i32 @ereport(i32 %201, i32 %221)
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @closesocket(i64 %223)
  br label %263

225:                                              ; preds = %189
  %226 = load i32, i32* @MaxBackends, align 4
  %227 = mul nsw i32 %226, 2
  store i32 %227, i32* %16, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* @PG_SOMAXCONN, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* @PG_SOMAXCONN, align 4
  store i32 %232, i32* %16, align 4
  br label %233

233:                                              ; preds = %231, %225
  %234 = load i64, i64* %14, align 8
  %235 = load i32, i32* %16, align 4
  %236 = call i32 @listen(i64 %234, i32 %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %233
  %240 = load i32, i32* @LOG, align 4
  %241 = call i32 (...) @errcode_for_socket_access()
  %242 = load i8*, i8** %19, align 8
  %243 = load i8*, i8** %21, align 8
  %244 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %242, i8* %243)
  %245 = call i32 @ereport(i32 %240, i32 %244)
  %246 = load i64, i64* %14, align 8
  %247 = call i32 @closesocket(i64 %246)
  br label %263

248:                                              ; preds = %233
  %249 = load i32, i32* @LOG, align 4
  %250 = load i8*, i8** %19, align 8
  %251 = load i8*, i8** %21, align 8
  %252 = load i16, i16* %10, align 2
  %253 = zext i16 %252 to i32
  %254 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %250, i8* %251, i32 %253)
  %255 = call i32 @ereport(i32 %249, i32 %254)
  %256 = load i64, i64* %14, align 8
  %257 = load i64*, i64** %12, align 8
  %258 = load i32, i32* %28, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %257, i64 %259
  store i64 %256, i64* %260, align 8
  %261 = load i32, i32* %29, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %29, align 4
  br label %263

263:                                              ; preds = %248, %239, %220, %179, %159, %98
  %264 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  %265 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %264, i32 0, i32 3
  %266 = load %struct.addrinfo*, %struct.addrinfo** %265, align 8
  store %struct.addrinfo* %266, %struct.addrinfo** %26, align 8
  br label %85

267:                                              ; preds = %121, %85
  %268 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.addrinfo*, %struct.addrinfo** %25, align 8
  %271 = call i32 @pg_freeaddrinfo_all(i32 %269, %struct.addrinfo* %270)
  %272 = load i32, i32* %29, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %267
  %275 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %275, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %279

276:                                              ; preds = %267
  %277 = load i64, i64* @STATUS_OK, align 8
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %279

279:                                              ; preds = %276, %274, %81
  %280 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MemSet(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i32 @pg_getaddrinfo_all(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @pg_freeaddrinfo_all(i32, %struct.addrinfo*) #2

declare dso_local i64 @IS_AF_UNIX(i32) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @pg_getnameinfo_all(%struct.sockaddr_storage*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @errcode_for_socket_access(...) #2

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #2

declare dso_local i32 @closesocket(i64) #2

declare dso_local i32 @bind(i64, i64, i32) #2

declare dso_local i32 @errhint(i8*, i32, ...) #2

declare dso_local i32 @listen(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
