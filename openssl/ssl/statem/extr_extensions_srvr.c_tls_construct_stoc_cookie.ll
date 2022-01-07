; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_cookie.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_19__*, i8*, i64*)* }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 (i32, i32*, i64*)* }

@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_COOKIE = common dso_local global i32 0, align 4
@SSL_R_NO_COOKIE_CALLBACK_SET = common dso_local global i32 0, align 4
@TLSEXT_TYPE_cookie = common dso_local global i32 0, align 4
@MAX_COOKIE_SIZE = common dso_local global i64 0, align 8
@COOKIE_STATE_FORMAT_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_COOKIE_LENGTH = common dso_local global i64 0, align 8
@SSL_R_COOKIE_GEN_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@SHA256_DIGEST_LENGTH = common dso_local global i64 0, align 8
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_cookie(%struct.TYPE_19__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %28 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %37, i32* %6, align 4
  br label %350

38:                                               ; preds = %5
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_19__*, i8*, i64*)*, i64 (%struct.TYPE_19__*, i8*, i64*)** %42, align 8
  %44 = icmp eq i64 (%struct.TYPE_19__*, i8*, i64*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %48 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %49 = load i32, i32* @SSL_R_NO_COOKIE_CALLBACK_SET, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_19__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %51, i32* %6, align 4
  br label %350

52:                                               ; preds = %38
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @TLSEXT_TYPE_cookie, align 4
  %55 = call i32 @WPACKET_put_bytes_u16(i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %131

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @WPACKET_start_sub_packet_u16(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %131

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @WPACKET_start_sub_packet_u16(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %131

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @WPACKET_get_total_written(i32* %66, i64* %19)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %72 = call i32 @WPACKET_reserve_bytes(i32* %70, i64 %71, i8** %16)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %131

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @COOKIE_STATE_FORMAT_VERSION, align 4
  %77 = call i32 @WPACKET_put_bytes_u16(i32* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* @TLS1_3_VERSION, align 4
  %82 = call i32 @WPACKET_put_bytes_u16(i32* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %131

84:                                               ; preds = %79
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @WPACKET_put_bytes_u16(i32* %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %131

92:                                               ; preds = %84
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32 (i32, i32*, i64*)*, i32 (i32, i32*, i64*)** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 %97(i32 %102, i32* %103, i64* %20)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %92
  %107 = load i32*, i32** %8, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @WPACKET_put_bytes_u8(i32* %107, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %106
  %117 = load i32*, i32** %8, align 8
  %118 = call i64 @time(i32* null)
  %119 = trunc i64 %118 to i32
  %120 = call i32 @WPACKET_put_bytes_u32(i32* %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @WPACKET_start_sub_packet_u16(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32*, i32** %8, align 8
  %128 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %129 = call i32 @WPACKET_reserve_bytes(i32* %127, i64 %128, i8** %12)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126, %122, %116, %106, %92, %84, %79, %74, %69, %65, %61, %57, %52
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %134 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %135 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %136 = call i32 @SSLfatal(%struct.TYPE_19__* %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %137, i32* %6, align 4
  br label %350

138:                                              ; preds = %126
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = call i32 @ssl3_digest_cached_records(%struct.TYPE_19__* %139, i32 0)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %146 = call i32 @ssl_handshake_hash(%struct.TYPE_19__* %143, i8* %144, i64 %145, i64* %22)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %142, %138
  %149 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %149, i32* %6, align 4
  br label %350

150:                                              ; preds = %142
  %151 = load i32*, i32** %8, align 8
  %152 = load i64, i64* %22, align 8
  %153 = call i32 @WPACKET_allocate_bytes(i32* %151, i64 %152, i8** %13)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load i8*, i8** %12, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = icmp eq i8* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @ossl_assert(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @WPACKET_close(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @WPACKET_start_sub_packet_u8(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32*, i32** %8, align 8
  %172 = load i64, i64* @SSL_COOKIE_LENGTH, align 8
  %173 = call i32 @WPACKET_reserve_bytes(i32* %171, i64 %172, i8** %14)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %170, %166, %162, %155, %150
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %177 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %178 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %179 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %180 = call i32 @SSLfatal(%struct.TYPE_19__* %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %181, i32* %6, align 4
  br label %350

182:                                              ; preds = %170
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i64 (%struct.TYPE_19__*, i8*, i64*)*, i64 (%struct.TYPE_19__*, i8*, i64*)** %186, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = call i64 %187(%struct.TYPE_19__* %188, i8* %189, i64* %24)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %182
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %194 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %195 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %196 = load i32, i32* @SSL_R_COOKIE_GEN_CALLBACK_FAILURE, align 4
  %197 = call i32 @SSLfatal(%struct.TYPE_19__* %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %198, i32* %6, align 4
  br label %350

199:                                              ; preds = %182
  %200 = load i32*, i32** %8, align 8
  %201 = load i64, i64* %24, align 8
  %202 = call i32 @WPACKET_allocate_bytes(i32* %200, i64 %201, i8** %15)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %199
  %205 = load i8*, i8** %14, align 8
  %206 = load i8*, i8** %15, align 8
  %207 = icmp eq i8* %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @ossl_assert(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %204
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @WPACKET_close(i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %211
  %216 = load i32*, i32** %8, align 8
  %217 = call i32 @WPACKET_get_total_written(i32* %216, i64* %21)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i32*, i32** %8, align 8
  %221 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  %222 = call i32 @WPACKET_reserve_bytes(i32* %220, i64 %221, i8** %17)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %219, %215, %211, %204, %199
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %226 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %227 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %228 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %229 = call i32 @SSLfatal(%struct.TYPE_19__* %225, i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %230, i32* %6, align 4
  br label %350

231:                                              ; preds = %219
  %232 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  store i64 %232, i64* %23, align 8
  %233 = load i64, i64* %19, align 8
  %234 = load i64, i64* %21, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %21, align 8
  %236 = load i64, i64* %21, align 8
  %237 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %238 = load i64, i64* @SHA256_DIGEST_LENGTH, align 8
  %239 = sub i64 %237, %238
  %240 = icmp ule i64 %236, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @ossl_assert(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %231
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %246 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %247 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %248 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %249 = call i32 @SSLfatal(%struct.TYPE_19__* %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %250, i32* %6, align 4
  br label %350

251:                                              ; preds = %231
  %252 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %252, i32** %25, align 8
  %253 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32* @EVP_PKEY_new_raw_private_key(i32 %253, i32* null, i32 %259, i32 4)
  store i32* %260, i32** %26, align 8
  %261 = load i32*, i32** %25, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %251
  %264 = load i32*, i32** %26, align 8
  %265 = icmp eq i32* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263, %251
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %268 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %269 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %270 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %271 = call i32 @SSLfatal(%struct.TYPE_19__* %267, i32 %268, i32 %269, i32 %270)
  br label %344

272:                                              ; preds = %263
  %273 = load i32*, i32** %25, align 8
  %274 = call i32 (...) @EVP_sha256()
  %275 = load i32*, i32** %26, align 8
  %276 = call i64 @EVP_DigestSignInit(i32* %273, i32* null, i32 %274, i32* null, i32* %275)
  %277 = icmp sle i64 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %272
  %279 = load i32*, i32** %25, align 8
  %280 = load i8*, i8** %17, align 8
  %281 = load i8*, i8** %16, align 8
  %282 = load i64, i64* %21, align 8
  %283 = call i64 @EVP_DigestSign(i32* %279, i8* %280, i64* %23, i8* %281, i64 %282)
  %284 = icmp sle i64 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %278, %272
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %287 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %288 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %289 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %290 = call i32 @SSLfatal(%struct.TYPE_19__* %286, i32 %287, i32 %288, i32 %289)
  br label %344

291:                                              ; preds = %278
  %292 = load i64, i64* %21, align 8
  %293 = load i64, i64* %23, align 8
  %294 = add i64 %292, %293
  %295 = load i64, i64* @MAX_COOKIE_SIZE, align 8
  %296 = icmp ule i64 %294, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 @ossl_assert(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %291
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %302 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %303 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %304 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %305 = call i32 @SSLfatal(%struct.TYPE_19__* %301, i32 %302, i32 %303, i32 %304)
  br label %344

306:                                              ; preds = %291
  %307 = load i32*, i32** %8, align 8
  %308 = load i64, i64* %23, align 8
  %309 = call i32 @WPACKET_allocate_bytes(i32* %307, i64 %308, i8** %18)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %306
  %312 = load i8*, i8** %17, align 8
  %313 = load i8*, i8** %18, align 8
  %314 = icmp eq i8* %312, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @ossl_assert(i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %336

318:                                              ; preds = %311
  %319 = load i8*, i8** %16, align 8
  %320 = load i8*, i8** %17, align 8
  %321 = load i64, i64* %21, align 8
  %322 = sub i64 0, %321
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = icmp eq i8* %319, %323
  %325 = zext i1 %324 to i32
  %326 = call i32 @ossl_assert(i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %318
  %329 = load i32*, i32** %8, align 8
  %330 = call i32 @WPACKET_close(i32* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load i32*, i32** %8, align 8
  %334 = call i32 @WPACKET_close(i32* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %332, %328, %318, %311, %306
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %338 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %339 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_COOKIE, align 4
  %340 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %341 = call i32 @SSLfatal(%struct.TYPE_19__* %337, i32 %338, i32 %339, i32 %340)
  br label %344

342:                                              ; preds = %332
  %343 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %343, i32* %27, align 4
  br label %344

344:                                              ; preds = %342, %336, %300, %285, %266
  %345 = load i32*, i32** %25, align 8
  %346 = call i32 @EVP_MD_CTX_free(i32* %345)
  %347 = load i32*, i32** %26, align 8
  %348 = call i32 @EVP_PKEY_free(i32* %347)
  %349 = load i32, i32* %27, align 4
  store i32 %349, i32* %6, align 4
  br label %350

350:                                              ; preds = %344, %244, %224, %192, %175, %148, %131, %45, %36
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_reserve_bytes(i32*, i64, i8**) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u32(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_19__*, i8*, i64, i64*) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
