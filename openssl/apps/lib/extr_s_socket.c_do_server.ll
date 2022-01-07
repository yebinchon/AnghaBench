; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_socket.c_do_server.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_socket.c_do_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.BIO_sock_info_u = type { i32* }
%struct.timeval = type { i32, i64 }

@BIO_SOCK_REUSEADDR = common dso_local global i32 0, align 4
@BIO_LOOKUP_SERVER = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@BIO_SOCK_V6_ONLY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_SOCK_INFO_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ACCEPT %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ACCEPT [%s]:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ACCEPT\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@ourpeer = common dso_local global i32* null, align 8
@AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_server(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 (i32, i32, i32, i8*)* %6, i8* %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32 (i32, i32, i32, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca %union.BIO_sock_info_u, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca [64 x i8], align 16
  %40 = alloca %struct.timeval, align 8
  %41 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 (i32, i32, i32, i8*)* %6, i32 (i32, i32, i32, i8*)** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %25, align 8
  %42 = load i32, i32* @BIO_SOCK_REUSEADDR, align 4
  store i32 %42, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %43 = call i32 (...) @BIO_sock_init()
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %360

46:                                               ; preds = %10
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* @BIO_LOOKUP_SERVER, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @BIO_lookup_ex(i8* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32** %25)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 @ERR_print_errors(i32 %56)
  store i32 0, i32* %11, align 4
  br label %360

58:                                               ; preds = %46
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @AF_UNSPEC, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %25, align 8
  %65 = call i32 @BIO_ADDRINFO_family(i32* %64)
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %25, align 8
  %73 = call i32 @BIO_ADDRINFO_socktype(i32* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %17, align 4
  %80 = load i32*, i32** %25, align 8
  %81 = call i32 @BIO_ADDRINFO_protocol(i32* %80)
  %82 = icmp eq i32 %79, %81
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi i1 [ true, %75 ], [ %82, %78 ]
  br label %85

85:                                               ; preds = %83, %70, %62
  %86 = phi i1 [ false, %70 ], [ false, %62 ], [ %84, %83 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @OPENSSL_assert(i32 %87)
  %89 = load i32*, i32** %25, align 8
  %90 = call i32 @BIO_ADDRINFO_family(i32* %89)
  store i32 %90, i32* %27, align 4
  %91 = load i32*, i32** %25, align 8
  %92 = call i32 @BIO_ADDRINFO_socktype(i32* %91)
  store i32 %92, i32* %28, align 4
  %93 = load i32*, i32** %25, align 8
  %94 = call i32 @BIO_ADDRINFO_protocol(i32* %93)
  store i32 %94, i32* %29, align 4
  %95 = load i32*, i32** %25, align 8
  %96 = call i32* @BIO_ADDRINFO_address(i32* %95)
  store i32* %96, i32** %31, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = call i32* @BIO_ADDRINFO_next(i32* %97)
  store i32* %98, i32** %26, align 8
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* @AF_INET6, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %85
  %103 = load i32, i32* @BIO_SOCK_V6_ONLY, align 4
  %104 = load i32, i32* %32, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %32, align 4
  br label %106

106:                                              ; preds = %102, %85
  %107 = load i32*, i32** %26, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %148

109:                                              ; preds = %106
  %110 = load i32*, i32** %26, align 8
  %111 = call i32 @BIO_ADDRINFO_socktype(i32* %110)
  %112 = load i32, i32* %28, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %109
  %115 = load i32*, i32** %26, align 8
  %116 = call i32 @BIO_ADDRINFO_protocol(i32* %115)
  %117 = load i32, i32* %29, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %114
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* @AF_INET, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i32*, i32** %26, align 8
  %125 = call i32 @BIO_ADDRINFO_family(i32* %124)
  %126 = load i32, i32* @AF_INET6, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @AF_INET6, align 4
  store i32 %129, i32* %27, align 4
  %130 = load i32*, i32** %26, align 8
  %131 = call i32* @BIO_ADDRINFO_address(i32* %130)
  store i32* %131, i32** %31, align 8
  br label %147

132:                                              ; preds = %123, %119
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* @AF_INET6, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load i32*, i32** %26, align 8
  %138 = call i32 @BIO_ADDRINFO_family(i32* %137)
  %139 = load i32, i32* @AF_INET, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, i32* @BIO_SOCK_V6_ONLY, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %32, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %32, align 4
  br label %146

146:                                              ; preds = %141, %136, %132
  br label %147

147:                                              ; preds = %146, %128
  br label %148

148:                                              ; preds = %147, %114, %109, %106
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %28, align 4
  %151 = load i32, i32* %29, align 4
  %152 = call i32 @BIO_socket(i32 %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* @INVALID_SOCKET, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %22, align 4
  %158 = load i32*, i32** %31, align 8
  %159 = load i32, i32* %32, align 4
  %160 = call i32 @BIO_listen(i32 %157, i32* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %156, %148
  %163 = load i32*, i32** %25, align 8
  %164 = call i32 @BIO_ADDRINFO_free(i32* %163)
  %165 = load i32, i32* @bio_err, align 4
  %166 = call i32 @ERR_print_errors(i32 %165)
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* @INVALID_SOCKET, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* %22, align 4
  %172 = call i32 @BIO_closesocket(i32 %171)
  br label %173

173:                                              ; preds = %170, %162
  br label %356

174:                                              ; preds = %156
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @IPPROTO_SCTP, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* @BIO_NOCLOSE, align 4
  %181 = call i32* @BIO_new_dgram_sctp(i32 %179, i32 %180)
  store i32* %181, i32** %34, align 8
  %182 = load i32*, i32** %34, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* %22, align 4
  %186 = call i32 @BIO_closesocket(i32 %185)
  %187 = load i32, i32* @bio_err, align 4
  %188 = call i32 @ERR_print_errors(i32 %187)
  br label %356

189:                                              ; preds = %178
  %190 = load i32*, i32** %34, align 8
  %191 = call i32 @BIO_free(i32* %190)
  br label %192

192:                                              ; preds = %189, %174
  %193 = load i32*, i32** %31, align 8
  %194 = call i32 @BIO_ADDR_rawport(i32* %193)
  store i32 %194, i32* %30, align 4
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @BIO_ADDRINFO_free(i32* %195)
  store i32* null, i32** %25, align 8
  %197 = load i32, i32* %30, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %249

199:                                              ; preds = %192
  store i8* null, i8** %36, align 8
  store i8* null, i8** %37, align 8
  store i32 0, i32* %38, align 4
  %200 = call i8* (...) @BIO_ADDR_new()
  %201 = bitcast i8* %200 to i32*
  %202 = bitcast %union.BIO_sock_info_u* %35 to i32**
  store i32* %201, i32** %202, align 8
  %203 = icmp ne i32* %201, null
  br i1 %203, label %204, label %231

204:                                              ; preds = %199
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* @BIO_SOCK_INFO_ADDRESS, align 4
  %207 = call i64 @BIO_sock_info(i32 %205, i32 %206, %union.BIO_sock_info_u* %35)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %204
  %210 = bitcast %union.BIO_sock_info_u* %35 to i32**
  %211 = load i32*, i32** %210, align 8
  %212 = call i8* @BIO_ADDR_hostname_string(i32* %211, i32 1)
  store i8* %212, i8** %36, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = bitcast %union.BIO_sock_info_u* %35 to i32**
  %216 = load i32*, i32** %215, align 8
  %217 = call i8* @BIO_ADDR_service_string(i32* %216, i32 1)
  store i8* %217, i8** %37, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %231

219:                                              ; preds = %214
  %220 = load i32*, i32** %21, align 8
  %221 = load i8*, i8** %36, align 8
  %222 = call i32* @strchr(i8* %221, i8 signext 58)
  %223 = icmp eq i32* %222, null
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)
  %226 = load i8*, i8** %36, align 8
  %227 = load i8*, i8** %37, align 8
  %228 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %220, i8* %225, i8* %226, i8* %227)
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  store i32 1, i32* %38, align 4
  br label %231

231:                                              ; preds = %230, %219, %214, %209, %204, %199
  %232 = load i32*, i32** %21, align 8
  %233 = call i32 @BIO_flush(i32* %232)
  %234 = load i8*, i8** %36, align 8
  %235 = call i32 @OPENSSL_free(i8* %234)
  %236 = load i8*, i8** %37, align 8
  %237 = call i32 @OPENSSL_free(i8* %236)
  %238 = bitcast %union.BIO_sock_info_u* %35 to i32**
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @BIO_ADDR_free(i32* %239)
  %241 = load i32, i32* %38, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %231
  %244 = load i32, i32* %22, align 4
  %245 = call i32 @BIO_closesocket(i32 %244)
  %246 = load i32, i32* @bio_err, align 4
  %247 = call i32 @ERR_print_errors(i32 %246)
  br label %356

248:                                              ; preds = %231
  br label %254

249:                                              ; preds = %192
  %250 = load i32*, i32** %21, align 8
  %251 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %252 = load i32*, i32** %21, align 8
  %253 = call i32 @BIO_flush(i32* %252)
  br label %254

254:                                              ; preds = %249, %248
  %255 = load i32*, i32** %12, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %22, align 4
  %259 = load i32*, i32** %12, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %254
  br label %261

261:                                              ; preds = %354, %260
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* @SOCK_STREAM, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %331

265:                                              ; preds = %261
  %266 = load i32*, i32** @ourpeer, align 8
  %267 = call i32 @BIO_ADDR_free(i32* %266)
  %268 = call i8* (...) @BIO_ADDR_new()
  %269 = bitcast i8* %268 to i32*
  store i32* %269, i32** @ourpeer, align 8
  %270 = load i32*, i32** @ourpeer, align 8
  %271 = icmp eq i32* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load i32, i32* %22, align 4
  %274 = call i32 @BIO_closesocket(i32 %273)
  %275 = load i32, i32* @bio_err, align 4
  %276 = call i32 @ERR_print_errors(i32 %275)
  br label %356

277:                                              ; preds = %265
  br label %278

278:                                              ; preds = %289, %277
  %279 = load i32, i32* %22, align 4
  %280 = load i32*, i32** @ourpeer, align 8
  %281 = call i32 @BIO_accept_ex(i32 %279, i32* %280, i32 0)
  store i32 %281, i32* %23, align 4
  br label %282

282:                                              ; preds = %278
  %283 = load i32, i32* %23, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* %23, align 4
  %287 = call i64 @BIO_sock_should_retry(i32 %286)
  %288 = icmp ne i64 %287, 0
  br label %289

289:                                              ; preds = %285, %282
  %290 = phi i1 [ false, %282 ], [ %288, %285 ]
  br i1 %290, label %278, label %291

291:                                              ; preds = %289
  %292 = load i32, i32* %23, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load i32, i32* @bio_err, align 4
  %296 = call i32 @ERR_print_errors(i32 %295)
  %297 = load i32, i32* %22, align 4
  %298 = call i32 @BIO_closesocket(i32 %297)
  br label %355

299:                                              ; preds = %291
  %300 = load i32, i32* %23, align 4
  %301 = call i32 @BIO_set_tcp_ndelay(i32 %300, i32 1)
  %302 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %18, align 8
  %303 = load i32, i32* %23, align 4
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %17, align 4
  %306 = load i8*, i8** %19, align 8
  %307 = call i32 %302(i32 %303, i32 %304, i32 %305, i8* %306)
  store i32 %307, i32* %24, align 4
  %308 = load i32, i32* %23, align 4
  %309 = call i32 @shutdown(i32 %308, i32 1)
  %310 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 1
  store i64 0, i64* %310, align 8
  %311 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  store i32 500000, i32* %311, align 8
  br label %312

312:                                              ; preds = %326, %299
  %313 = call i32 @FD_ZERO(i32* %41)
  %314 = load i32, i32* %23, align 4
  %315 = call i32 @openssl_fdset(i32 %314, i32* %41)
  br label %316

316:                                              ; preds = %312
  %317 = load i32, i32* %23, align 4
  %318 = add nsw i32 %317, 1
  %319 = call i64 @select(i32 %318, i32* %41, i32* null, i32* null, %struct.timeval* %40)
  %320 = icmp sgt i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load i32, i32* %23, align 4
  %323 = getelementptr inbounds [64 x i8], [64 x i8]* %39, i64 0, i64 0
  %324 = call i64 @readsocket(i32 %322, i8* %323, i32 64)
  %325 = icmp sgt i64 %324, 0
  br label %326

326:                                              ; preds = %321, %316
  %327 = phi i1 [ false, %316 ], [ %325, %321 ]
  br i1 %327, label %312, label %328

328:                                              ; preds = %326
  %329 = load i32, i32* %23, align 4
  %330 = call i32 @BIO_closesocket(i32 %329)
  br label %338

331:                                              ; preds = %261
  %332 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %18, align 8
  %333 = load i32, i32* %22, align 4
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %17, align 4
  %336 = load i8*, i8** %19, align 8
  %337 = call i32 %332(i32 %333, i32 %334, i32 %335, i8* %336)
  store i32 %337, i32* %24, align 4
  br label %338

338:                                              ; preds = %331, %328
  %339 = load i32, i32* %20, align 4
  %340 = icmp ne i32 %339, -1
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, i32* %20, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %20, align 4
  br label %344

344:                                              ; preds = %341, %338
  %345 = load i32, i32* %24, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %20, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347, %344
  %351 = load i32, i32* %22, align 4
  %352 = call i32 @BIO_closesocket(i32 %351)
  %353 = load i32, i32* %24, align 4
  store i32 %353, i32* %33, align 4
  br label %355

354:                                              ; preds = %347
  br label %261

355:                                              ; preds = %350, %294
  br label %356

356:                                              ; preds = %355, %272, %243, %184, %173
  %357 = load i32*, i32** @ourpeer, align 8
  %358 = call i32 @BIO_ADDR_free(i32* %357)
  store i32* null, i32** @ourpeer, align 8
  %359 = load i32, i32* %33, align 4
  store i32 %359, i32* %11, align 4
  br label %360

360:                                              ; preds = %356, %55, %45
  %361 = load i32, i32* %11, align 4
  ret i32 %361
}

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i32 @BIO_lookup_ex(i8*, i8*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_socktype(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_protocol(i32*) #1

declare dso_local i32* @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32* @BIO_ADDRINFO_next(i32*) #1

declare dso_local i32 @BIO_socket(i32, i32, i32, i32) #1

declare dso_local i32 @BIO_listen(i32, i32*, i32) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32* @BIO_new_dgram_sctp(i32, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_ADDR_rawport(i32*) #1

declare dso_local i8* @BIO_ADDR_new(...) #1

declare dso_local i64 @BIO_sock_info(i32, i32, %union.BIO_sock_info_u*) #1

declare dso_local i8* @BIO_ADDR_hostname_string(i32*, i32) #1

declare dso_local i8* @BIO_ADDR_service_string(i32*, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_ADDR_free(i32*) #1

declare dso_local i32 @BIO_accept_ex(i32, i32*, i32) #1

declare dso_local i64 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @BIO_set_tcp_ndelay(i32, i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openssl_fdset(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @readsocket(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
