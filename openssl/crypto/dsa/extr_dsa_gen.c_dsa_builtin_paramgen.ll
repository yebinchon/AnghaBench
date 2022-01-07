; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32 }

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA224_DIGEST_LENGTH = common dso_local global i32 0, align 4
@DSA_F_DSA_BUILTIN_PARAMGEN = common dso_local global i32 0, align 4
@DSA_R_SEED_LEN_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_builtin_paramgen(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32* %3, i8* %4, i64 %5, i8* %6, i32* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %48 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %23, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %24, align 8
  %52 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %25, align 8
  %55 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %26, align 8
  %58 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %27, align 8
  store i32* null, i32** %33, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %61 = load i64, i64* %14, align 8
  %62 = lshr i64 %61, 3
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32* null, i32** %44, align 8
  store i32 2, i32* %45, align 4
  %64 = load i32, i32* %41, align 4
  %65 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %10
  %68 = load i32, i32* %41, align 4
  %69 = load i32, i32* @SHA224_DIGEST_LENGTH, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %41, align 4
  %73 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %589

76:                                               ; preds = %71, %67, %10
  %77 = load i32*, i32** %15, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32, i32* %41, align 4
  %81 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32* (...) @EVP_sha1()
  store i32* %84, i32** %15, align 8
  br label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %41, align 4
  %87 = load i32, i32* @SHA224_DIGEST_LENGTH, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32* (...) @EVP_sha224()
  store i32* %90, i32** %15, align 8
  br label %93

91:                                               ; preds = %85
  %92 = call i32* (...) @EVP_sha256()
  store i32* %92, i32** %15, align 8
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %83
  br label %98

95:                                               ; preds = %76
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @EVP_MD_size(i32* %96)
  store i32 %97, i32* %41, align 4
  br label %98

98:                                               ; preds = %95, %94
  %99 = load i64, i64* %13, align 8
  %100 = icmp ult i64 %99, 512
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i64 512, i64* %13, align 8
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 63
  %105 = udiv i64 %104, 64
  %106 = mul i64 %105, 64
  store i64 %106, i64* %13, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %41, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN, align 4
  %116 = load i32, i32* @DSA_R_SEED_LEN_SMALL, align 4
  %117 = call i32 @DSAerr(i32 %115, i32 %116)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %589

118:                                              ; preds = %109
  %119 = load i64, i64* %17, align 8
  %120 = load i32, i32* %41, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* %41, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %17, align 8
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i8*, i8** %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memcpy(i8* %51, i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %126, %102
  %132 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %132, i32** %36, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %510

135:                                              ; preds = %131
  %136 = call i32* (...) @BN_CTX_new()
  store i32* %136, i32** %44, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %510

139:                                              ; preds = %135
  %140 = load i32*, i32** %44, align 8
  %141 = call i32 @BN_CTX_start(i32* %140)
  %142 = load i32*, i32** %44, align 8
  %143 = call i32* @BN_CTX_get(i32* %142)
  store i32* %143, i32** %28, align 8
  %144 = load i32*, i32** %44, align 8
  %145 = call i32* @BN_CTX_get(i32* %144)
  store i32* %145, i32** %33, align 8
  %146 = load i32*, i32** %44, align 8
  %147 = call i32* @BN_CTX_get(i32* %146)
  store i32* %147, i32** %29, align 8
  %148 = load i32*, i32** %44, align 8
  %149 = call i32* @BN_CTX_get(i32* %148)
  store i32* %149, i32** %34, align 8
  %150 = load i32*, i32** %44, align 8
  %151 = call i32* @BN_CTX_get(i32* %150)
  store i32* %151, i32** %30, align 8
  %152 = load i32*, i32** %44, align 8
  %153 = call i32* @BN_CTX_get(i32* %152)
  store i32* %153, i32** %31, align 8
  %154 = load i32*, i32** %44, align 8
  %155 = call i32* @BN_CTX_get(i32* %154)
  store i32* %155, i32** %35, align 8
  %156 = load i32*, i32** %44, align 8
  %157 = call i32* @BN_CTX_get(i32* %156)
  store i32* %157, i32** %32, align 8
  %158 = load i32*, i32** %32, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %139
  br label %510

161:                                              ; preds = %139
  %162 = load i32*, i32** %32, align 8
  %163 = call i32* (...) @BN_value_one()
  %164 = load i64, i64* %13, align 8
  %165 = sub i64 %164, 1
  %166 = trunc i64 %165 to i32
  %167 = call i32 @BN_lshift(i32* %162, i32* %163, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  br label %510

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %444, %170
  br label %172

172:                                              ; preds = %283, %171
  %173 = load i8*, i8** %16, align 8
  %174 = icmp eq i8* %173, null
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %47, align 4
  %176 = load i32*, i32** %21, align 8
  %177 = load i32, i32* %40, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %40, align 4
  %179 = call i32 @BN_GENCB_call(i32* %176, i32 0, i32 %177)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %172
  br label %510

182:                                              ; preds = %172
  %183 = load i32, i32* %47, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* %41, align 4
  %187 = call i64 @RAND_bytes(i8* %51, i32 %186)
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %510

190:                                              ; preds = %185
  br label %192

191:                                              ; preds = %182
  store i8* null, i8** %16, align 8
  br label %192

192:                                              ; preds = %191, %190
  %193 = load i32, i32* %41, align 4
  %194 = call i32 @memcpy(i8* %57, i8* %51, i32 %193)
  %195 = load i32, i32* %41, align 4
  %196 = call i32 @memcpy(i8* %60, i8* %51, i32 %195)
  %197 = load i32, i32* %41, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %37, align 4
  br label %199

199:                                              ; preds = %216, %192
  %200 = load i32, i32* %37, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i32, i32* %37, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %57, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = add i8 %206, 1
  store i8 %207, i8* %205, align 1
  %208 = load i32, i32* %37, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %57, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %219

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %37, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %37, align 4
  br label %199

219:                                              ; preds = %214, %199
  %220 = load i32, i32* %41, align 4
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @EVP_Digest(i8* %51, i32 %220, i8* %54, i32* null, i32* %221, i32* null)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %510

225:                                              ; preds = %219
  %226 = load i32, i32* %41, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = call i32 @EVP_Digest(i8* %57, i32 %226, i8* %60, i32* null, i32* %227, i32* null)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  br label %510

231:                                              ; preds = %225
  store i32 0, i32* %37, align 4
  br label %232

232:                                              ; preds = %249, %231
  %233 = load i32, i32* %37, align 4
  %234 = load i32, i32* %41, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %252

236:                                              ; preds = %232
  %237 = load i32, i32* %37, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %60, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = load i32, i32* %37, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %54, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = xor i32 %246, %241
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %244, align 1
  br label %249

249:                                              ; preds = %236
  %250 = load i32, i32* %37, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %37, align 4
  br label %232

252:                                              ; preds = %232
  %253 = getelementptr inbounds i8, i8* %54, i64 0
  %254 = load i8, i8* %253, align 16
  %255 = zext i8 %254 to i32
  %256 = or i32 %255, 128
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 16
  %258 = load i32, i32* %41, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %54, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, 1
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 1
  %266 = load i32, i32* %41, align 4
  %267 = load i32*, i32** %34, align 8
  %268 = call i32 @BN_bin2bn(i8* %54, i32 %266, i32* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %252
  br label %510

271:                                              ; preds = %252
  %272 = load i32*, i32** %34, align 8
  %273 = load i32*, i32** %44, align 8
  %274 = load i32*, i32** %21, align 8
  %275 = call i32 @BN_check_prime(i32* %272, i32* %273, i32* %274)
  store i32 %275, i32* %43, align 4
  %276 = load i32, i32* %43, align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %284

279:                                              ; preds = %271
  %280 = load i32, i32* %43, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  br label %510

283:                                              ; preds = %279
  br label %172

284:                                              ; preds = %278
  %285 = load i32*, i32** %21, align 8
  %286 = call i32 @BN_GENCB_call(i32* %285, i32 2, i32 0)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %284
  br label %510

289:                                              ; preds = %284
  %290 = load i32*, i32** %21, align 8
  %291 = call i32 @BN_GENCB_call(i32* %290, i32 3, i32 0)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %289
  br label %510

294:                                              ; preds = %289
  store i32 0, i32* %42, align 4
  %295 = load i64, i64* %13, align 8
  %296 = sub i64 %295, 1
  %297 = udiv i64 %296, 160
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %39, align 4
  br label %299

299:                                              ; preds = %443, %294
  %300 = load i32, i32* %42, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load i32*, i32** %21, align 8
  %304 = load i32, i32* %42, align 4
  %305 = call i32 @BN_GENCB_call(i32* %303, i32 0, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %302
  br label %510

308:                                              ; preds = %302, %299
  %309 = load i32*, i32** %29, align 8
  %310 = call i32 @BN_zero(i32* %309)
  store i32 0, i32* %38, align 4
  br label %311

311:                                              ; preds = %368, %308
  %312 = load i32, i32* %38, align 4
  %313 = load i32, i32* %39, align 4
  %314 = icmp sle i32 %312, %313
  br i1 %314, label %315, label %371

315:                                              ; preds = %311
  %316 = load i32, i32* %41, align 4
  %317 = sub nsw i32 %316, 1
  store i32 %317, i32* %37, align 4
  br label %318

318:                                              ; preds = %335, %315
  %319 = load i32, i32* %37, align 4
  %320 = icmp sge i32 %319, 0
  br i1 %320, label %321, label %338

321:                                              ; preds = %318
  %322 = load i32, i32* %37, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %57, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = add i8 %325, 1
  store i8 %326, i8* %324, align 1
  %327 = load i32, i32* %37, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %57, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %321
  br label %338

334:                                              ; preds = %321
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %37, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %37, align 4
  br label %318

338:                                              ; preds = %333, %318
  %339 = load i32, i32* %41, align 4
  %340 = load i32*, i32** %15, align 8
  %341 = call i32 @EVP_Digest(i8* %57, i32 %339, i8* %54, i32* null, i32* %340, i32* null)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  br label %510

344:                                              ; preds = %338
  %345 = load i32, i32* %41, align 4
  %346 = load i32*, i32** %28, align 8
  %347 = call i32 @BN_bin2bn(i8* %54, i32 %345, i32* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %344
  br label %510

350:                                              ; preds = %344
  %351 = load i32*, i32** %28, align 8
  %352 = load i32*, i32** %28, align 8
  %353 = load i32, i32* %41, align 4
  %354 = shl i32 %353, 3
  %355 = load i32, i32* %38, align 4
  %356 = mul nsw i32 %354, %355
  %357 = call i32 @BN_lshift(i32* %351, i32* %352, i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %350
  br label %510

360:                                              ; preds = %350
  %361 = load i32*, i32** %29, align 8
  %362 = load i32*, i32** %29, align 8
  %363 = load i32*, i32** %28, align 8
  %364 = call i32 @BN_add(i32* %361, i32* %362, i32* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %360
  br label %510

367:                                              ; preds = %360
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %38, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %38, align 4
  br label %311

371:                                              ; preds = %311
  %372 = load i32*, i32** %29, align 8
  %373 = load i64, i64* %13, align 8
  %374 = sub i64 %373, 1
  %375 = call i32 @BN_mask_bits(i32* %372, i64 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %371
  br label %510

378:                                              ; preds = %371
  %379 = load i32*, i32** %30, align 8
  %380 = load i32*, i32** %29, align 8
  %381 = call i32 @BN_copy(i32* %379, i32* %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %378
  br label %510

384:                                              ; preds = %378
  %385 = load i32*, i32** %30, align 8
  %386 = load i32*, i32** %30, align 8
  %387 = load i32*, i32** %32, align 8
  %388 = call i32 @BN_add(i32* %385, i32* %386, i32* %387)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %384
  br label %510

391:                                              ; preds = %384
  %392 = load i32*, i32** %28, align 8
  %393 = load i32*, i32** %34, align 8
  %394 = call i32 @BN_lshift1(i32* %392, i32* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %391
  br label %510

397:                                              ; preds = %391
  %398 = load i32*, i32** %31, align 8
  %399 = load i32*, i32** %30, align 8
  %400 = load i32*, i32** %28, align 8
  %401 = load i32*, i32** %44, align 8
  %402 = call i32 @BN_mod(i32* %398, i32* %399, i32* %400, i32* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %397
  br label %510

405:                                              ; preds = %397
  %406 = load i32*, i32** %28, align 8
  %407 = load i32*, i32** %31, align 8
  %408 = call i32* (...) @BN_value_one()
  %409 = call i32 @BN_sub(i32* %406, i32* %407, i32* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %405
  br label %510

412:                                              ; preds = %405
  %413 = load i32*, i32** %35, align 8
  %414 = load i32*, i32** %30, align 8
  %415 = load i32*, i32** %28, align 8
  %416 = call i32 @BN_sub(i32* %413, i32* %414, i32* %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %412
  br label %510

419:                                              ; preds = %412
  %420 = load i32*, i32** %35, align 8
  %421 = load i32*, i32** %32, align 8
  %422 = call i64 @BN_cmp(i32* %420, i32* %421)
  %423 = icmp sge i64 %422, 0
  br i1 %423, label %424, label %437

424:                                              ; preds = %419
  %425 = load i32*, i32** %35, align 8
  %426 = load i32*, i32** %44, align 8
  %427 = load i32*, i32** %21, align 8
  %428 = call i32 @BN_check_prime(i32* %425, i32* %426, i32* %427)
  store i32 %428, i32* %43, align 4
  %429 = load i32, i32* %43, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  br label %445

432:                                              ; preds = %424
  %433 = load i32, i32* %43, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  br label %510

436:                                              ; preds = %432
  br label %437

437:                                              ; preds = %436, %419
  %438 = load i32, i32* %42, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %42, align 4
  %440 = load i32, i32* %42, align 4
  %441 = icmp sge i32 %440, 4096
  br i1 %441, label %442, label %443

442:                                              ; preds = %437
  br label %444

443:                                              ; preds = %437
  br label %299

444:                                              ; preds = %442
  br label %171

445:                                              ; preds = %431
  %446 = load i32*, i32** %21, align 8
  %447 = call i32 @BN_GENCB_call(i32* %446, i32 2, i32 1)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %450, label %449

449:                                              ; preds = %445
  br label %510

450:                                              ; preds = %445
  %451 = load i32*, i32** %32, align 8
  %452 = load i32*, i32** %35, align 8
  %453 = call i32* (...) @BN_value_one()
  %454 = call i32 @BN_sub(i32* %451, i32* %452, i32* %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %457, label %456

456:                                              ; preds = %450
  br label %510

457:                                              ; preds = %450
  %458 = load i32*, i32** %28, align 8
  %459 = load i32*, i32** %32, align 8
  %460 = load i32*, i32** %34, align 8
  %461 = load i32*, i32** %44, align 8
  %462 = call i32 @BN_div(i32* %458, i32* null, i32* %459, i32* %460, i32* %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %465, label %464

464:                                              ; preds = %457
  br label %510

465:                                              ; preds = %457
  %466 = load i32*, i32** %32, align 8
  %467 = load i32, i32* %45, align 4
  %468 = call i32 @BN_set_word(i32* %466, i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %465
  br label %510

471:                                              ; preds = %465
  %472 = load i32*, i32** %36, align 8
  %473 = load i32*, i32** %35, align 8
  %474 = load i32*, i32** %44, align 8
  %475 = call i32 @BN_MONT_CTX_set(i32* %472, i32* %473, i32* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %471
  br label %510

478:                                              ; preds = %471
  br label %479

479:                                              ; preds = %501, %478
  %480 = load i32*, i32** %33, align 8
  %481 = load i32*, i32** %32, align 8
  %482 = load i32*, i32** %28, align 8
  %483 = load i32*, i32** %35, align 8
  %484 = load i32*, i32** %44, align 8
  %485 = load i32*, i32** %36, align 8
  %486 = call i32 @BN_mod_exp_mont(i32* %480, i32* %481, i32* %482, i32* %483, i32* %484, i32* %485)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %479
  br label %510

489:                                              ; preds = %479
  %490 = load i32*, i32** %33, align 8
  %491 = call i32 @BN_is_one(i32* %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %489
  br label %504

494:                                              ; preds = %489
  %495 = load i32*, i32** %32, align 8
  %496 = load i32*, i32** %32, align 8
  %497 = call i32* (...) @BN_value_one()
  %498 = call i32 @BN_add(i32* %495, i32* %496, i32* %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %494
  br label %510

501:                                              ; preds = %494
  %502 = load i32, i32* %45, align 4
  %503 = add i32 %502, 1
  store i32 %503, i32* %45, align 4
  br label %479

504:                                              ; preds = %493
  %505 = load i32*, i32** %21, align 8
  %506 = call i32 @BN_GENCB_call(i32* %505, i32 3, i32 1)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %504
  br label %510

509:                                              ; preds = %504
  store i32 1, i32* %22, align 4
  br label %510

510:                                              ; preds = %559, %509, %508, %500, %488, %477, %470, %464, %456, %449, %435, %418, %411, %404, %396, %390, %383, %377, %366, %359, %349, %343, %307, %293, %288, %282, %270, %230, %224, %189, %181, %169, %160, %138, %134
  %511 = load i32, i32* %22, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %581

513:                                              ; preds = %510
  %514 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i32 0, i32 2
  %516 = load i32*, i32** %515, align 8
  %517 = call i32 @BN_free(i32* %516)
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 1
  %520 = load i32*, i32** %519, align 8
  %521 = call i32 @BN_free(i32* %520)
  %522 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i32 0, i32 0
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @BN_free(i32* %524)
  %526 = load i32*, i32** %35, align 8
  %527 = call i8* @BN_dup(i32* %526)
  %528 = bitcast i8* %527 to i32*
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 2
  store i32* %528, i32** %530, align 8
  %531 = load i32*, i32** %34, align 8
  %532 = call i8* @BN_dup(i32* %531)
  %533 = bitcast i8* %532 to i32*
  %534 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %535 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i32 0, i32 1
  store i32* %533, i32** %535, align 8
  %536 = load i32*, i32** %33, align 8
  %537 = call i8* @BN_dup(i32* %536)
  %538 = bitcast i8* %537 to i32*
  %539 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 0
  store i32* %538, i32** %540, align 8
  %541 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 8
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %542, align 8
  %545 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %546 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %545, i32 0, i32 2
  %547 = load i32*, i32** %546, align 8
  %548 = icmp eq i32* %547, null
  br i1 %548, label %559, label %549

549:                                              ; preds = %513
  %550 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 1
  %552 = load i32*, i32** %551, align 8
  %553 = icmp eq i32* %552, null
  br i1 %553, label %559, label %554

554:                                              ; preds = %549
  %555 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i32 0, i32 0
  %557 = load i32*, i32** %556, align 8
  %558 = icmp eq i32* %557, null
  br i1 %558, label %559, label %560

559:                                              ; preds = %554, %549, %513
  store i32 0, i32* %22, align 4
  br label %510

560:                                              ; preds = %554
  %561 = load i32*, i32** %19, align 8
  %562 = icmp ne i32* %561, null
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load i32, i32* %42, align 4
  %565 = load i32*, i32** %19, align 8
  store i32 %564, i32* %565, align 4
  br label %566

566:                                              ; preds = %563, %560
  %567 = load i64*, i64** %20, align 8
  %568 = icmp ne i64* %567, null
  br i1 %568, label %569, label %573

569:                                              ; preds = %566
  %570 = load i32, i32* %45, align 4
  %571 = zext i32 %570 to i64
  %572 = load i64*, i64** %20, align 8
  store i64 %571, i64* %572, align 8
  br label %573

573:                                              ; preds = %569, %566
  %574 = load i8*, i8** %18, align 8
  %575 = icmp ne i8* %574, null
  br i1 %575, label %576, label %580

576:                                              ; preds = %573
  %577 = load i8*, i8** %18, align 8
  %578 = load i32, i32* %41, align 4
  %579 = call i32 @memcpy(i8* %577, i8* %51, i32 %578)
  br label %580

580:                                              ; preds = %576, %573
  br label %581

581:                                              ; preds = %580, %510
  %582 = load i32*, i32** %44, align 8
  %583 = call i32 @BN_CTX_end(i32* %582)
  %584 = load i32*, i32** %44, align 8
  %585 = call i32 @BN_CTX_free(i32* %584)
  %586 = load i32*, i32** %36, align 8
  %587 = call i32 @BN_MONT_CTX_free(i32* %586)
  %588 = load i32, i32* %22, align 4
  store i32 %588, i32* %11, align 4
  store i32 1, i32* %46, align 4
  br label %589

589:                                              ; preds = %581, %114, %75
  %590 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %590)
  %591 = load i32, i32* %11, align 4
  ret i32 %591
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32* @EVP_sha224(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @DSAerr(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #2

declare dso_local i32* @BN_value_one(...) #2

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #2

declare dso_local i32 @BN_zero(i32*) #2

declare dso_local i32 @BN_add(i32*, i32*, i32*) #2

declare dso_local i32 @BN_mask_bits(i32*, i64) #2

declare dso_local i32 @BN_copy(i32*, i32*) #2

declare dso_local i32 @BN_lshift1(i32*, i32*) #2

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #2

declare dso_local i64 @BN_cmp(i32*, i32*) #2

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_set_word(i32*, i32) #2

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #2

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_is_one(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i8* @BN_dup(i32*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
