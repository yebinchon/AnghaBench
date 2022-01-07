; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64, i32 (%struct.TYPE_29__*)*, i32, i32, i64, %struct.TYPE_26__, %struct.TYPE_27__, i32*, i32, %struct.TYPE_25__*, i32*, i32*, i32 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64, i64*, i8*, i32, i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64, i64, i32* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_29__*)* }

@SSL_NOTHING = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_WRITE_BYTES = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_WRITING = common dso_local global i64 0, align 8
@SSL_KEY_UPDATE_NONE = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_UNAUTH_WRITING = common dso_local global i64 0, align 8
@SSL_MODE_RELEASE_BUFFERS = common dso_local global i32 0, align 4
@SSL_MAX_PIPELINES = common dso_local global i64 0, align 8
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_PIPELINE = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i32 0, align 4
@SSL_MODE_ENABLE_PARTIAL_WRITE = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_TLS1_1_MULTIBLOCK = common dso_local global i32 0, align 4
@EVP_CTRL_TLS1_1_MULTIBLOCK_AAD = common dso_local global i32 0, align 4
@EVP_CTRL_TLS1_1_MULTIBLOCK_ENCRYPT = common dso_local global i32 0, align 4
@EVP_CTRL_TLS1_1_MULTIBLOCK_MAX_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_write_bytes(%struct.TYPE_29__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %12, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i64 0
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %18, align 8
  %34 = load i32, i32* @SSL_NOTHING, align 4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %5
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %57, %61
  %63 = icmp ult i64 %53, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %52, %5
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %66 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %67 = load i32, i32* @SSL_F_SSL3_WRITE_BYTES, align 4
  %68 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %69 = call i32 @SSLfatal(%struct.TYPE_29__* %65, i32 %66, i32 %67, i32 %68)
  store i32 -1, i32* %6, align 4
  br label %370

70:                                               ; preds = %52, %47
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SSL_EARLY_DATA_WRITING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @early_data_count_ok(%struct.TYPE_29__* %77, i64 %78, i32 0, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %370

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SSL_KEY_UPDATE_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %98 = call i32 @ossl_statem_set_in_init(%struct.TYPE_29__* %97, i32 1)
  br label %99

99:                                               ; preds = %96, %90, %82
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %101 = call i64 @SSL_in_init(%struct.TYPE_29__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %105 = call i32 @ossl_statem_get_in_handshake(%struct.TYPE_29__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %128, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SSL_EARLY_DATA_UNAUTH_WRITING, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 2
  %116 = load i32 (%struct.TYPE_29__*)*, i32 (%struct.TYPE_29__*)** %115, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %118 = call i32 %116(%struct.TYPE_29__* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %19, align 4
  store i32 %122, i32* %6, align 4
  br label %370

123:                                              ; preds = %113
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 -1, i32* %6, align 4
  br label %370

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %107, %103, %99
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @ssl3_write_pending(%struct.TYPE_29__* %134, i32 %135, i8* %138, i64 %142, i64* %20)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %133
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  %151 = load i32, i32* %19, align 4
  store i32 %151, i32* %6, align 4
  br label %370

152:                                              ; preds = %133
  %153 = load i64, i64* %20, align 8
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %13, align 8
  br label %156

156:                                              ; preds = %152, %128
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SSL_MODE_RELEASE_BUFFERS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %169 = call i32 @SSL_IS_DTLS(%struct.TYPE_29__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %173 = call i32 @ssl3_release_write_buffer(%struct.TYPE_29__* %172)
  br label %174

174:                                              ; preds = %171, %167, %160
  %175 = load i64, i64* %13, align 8
  %176 = load i64*, i64** %11, align 8
  store i64 %175, i64* %176, align 8
  store i32 1, i32* %6, align 4
  br label %370

177:                                              ; preds = %156
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub i64 %178, %179
  store i64 %180, i64* %14, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %182 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_29__* %181)
  store i64 %182, i64* %15, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %184 = call i64 @ssl_get_split_send_fragment(%struct.TYPE_29__* %183)
  store i64 %184, i64* %16, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %17, align 8
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* @SSL_MAX_PIPELINES, align 8
  %190 = icmp ugt i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %177
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %193 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %194 = load i32, i32* @SSL_F_SSL3_WRITE_BYTES, align 4
  %195 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %196 = call i32 @SSLfatal(%struct.TYPE_29__* %192, i32 %193, i32 %194, i32 %195)
  store i32 -1, i32* %6, align 4
  br label %370

197:                                              ; preds = %177
  %198 = load i64, i64* %17, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 8
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %218, label %205

205:                                              ; preds = %200
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 8
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @EVP_CIPHER_CTX_cipher(i32* %208)
  %210 = call i32 @EVP_CIPHER_flags(i32 %209)
  %211 = load i32, i32* @EVP_CIPH_FLAG_PIPELINE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %205
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %216 = call i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_29__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214, %205, %200, %197
  store i64 1, i64* %17, align 8
  br label %219

219:                                              ; preds = %218, %214
  %220 = load i64, i64* %15, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* %16, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load i64, i64* %16, align 8
  %227 = load i64, i64* %15, align 8
  %228 = icmp ugt i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %225, %222, %219
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %231 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %232 = load i32, i32* @SSL_F_SSL3_WRITE_BYTES, align 4
  %233 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %234 = call i32 @SSLfatal(%struct.TYPE_29__* %230, i32 %231, i32 %232, i32 %233)
  store i32 -1, i32* %6, align 4
  br label %370

235:                                              ; preds = %225
  br label %236

236:                                              ; preds = %369, %235
  %237 = load i64, i64* @SSL_MAX_PIPELINES, align 8
  %238 = call i8* @llvm.stacksave()
  store i8* %238, i8** %21, align 8
  %239 = alloca i64, i64 %237, align 16
  store i64 %237, i64* %22, align 8
  %240 = load i64, i64* %14, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i64 1, i64* %25, align 8
  br label %249

243:                                              ; preds = %236
  %244 = load i64, i64* %14, align 8
  %245 = sub i64 %244, 1
  %246 = load i64, i64* %16, align 8
  %247 = udiv i64 %245, %246
  %248 = add i64 %247, 1
  store i64 %248, i64* %25, align 8
  br label %249

249:                                              ; preds = %243, %242
  %250 = load i64, i64* %25, align 8
  %251 = load i64, i64* %17, align 8
  %252 = icmp ugt i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = load i64, i64* %17, align 8
  store i64 %254, i64* %25, align 8
  br label %255

255:                                              ; preds = %253, %249
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* %25, align 8
  %258 = udiv i64 %256, %257
  %259 = load i64, i64* %15, align 8
  %260 = icmp uge i64 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %255
  store i64 0, i64* %26, align 8
  br label %262

262:                                              ; preds = %270, %261
  %263 = load i64, i64* %26, align 8
  %264 = load i64, i64* %25, align 8
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load i64, i64* %15, align 8
  %268 = load i64, i64* %26, align 8
  %269 = getelementptr inbounds i64, i64* %239, i64 %268
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %266
  %271 = load i64, i64* %26, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %26, align 8
  br label %262

273:                                              ; preds = %262
  br label %302

274:                                              ; preds = %255
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* %25, align 8
  %277 = udiv i64 %275, %276
  store i64 %277, i64* %23, align 8
  %278 = load i64, i64* %14, align 8
  %279 = load i64, i64* %25, align 8
  %280 = urem i64 %278, %279
  store i64 %280, i64* %24, align 8
  store i64 0, i64* %26, align 8
  br label %281

281:                                              ; preds = %298, %274
  %282 = load i64, i64* %26, align 8
  %283 = load i64, i64* %25, align 8
  %284 = icmp ult i64 %282, %283
  br i1 %284, label %285, label %301

285:                                              ; preds = %281
  %286 = load i64, i64* %23, align 8
  %287 = load i64, i64* %26, align 8
  %288 = getelementptr inbounds i64, i64* %239, i64 %287
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* %26, align 8
  %290 = load i64, i64* %24, align 8
  %291 = icmp ult i64 %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %285
  %293 = load i64, i64* %26, align 8
  %294 = getelementptr inbounds i64, i64* %239, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %294, align 8
  br label %297

297:                                              ; preds = %292, %285
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %26, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %26, align 8
  br label %281

301:                                              ; preds = %281
  br label %302

302:                                              ; preds = %301, %273
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load i8*, i8** %12, align 8
  %306 = load i64, i64* %13, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  %308 = load i64, i64* %25, align 8
  %309 = call i32 @do_ssl3_write(%struct.TYPE_29__* %303, i32 %304, i8* %307, i64* %239, i64 %308, i32 0, i64* %20)
  store i32 %309, i32* %19, align 4
  %310 = load i32, i32* %19, align 4
  %311 = icmp sle i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %302
  %313 = load i64, i64* %13, align 8
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 7
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 0
  store i64 %313, i64* %316, align 8
  %317 = load i32, i32* %19, align 4
  store i32 %317, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %366

318:                                              ; preds = %302
  %319 = load i64, i64* %20, align 8
  %320 = load i64, i64* %14, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %333, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @SSL3_RT_APPLICATION_DATA, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %359

326:                                              ; preds = %322
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @SSL_MODE_ENABLE_PARTIAL_WRITE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %359

333:                                              ; preds = %326, %318
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  store i64 0, i64* %336, align 8
  %337 = load i64, i64* %20, align 8
  %338 = load i64, i64* %14, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %354

340:                                              ; preds = %333
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @SSL_MODE_RELEASE_BUFFERS, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %349 = call i32 @SSL_IS_DTLS(%struct.TYPE_29__* %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %353 = call i32 @ssl3_release_write_buffer(%struct.TYPE_29__* %352)
  br label %354

354:                                              ; preds = %351, %347, %340, %333
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* %20, align 8
  %357 = add i64 %355, %356
  %358 = load i64*, i64** %11, align 8
  store i64 %357, i64* %358, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %27, align 4
  br label %366

359:                                              ; preds = %326, %322
  %360 = load i64, i64* %20, align 8
  %361 = load i64, i64* %14, align 8
  %362 = sub i64 %361, %360
  store i64 %362, i64* %14, align 8
  %363 = load i64, i64* %20, align 8
  %364 = load i64, i64* %13, align 8
  %365 = add i64 %364, %363
  store i64 %365, i64* %13, align 8
  store i32 0, i32* %27, align 4
  br label %366

366:                                              ; preds = %359, %354, %312
  %367 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %367)
  %368 = load i32, i32* %27, align 4
  switch i32 %368, label %372 [
    i32 0, label %369
    i32 1, label %370
  ]

369:                                              ; preds = %366
  br label %236

370:                                              ; preds = %366, %229, %191, %174, %146, %126, %121, %81, %64
  %371 = load i32, i32* %6, align 4
  ret i32 %371

372:                                              ; preds = %366
  unreachable
}

declare dso_local i32 @SSLfatal(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @early_data_count_ok(%struct.TYPE_29__*, i64, i32, i32) #1

declare dso_local i32 @ossl_statem_set_in_init(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @SSL_in_init(%struct.TYPE_29__*) #1

declare dso_local i32 @ossl_statem_get_in_handshake(%struct.TYPE_29__*) #1

declare dso_local i32 @ssl3_write_pending(%struct.TYPE_29__*, i32, i8*, i64, i64*) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_29__*) #1

declare dso_local i32 @ssl3_release_write_buffer(%struct.TYPE_29__*) #1

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_29__*) #1

declare dso_local i64 @ssl_get_split_send_fragment(%struct.TYPE_29__*) #1

declare dso_local i32 @EVP_CIPHER_flags(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_cipher(i32*) #1

declare dso_local i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_29__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @do_ssl3_write(%struct.TYPE_29__*, i32, i8*, i64*, i64, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
