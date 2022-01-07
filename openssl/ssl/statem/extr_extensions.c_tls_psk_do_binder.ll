; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions.c_tls_psk_do_binder.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions.c_tls_psk_do_binder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_16__, i64, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@tls_psk_do_binder.resumption_label = internal constant [11 x i8] c"res binder\00", align 1
@tls_psk_do_binder.external_label = internal constant [11 x i8] c"ext binder\00", align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PSK_DO_BINDER = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_CONNECTING = common dso_local global i64 0, align 8
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@SSL_R_BAD_HANDSHAKE_LENGTH = common dso_local global i32 0, align 4
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BINDER_DOES_NOT_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_psk_do_binder(%struct.TYPE_18__* %0, i32* %1, i8* %2, i64 %3, i8* %4, i8* %5, %struct.TYPE_17__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %39 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %21, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  %43 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %23, align 8
  %46 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %24, align 8
  %49 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %25, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @EVP_MD_size(i32* %52)
  store i32 %53, i32* %31, align 4
  store i32 -1, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %54 = load i32, i32* %31, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ossl_assert(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %9
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %62 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %63 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %64 = call i32 @SSLfatal(%struct.TYPE_18__* %60, i32 %61, i32 %62, i32 %63)
  br label %323

65:                                               ; preds = %9
  %66 = load i32, i32* %31, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %30, align 8
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSL_EARLY_DATA_CONNECTING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %33, align 4
  br label %91

91:                                               ; preds = %90, %84, %76, %70, %65
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.external_label, i64 0, i64 0), i8** %27, align 8
  store i64 10, i64* %29, align 8
  br label %96

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_psk_do_binder.resumption_label, i64 0, i64 0), i8** %27, align 8
  store i64 10, i64* %29, align 8
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %33, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101, %96
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %26, align 8
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %26, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %26, align 8
  %127 = call i32 @tls13_generate_secret(%struct.TYPE_18__* %118, i32* %119, i32* null, i32 %122, i32 %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %117
  br label %323

130:                                              ; preds = %117
  %131 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %131, i32** %20, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = load i32*, i32** %20, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i64 @EVP_DigestInit_ex(i32* %135, i32* %136, i32* null)
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %20, align 8
  %141 = call i64 @EVP_DigestFinal_ex(i32* %140, i8* %42, i32* null)
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139, %134, %130
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %145 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %146 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %147 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %148 = call i32 @SSLfatal(%struct.TYPE_18__* %144, i32 %145, i32 %146, i32 %147)
  br label %323

149:                                              ; preds = %139
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i8*, i8** %26, align 8
  %153 = load i8*, i8** %27, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %30, align 8
  %156 = load i64, i64* %30, align 8
  %157 = call i32 @tls13_hkdf_expand(%struct.TYPE_18__* %150, i32* %151, i8* %152, i8* %153, i64 %154, i8* %42, i64 %155, i8* %45, i64 %156, i32 1)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  br label %323

160:                                              ; preds = %149
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i64, i64* %30, align 8
  %164 = call i32 @tls13_derive_finishedkey(%struct.TYPE_18__* %161, i32* %162, i8* %45, i8* %48, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  br label %323

167:                                              ; preds = %160
  %168 = load i32*, i32** %20, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i64 @EVP_DigestInit_ex(i32* %168, i32* %169, i32* null)
  %171 = icmp sle i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_18__* %173, i32 %174, i32 %175, i32 %176)
  br label %323

178:                                              ; preds = %167
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SSL_HRR_PENDING, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %243

184:                                              ; preds = %178
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @BIO_get_mem_data(i32 %188, i8** %36)
  store i64 %189, i64* %35, align 8
  store i64 %189, i64* %34, align 8
  %190 = load i64, i64* %35, align 8
  %191 = icmp sle i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %194 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %195 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %196 = load i32, i32* @SSL_R_BAD_HANDSHAKE_LENGTH, align 4
  %197 = call i32 @SSLfatal(%struct.TYPE_18__* %193, i32 %194, i32 %195, i32 %196)
  br label %323

198:                                              ; preds = %184
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %198
  %204 = load i8*, i8** %36, align 8
  %205 = load i64, i64* %34, align 8
  %206 = call i32 @PACKET_buf_init(i32* %37, i8* %204, i64 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = call i32 @PACKET_forward(i32* %37, i32 1)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = call i32 @PACKET_get_length_prefixed_3(i32* %37, i32* %38)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = call i32 @PACKET_forward(i32* %37, i32 1)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call i32 @PACKET_get_length_prefixed_3(i32* %37, i32* %38)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217, %214, %211, %208, %203
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %222 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %223 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %224 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %225 = call i32 @SSLfatal(%struct.TYPE_18__* %221, i32 %222, i32 %223, i32 %224)
  br label %323

226:                                              ; preds = %217
  %227 = call i64 @PACKET_remaining(i32* %37)
  %228 = load i64, i64* %34, align 8
  %229 = sub i64 %228, %227
  store i64 %229, i64* %34, align 8
  br label %230

230:                                              ; preds = %226, %198
  %231 = load i32*, i32** %20, align 8
  %232 = load i8*, i8** %36, align 8
  %233 = load i64, i64* %34, align 8
  %234 = call i64 @EVP_DigestUpdate(i32* %231, i8* %232, i64 %233)
  %235 = icmp sle i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %238 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %239 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %240 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %241 = call i32 @SSLfatal(%struct.TYPE_18__* %237, i32 %238, i32 %239, i32 %240)
  br label %323

242:                                              ; preds = %230
  br label %243

243:                                              ; preds = %242, %178
  %244 = load i32*, i32** %20, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = load i64, i64* %13, align 8
  %247 = call i64 @EVP_DigestUpdate(i32* %244, i8* %245, i64 %246)
  %248 = icmp sle i64 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %243
  %250 = load i32*, i32** %20, align 8
  %251 = call i64 @EVP_DigestFinal_ex(i32* %250, i8* %42, i32* null)
  %252 = icmp sle i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249, %243
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %255 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %256 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %257 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %258 = call i32 @SSLfatal(%struct.TYPE_18__* %254, i32 %255, i32 %256, i32 %257)
  br label %323

259:                                              ; preds = %249
  %260 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %261 = load i64, i64* %30, align 8
  %262 = call i32* @EVP_PKEY_new_raw_private_key(i32 %260, i32* null, i8* %48, i64 %261)
  store i32* %262, i32** %19, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %267 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %268 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %269 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %270 = call i32 @SSLfatal(%struct.TYPE_18__* %266, i32 %267, i32 %268, i32 %269)
  br label %323

271:                                              ; preds = %259
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  store i8* %51, i8** %15, align 8
  br label %275

275:                                              ; preds = %274, %271
  %276 = load i64, i64* %30, align 8
  store i64 %276, i64* %28, align 8
  %277 = load i32*, i32** %20, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = load i32*, i32** %19, align 8
  %280 = call i64 @EVP_DigestSignInit(i32* %277, i32* null, i32* %278, i32* null, i32* %279)
  %281 = icmp sle i64 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %275
  %283 = load i32*, i32** %20, align 8
  %284 = load i64, i64* %30, align 8
  %285 = call i64 @EVP_DigestSignUpdate(i32* %283, i8* %42, i64 %284)
  %286 = icmp sle i64 %285, 0
  br i1 %286, label %296, label %287

287:                                              ; preds = %282
  %288 = load i32*, i32** %20, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = call i64 @EVP_DigestSignFinal(i32* %288, i8* %289, i64* %28)
  %291 = icmp sle i64 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %287
  %293 = load i64, i64* %28, align 8
  %294 = load i64, i64* %30, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %292, %287, %282, %275
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %298 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %299 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %300 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %301 = call i32 @SSLfatal(%struct.TYPE_18__* %297, i32 %298, i32 %299, i32 %300)
  br label %323

302:                                              ; preds = %292
  %303 = load i32, i32* %17, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 1, i32* %32, align 4
  br label %322

306:                                              ; preds = %302
  %307 = load i8*, i8** %14, align 8
  %308 = load i8*, i8** %15, align 8
  %309 = load i64, i64* %30, align 8
  %310 = call i64 @CRYPTO_memcmp(i8* %307, i8* %308, i64 %309)
  %311 = icmp eq i64 %310, 0
  %312 = zext i1 %311 to i32
  store i32 %312, i32* %32, align 4
  %313 = load i32, i32* %32, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %306
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %317 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %318 = load i32, i32* @SSL_F_TLS_PSK_DO_BINDER, align 4
  %319 = load i32, i32* @SSL_R_BINDER_DOES_NOT_VERIFY, align 4
  %320 = call i32 @SSLfatal(%struct.TYPE_18__* %316, i32 %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %315, %306
  br label %322

322:                                              ; preds = %321, %305
  br label %323

323:                                              ; preds = %322, %296, %265, %253, %236, %220, %192, %172, %166, %159, %143, %129, %59
  %324 = trunc i64 %44 to i32
  %325 = call i32 @OPENSSL_cleanse(i8* %45, i32 %324)
  %326 = trunc i64 %47 to i32
  %327 = call i32 @OPENSSL_cleanse(i8* %48, i32 %326)
  %328 = load i32*, i32** %19, align 8
  %329 = call i32 @EVP_PKEY_free(i32* %328)
  %330 = load i32*, i32** %20, align 8
  %331 = call i32 @EVP_MD_CTX_free(i32* %330)
  %332 = load i32, i32* %32, align 4
  %333 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %333)
  ret i32 %332
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_18__*, i32, i32, i32) #2

declare dso_local i32 @tls13_generate_secret(%struct.TYPE_18__*, i32*, i32*, i32, i32, i8*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_18__*, i32*, i8*, i8*, i64, i8*, i64, i8*, i64, i32) #2

declare dso_local i32 @tls13_derive_finishedkey(%struct.TYPE_18__*, i32*, i8*, i8*, i64) #2

declare dso_local i64 @BIO_get_mem_data(i32, i8**) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #2

declare dso_local i32 @PACKET_forward(i32*, i32) #2

declare dso_local i32 @PACKET_get_length_prefixed_3(i32*, i32*) #2

declare dso_local i64 @PACKET_remaining(i32*) #2

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #2

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
