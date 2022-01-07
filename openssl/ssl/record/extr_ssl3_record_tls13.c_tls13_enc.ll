; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record_tls13.c_tls13_enc.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record_tls13.c_tls13_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i64, %struct.TYPE_25__, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, i32*, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i64, i64 }

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_ENC = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RT_ALERT = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_WRITING = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_WRITE_RETRY = common dso_local global i64 0, align 8
@SSL_AESCCM = common dso_local global i32 0, align 4
@SSL_AES128CCM8 = common dso_local global i32 0, align 4
@SSL_AES256CCM8 = common dso_local global i32 0, align 4
@EVP_CCM8_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@SSL_AESGCM = common dso_local global i32 0, align 4
@EVP_GCM_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SSL_CHACHA20 = common dso_local global i32 0, align 4
@EVP_CHACHAPOLY_TLS_TAG_LEN = common dso_local global i64 0, align 8
@SEQ_NUM_SIZE = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_GET_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_enc(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %27 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 0
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %23, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %41 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %42 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_16__* %39, i32 %40, i32 %41, i32 %42)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %19, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 6
  %56 = call i8* @RECORD_LAYER_get_write_sequence(i32* %55)
  store i8* %56, i8** %20, align 8
  br label %67

57:                                               ; preds = %44
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %19, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 6
  %66 = call i8* @RECORD_LAYER_get_read_sequence(i32* %65)
  store i8* %66, i8** %20, align 8
  br label %67

67:                                               ; preds = %57, %47
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSL3_RT_ALERT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memmove(i8* %79, i8* %82, i64 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

92:                                               ; preds = %70
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %93)
  store i64 %94, i64* %14, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SSL_EARLY_DATA_WRITING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SSL_EARLY_DATA_WRITE_RETRY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %100, %92
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = icmp ne %struct.TYPE_19__* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %24, align 4
  br label %159

127:                                              ; preds = %111, %106
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = icmp ne %struct.TYPE_22__* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br label %140

140:                                              ; preds = %132, %127
  %141 = phi i1 [ false, %127 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @ossl_assert(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %148 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %149 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %150 = call i32 @SSLfatal(%struct.TYPE_16__* %146, i32 %147, i32 %148, i32 %149)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

151:                                              ; preds = %140
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %24, align 4
  br label %159

159:                                              ; preds = %151, %119
  br label %184

160:                                              ; preds = %100
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = icmp ne %struct.TYPE_23__* %165, null
  %167 = zext i1 %166 to i32
  %168 = call i32 @ossl_assert(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %160
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %172 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %173 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %174 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %175 = call i32 @SSLfatal(%struct.TYPE_16__* %171, i32 %172, i32 %173, i32 %174)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

176:                                              ; preds = %160
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %24, align 4
  br label %184

184:                                              ; preds = %176, %159
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* @SSL_AESCCM, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %184
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* @SSL_AES128CCM8, align 4
  %192 = load i32, i32* @SSL_AES256CCM8, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i64, i64* @EVP_CCM8_TLS_TAG_LEN, align 8
  store i64 %197, i64* %15, align 8
  br label %200

198:                                              ; preds = %189
  %199 = load i64, i64* @EVP_CCM_TLS_TAG_LEN, align 8
  store i64 %199, i64* %15, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %206 = load i64, i64* %15, align 8
  %207 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %204, i32 %205, i64 %206, i8* null)
  %208 = icmp sle i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %211 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %212 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %213 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %214 = call i32 @SSLfatal(%struct.TYPE_16__* %210, i32 %211, i32 %212, i32 %213)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

215:                                              ; preds = %203, %200
  br label %238

216:                                              ; preds = %184
  %217 = load i32, i32* %24, align 4
  %218 = load i32, i32* @SSL_AESGCM, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i64, i64* @EVP_GCM_TLS_TAG_LEN, align 8
  store i64 %222, i64* %15, align 8
  br label %237

223:                                              ; preds = %216
  %224 = load i32, i32* %24, align 4
  %225 = load i32, i32* @SSL_CHACHA20, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i64, i64* @EVP_CHACHAPOLY_TLS_TAG_LEN, align 8
  store i64 %229, i64* %15, align 8
  br label %236

230:                                              ; preds = %223
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %232 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %233 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %234 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %235 = call i32 @SSLfatal(%struct.TYPE_16__* %231, i32 %232, i32 %233, i32 %234)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

236:                                              ; preds = %228
  br label %237

237:                                              ; preds = %236, %221
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %238
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %15, align 8
  %246 = add i64 %245, 1
  %247 = icmp ult i64 %244, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

249:                                              ; preds = %241
  %250 = load i64, i64* %15, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = sub i64 %253, %250
  store i64 %254, i64* %252, align 8
  br label %255

255:                                              ; preds = %249, %238
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %258 = icmp ult i64 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %261 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %262 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %263 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %264 = call i32 @SSLfatal(%struct.TYPE_16__* %260, i32 %261, i32 %262, i32 %263)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

265:                                              ; preds = %255
  %266 = load i64, i64* %14, align 8
  %267 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %268 = sub i64 %266, %267
  store i64 %268, i64* %16, align 8
  %269 = load i8*, i8** %19, align 8
  %270 = load i64, i64* %16, align 8
  %271 = call i32 @memcpy(i8* %30, i8* %269, i64 %270)
  store i64 0, i64* %17, align 8
  br label %272

272:                                              ; preds = %295, %265
  %273 = load i64, i64* %17, align 8
  %274 = load i64, i64* @SEQ_NUM_SIZE, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %298

276:                                              ; preds = %272
  %277 = load i8*, i8** %19, align 8
  %278 = load i64, i64* %16, align 8
  %279 = load i64, i64* %17, align 8
  %280 = add i64 %278, %279
  %281 = getelementptr inbounds i8, i8* %277, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8*, i8** %20, align 8
  %285 = load i64, i64* %17, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = xor i32 %283, %288
  %290 = trunc i32 %289 to i8
  %291 = load i64, i64* %16, align 8
  %292 = load i64, i64* %17, align 8
  %293 = add i64 %291, %292
  %294 = getelementptr inbounds i8, i8* %30, i64 %293
  store i8 %290, i8* %294, align 1
  br label %295

295:                                              ; preds = %276
  %296 = load i64, i64* %17, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %17, align 8
  br label %272

298:                                              ; preds = %272
  %299 = load i64, i64* @SEQ_NUM_SIZE, align 8
  store i64 %299, i64* %17, align 8
  br label %300

300:                                              ; preds = %319, %298
  %301 = load i64, i64* %17, align 8
  %302 = icmp ugt i64 %301, 0
  br i1 %302, label %303, label %322

303:                                              ; preds = %300
  %304 = load i8*, i8** %20, align 8
  %305 = load i64, i64* %17, align 8
  %306 = sub i64 %305, 1
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = add i8 %308, 1
  store i8 %309, i8* %307, align 1
  %310 = load i8*, i8** %20, align 8
  %311 = load i64, i64* %17, align 8
  %312 = sub i64 %311, 1
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %303
  br label %322

318:                                              ; preds = %303
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %17, align 8
  %321 = add i64 %320, -1
  store i64 %321, i64* %17, align 8
  br label %300

322:                                              ; preds = %317, %300
  %323 = load i64, i64* %17, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

326:                                              ; preds = %322
  %327 = load i32*, i32** %10, align 8
  %328 = load i32, i32* %9, align 4
  %329 = call i64 @EVP_CipherInit_ex(i32* %327, i32* null, i32* null, i32* null, i8* %30, i32 %328)
  %330 = icmp sle i64 %329, 0
  br i1 %330, label %347, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* %9, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %348, label %334

334:                                              ; preds = %331
  %335 = load i32*, i32** %10, align 8
  %336 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %337 = load i64, i64* %15, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds i8, i8* %340, i64 %343
  %345 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %335, i32 %336, i64 %337, i8* %344)
  %346 = icmp sle i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %334, %326
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

348:                                              ; preds = %334, %331
  %349 = trunc i64 %32 to i32
  %350 = call i32 @WPACKET_init_static_len(i32* %25, i8* %33, i32 %349, i32 0)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %383

352:                                              ; preds = %348
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @WPACKET_put_bytes_u8(i32* %25, i64 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %383

358:                                              ; preds = %352
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @WPACKET_put_bytes_u16(i32* %25, i64 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %383

364:                                              ; preds = %358
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %15, align 8
  %369 = add i64 %367, %368
  %370 = call i32 @WPACKET_put_bytes_u16(i32* %25, i64 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %383

372:                                              ; preds = %364
  %373 = call i32 @WPACKET_get_total_written(i32* %25, i64* %18)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %372
  %376 = load i64, i64* %18, align 8
  %377 = load i32, i32* @SSL3_RT_HEADER_LENGTH, align 4
  %378 = sext i32 %377 to i64
  %379 = icmp ne i64 %376, %378
  br i1 %379, label %383, label %380

380:                                              ; preds = %375
  %381 = call i32 @WPACKET_finish(i32* %25)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %380, %375, %372, %364, %358, %352, %348
  %384 = call i32 @WPACKET_cleanup(i32* %25)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

385:                                              ; preds = %380
  %386 = load i32, i32* %24, align 4
  %387 = load i32, i32* @SSL_AESCCM, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %385
  %391 = load i32*, i32** %10, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = call i64 @EVP_CipherUpdate(i32* %391, i8* null, i32* %21, i8* null, i32 %395)
  %397 = icmp sle i64 %396, 0
  br i1 %397, label %436, label %398

398:                                              ; preds = %390, %385
  %399 = load i32*, i32** %10, align 8
  %400 = trunc i64 %32 to i32
  %401 = call i64 @EVP_CipherUpdate(i32* %399, i8* null, i32* %21, i8* %33, i32 %400)
  %402 = icmp sle i64 %401, 0
  br i1 %402, label %436, label %403

403:                                              ; preds = %398
  %404 = load i32*, i32** %10, align 8
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 1
  %407 = load i8*, i8** %406, align 8
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = trunc i64 %413 to i32
  %415 = call i64 @EVP_CipherUpdate(i32* %404, i8* %407, i32* %21, i8* %410, i32 %414)
  %416 = icmp sle i64 %415, 0
  br i1 %416, label %436, label %417

417:                                              ; preds = %403
  %418 = load i32*, i32** %10, align 8
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 1
  %421 = load i8*, i8** %420, align 8
  %422 = load i32, i32* %21, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %421, i64 %423
  %425 = call i64 @EVP_CipherFinal_ex(i32* %418, i8* %424, i32* %22)
  %426 = icmp sle i64 %425, 0
  br i1 %426, label %436, label %427

427:                                              ; preds = %417
  %428 = load i32, i32* %21, align 4
  %429 = load i32, i32* %22, align 4
  %430 = add nsw i32 %428, %429
  %431 = sext i32 %430 to i64
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %431, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %427, %417, %403, %398, %390
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

437:                                              ; preds = %427
  %438 = load i32, i32* %9, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %465

440:                                              ; preds = %437
  %441 = load i32*, i32** %10, align 8
  %442 = load i32, i32* @EVP_CTRL_AEAD_GET_TAG, align 4
  %443 = load i64, i64* %15, align 8
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds i8, i8* %446, i64 %449
  %451 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %441, i32 %442, i64 %443, i8* %450)
  %452 = icmp sle i64 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %440
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %455 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %456 = load i32, i32* @SSL_F_TLS13_ENC, align 4
  %457 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %458 = call i32 @SSLfatal(%struct.TYPE_16__* %454, i32 %455, i32 %456, i32 %457)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

459:                                              ; preds = %440
  %460 = load i64, i64* %15, align 8
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = add i64 %463, %460
  store i64 %464, i64* %462, align 8
  br label %465

465:                                              ; preds = %459, %437
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %466

466:                                              ; preds = %465, %453, %436, %383, %347, %325, %259, %248, %230, %209, %170, %145, %76, %38
  %467 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %467)
  %468 = load i32, i32* %5, align 4
  ret i32 %468
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i8* @RECORD_LAYER_get_write_sequence(i32*) #2

declare dso_local i8* @RECORD_LAYER_get_read_sequence(i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i64 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i64) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #2

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #2

declare dso_local i32 @WPACKET_finish(i32*) #2

declare dso_local i32 @WPACKET_cleanup(i32*) #2

declare dso_local i64 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #2

declare dso_local i64 @EVP_CipherFinal_ex(i32*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
