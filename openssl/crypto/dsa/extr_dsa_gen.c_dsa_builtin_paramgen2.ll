; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen2.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_gen.c_dsa_builtin_paramgen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@DSA_F_DSA_BUILTIN_PARAMGEN2 = common dso_local global i32 0, align 4
@DSA_R_INVALID_PARAMETERS = common dso_local global i32 0, align 4
@DSA_R_Q_NOT_PRIME = common dso_local global i32 0, align 4
@dsa_builtin_paramgen2.ggen = internal constant [4 x i8] c"ggen", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_builtin_paramgen2(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32* %3, i8* %4, i64 %5, i32 %6, i8* %7, i32* %8, i64* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i64* %9, i64** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32 -1, i32* %23, align 4
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %49 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %26, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %27, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32* null, i32** %37, align 8
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  %53 = load i64, i64* %14, align 8
  %54 = lshr i64 %53, 3
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32* null, i32** %45, align 8
  %56 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %56, i32** %46, align 8
  store i32 2, i32* %47, align 4
  %57 = load i32*, i32** %46, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %11
  br label %613

60:                                               ; preds = %11
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %66 = load i32, i32* @DSA_R_INVALID_PARAMETERS, align 4
  %67 = call i32 @DSAerr(i32 %65, i32 %66)
  br label %613

68:                                               ; preds = %60
  %69 = load i32*, i32** %15, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %72, 160
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32* (...) @EVP_sha1()
  store i32* %75, i32** %15, align 8
  br label %84

76:                                               ; preds = %71
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 224
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32* (...) @EVP_sha224()
  store i32* %80, i32** %15, align 8
  br label %83

81:                                               ; preds = %76
  %82 = call i32* (...) @EVP_sha256()
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @EVP_MD_size(i32* %86)
  store i32 %87, i32* %28, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97, %92, %85
  %101 = load i64, i64* %17, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %28, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %17, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* %17, align 8
  %108 = call i8* @OPENSSL_malloc(i64 %107)
  store i8* %108, i8** %24, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** %19, align 8
  store i8* %112, i8** %25, align 8
  br label %116

113:                                              ; preds = %106
  %114 = load i64, i64* %17, align 8
  %115 = call i8* @OPENSSL_malloc(i64 %114)
  store i8* %115, i8** %25, align 8
  br label %116

116:                                              ; preds = %113, %111
  %117 = load i8*, i8** %24, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %25, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116
  br label %613

123:                                              ; preds = %119
  %124 = load i8*, i8** %16, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %24, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @memcpy(i8* %127, i8* %128, i64 %129)
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %97
  %133 = call i32* (...) @BN_CTX_new()
  store i32* %133, i32** %45, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %613

136:                                              ; preds = %132
  %137 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %137, i32** %37, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %613

140:                                              ; preds = %136
  %141 = load i32*, i32** %45, align 8
  %142 = call i32 @BN_CTX_start(i32* %141)
  %143 = load i32*, i32** %45, align 8
  %144 = call i32* @BN_CTX_get(i32* %143)
  store i32* %144, i32** %29, align 8
  %145 = load i32*, i32** %45, align 8
  %146 = call i32* @BN_CTX_get(i32* %145)
  store i32* %146, i32** %34, align 8
  %147 = load i32*, i32** %45, align 8
  %148 = call i32* @BN_CTX_get(i32* %147)
  store i32* %148, i32** %30, align 8
  %149 = load i32*, i32** %45, align 8
  %150 = call i32* @BN_CTX_get(i32* %149)
  store i32* %150, i32** %31, align 8
  %151 = load i32*, i32** %45, align 8
  %152 = call i32* @BN_CTX_get(i32* %151)
  store i32* %152, i32** %32, align 8
  %153 = load i32*, i32** %45, align 8
  %154 = call i32* @BN_CTX_get(i32* %153)
  store i32* %154, i32** %33, align 8
  %155 = load i32*, i32** %33, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %140
  br label %613

158:                                              ; preds = %140
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %158
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %36, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  store i32* %174, i32** %35, align 8
  %175 = load i32, i32* %18, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i8*, i8** %25, align 8
  %179 = load i8*, i8** %24, align 8
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @memcpy(i8* %178, i8* %179, i64 %180)
  br label %182

182:                                              ; preds = %177, %168
  br label %486

183:                                              ; preds = %163, %158
  %184 = load i32*, i32** %45, align 8
  %185 = call i32* @BN_CTX_get(i32* %184)
  store i32* %185, i32** %36, align 8
  %186 = load i32*, i32** %45, align 8
  %187 = call i32* @BN_CTX_get(i32* %186)
  store i32* %187, i32** %35, align 8
  %188 = load i32*, i32** %35, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %613

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191
  %193 = load i32*, i32** %33, align 8
  %194 = call i32* (...) @BN_value_one()
  %195 = load i64, i64* %13, align 8
  %196 = sub i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = call i32 @BN_lshift(i32* %193, i32* %194, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  br label %613

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %479, %201
  br label %203

203:                                              ; preds = %293, %202
  %204 = load i32*, i32** %22, align 8
  %205 = load i32, i32* %41, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %41, align 4
  %207 = call i32 @BN_GENCB_call(i32* %204, i32 0, i32 %205)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %613

210:                                              ; preds = %203
  %211 = load i8*, i8** %16, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load i8*, i8** %24, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i64 @RAND_bytes(i8* %214, i64 %215)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %613

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %210
  %221 = load i8*, i8** %24, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = call i32 @EVP_Digest(i8* %221, i64 %222, i8* %52, i32* null, i32* %223, i32* null)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %220
  br label %613

227:                                              ; preds = %220
  %228 = load i32, i32* %28, align 4
  %229 = load i32, i32* %42, align 4
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i32, i32* %28, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %52, i64 %233
  %235 = load i32, i32* %42, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8* %238, i8** %48, align 8
  br label %240

239:                                              ; preds = %227
  store i8* %52, i8** %48, align 8
  br label %240

240:                                              ; preds = %239, %231
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %42, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i32, i32* %28, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %52, i64 %246
  %248 = load i32, i32* %42, align 4
  %249 = load i32, i32* %28, align 4
  %250 = sub nsw i32 %248, %249
  %251 = call i32 @memset(i8* %247, i32 0, i32 %250)
  br label %252

252:                                              ; preds = %244, %240
  %253 = load i8*, i8** %48, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = or i32 %256, 128
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %254, align 1
  %259 = load i8*, i8** %48, align 8
  %260 = load i32, i32* %42, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %265, 1
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %263, align 1
  %268 = load i8*, i8** %48, align 8
  %269 = load i32, i32* %42, align 4
  %270 = load i32*, i32** %35, align 8
  %271 = call i32 @BN_bin2bn(i8* %268, i32 %269, i32* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %252
  br label %613

274:                                              ; preds = %252
  %275 = load i32*, i32** %35, align 8
  %276 = load i32*, i32** %45, align 8
  %277 = load i32*, i32** %22, align 8
  %278 = call i32 @BN_check_prime(i32* %275, i32* %276, i32* %277)
  store i32 %278, i32* %44, align 4
  %279 = load i32, i32* %44, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %294

282:                                              ; preds = %274
  %283 = load i32, i32* %44, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  br label %613

286:                                              ; preds = %282
  %287 = load i8*, i8** %16, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  store i32 0, i32* %23, align 4
  %290 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %291 = load i32, i32* @DSA_R_Q_NOT_PRIME, align 4
  %292 = call i32 @DSAerr(i32 %290, i32 %291)
  br label %613

293:                                              ; preds = %286
  br label %203

294:                                              ; preds = %281
  %295 = load i8*, i8** %19, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i8*, i8** %19, align 8
  %299 = load i8*, i8** %24, align 8
  %300 = load i64, i64* %17, align 8
  %301 = call i32 @memcpy(i8* %298, i8* %299, i64 %300)
  br label %302

302:                                              ; preds = %297, %294
  %303 = load i32*, i32** %22, align 8
  %304 = call i32 @BN_GENCB_call(i32* %303, i32 2, i32 0)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %302
  br label %613

307:                                              ; preds = %302
  %308 = load i32*, i32** %22, align 8
  %309 = call i32 @BN_GENCB_call(i32* %308, i32 3, i32 0)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %307
  br label %613

312:                                              ; preds = %307
  store i32 0, i32* %43, align 4
  %313 = load i64, i64* %13, align 8
  %314 = sub i64 %313, 1
  %315 = load i32, i32* %28, align 4
  %316 = shl i32 %315, 3
  %317 = sext i32 %316 to i64
  %318 = udiv i64 %314, %317
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %40, align 4
  br label %320

320:                                              ; preds = %471, %312
  %321 = load i32, i32* %43, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %320
  %324 = load i32*, i32** %22, align 8
  %325 = load i32, i32* %43, align 4
  %326 = call i32 @BN_GENCB_call(i32* %324, i32 0, i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %323
  br label %613

329:                                              ; preds = %323, %320
  %330 = load i32*, i32** %30, align 8
  %331 = call i32 @BN_zero(i32* %330)
  store i32 0, i32* %39, align 4
  br label %332

332:                                              ; preds = %393, %329
  %333 = load i32, i32* %39, align 4
  %334 = load i32, i32* %40, align 4
  %335 = icmp sle i32 %333, %334
  br i1 %335, label %336, label %396

336:                                              ; preds = %332
  %337 = load i64, i64* %17, align 8
  %338 = sub i64 %337, 1
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %38, align 4
  br label %340

340:                                              ; preds = %359, %336
  %341 = load i32, i32* %38, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %362

343:                                              ; preds = %340
  %344 = load i8*, i8** %24, align 8
  %345 = load i32, i32* %38, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = add i8 %348, 1
  store i8 %349, i8* %347, align 1
  %350 = load i8*, i8** %24, align 8
  %351 = load i32, i32* %38, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %343
  br label %362

358:                                              ; preds = %343
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %38, align 4
  %361 = add nsw i32 %360, -1
  store i32 %361, i32* %38, align 4
  br label %340

362:                                              ; preds = %357, %340
  %363 = load i8*, i8** %24, align 8
  %364 = load i64, i64* %17, align 8
  %365 = load i32*, i32** %15, align 8
  %366 = call i32 @EVP_Digest(i8* %363, i64 %364, i8* %52, i32* null, i32* %365, i32* null)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %362
  br label %613

369:                                              ; preds = %362
  %370 = load i32, i32* %28, align 4
  %371 = load i32*, i32** %29, align 8
  %372 = call i32 @BN_bin2bn(i8* %52, i32 %370, i32* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %369
  br label %613

375:                                              ; preds = %369
  %376 = load i32*, i32** %29, align 8
  %377 = load i32*, i32** %29, align 8
  %378 = load i32, i32* %28, align 4
  %379 = shl i32 %378, 3
  %380 = load i32, i32* %39, align 4
  %381 = mul nsw i32 %379, %380
  %382 = call i32 @BN_lshift(i32* %376, i32* %377, i32 %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %375
  br label %613

385:                                              ; preds = %375
  %386 = load i32*, i32** %30, align 8
  %387 = load i32*, i32** %30, align 8
  %388 = load i32*, i32** %29, align 8
  %389 = call i32 @BN_add(i32* %386, i32* %387, i32* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %385
  br label %613

392:                                              ; preds = %385
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %39, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %39, align 4
  br label %332

396:                                              ; preds = %332
  %397 = load i32*, i32** %30, align 8
  %398 = load i64, i64* %13, align 8
  %399 = sub i64 %398, 1
  %400 = call i32 @BN_mask_bits(i32* %397, i64 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %396
  br label %613

403:                                              ; preds = %396
  %404 = load i32*, i32** %31, align 8
  %405 = load i32*, i32** %30, align 8
  %406 = call i32 @BN_copy(i32* %404, i32* %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %403
  br label %613

409:                                              ; preds = %403
  %410 = load i32*, i32** %31, align 8
  %411 = load i32*, i32** %31, align 8
  %412 = load i32*, i32** %33, align 8
  %413 = call i32 @BN_add(i32* %410, i32* %411, i32* %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %409
  br label %613

416:                                              ; preds = %409
  %417 = load i32*, i32** %29, align 8
  %418 = load i32*, i32** %35, align 8
  %419 = call i32 @BN_lshift1(i32* %417, i32* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  br label %613

422:                                              ; preds = %416
  %423 = load i32*, i32** %32, align 8
  %424 = load i32*, i32** %31, align 8
  %425 = load i32*, i32** %29, align 8
  %426 = load i32*, i32** %45, align 8
  %427 = call i32 @BN_mod(i32* %423, i32* %424, i32* %425, i32* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %422
  br label %613

430:                                              ; preds = %422
  %431 = load i32*, i32** %29, align 8
  %432 = load i32*, i32** %32, align 8
  %433 = call i32* (...) @BN_value_one()
  %434 = call i32 @BN_sub(i32* %431, i32* %432, i32* %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %430
  br label %613

437:                                              ; preds = %430
  %438 = load i32*, i32** %36, align 8
  %439 = load i32*, i32** %31, align 8
  %440 = load i32*, i32** %29, align 8
  %441 = call i32 @BN_sub(i32* %438, i32* %439, i32* %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %437
  br label %613

444:                                              ; preds = %437
  %445 = load i32*, i32** %36, align 8
  %446 = load i32*, i32** %33, align 8
  %447 = call i64 @BN_cmp(i32* %445, i32* %446)
  %448 = icmp sge i64 %447, 0
  br i1 %448, label %449, label %462

449:                                              ; preds = %444
  %450 = load i32*, i32** %36, align 8
  %451 = load i32*, i32** %45, align 8
  %452 = load i32*, i32** %22, align 8
  %453 = call i32 @BN_check_prime(i32* %450, i32* %451, i32* %452)
  store i32 %453, i32* %44, align 4
  %454 = load i32, i32* %44, align 4
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %480

457:                                              ; preds = %449
  %458 = load i32, i32* %44, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %457
  br label %613

461:                                              ; preds = %457
  br label %462

462:                                              ; preds = %461, %444
  %463 = load i32, i32* %43, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %43, align 4
  %465 = load i32, i32* %43, align 4
  %466 = load i64, i64* %13, align 8
  %467 = mul i64 4, %466
  %468 = trunc i64 %467 to i32
  %469 = icmp sge i32 %465, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %462
  br label %472

471:                                              ; preds = %462
  br label %320

472:                                              ; preds = %470
  %473 = load i8*, i8** %16, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  store i32 0, i32* %23, align 4
  %476 = load i32, i32* @DSA_F_DSA_BUILTIN_PARAMGEN2, align 4
  %477 = load i32, i32* @DSA_R_INVALID_PARAMETERS, align 4
  %478 = call i32 @DSAerr(i32 %476, i32 %477)
  br label %613

479:                                              ; preds = %472
  br label %202

480:                                              ; preds = %456
  %481 = load i32*, i32** %22, align 8
  %482 = call i32 @BN_GENCB_call(i32* %481, i32 2, i32 1)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %480
  br label %613

485:                                              ; preds = %480
  br label %486

486:                                              ; preds = %485, %182
  %487 = load i32*, i32** %33, align 8
  %488 = load i32*, i32** %36, align 8
  %489 = call i32* (...) @BN_value_one()
  %490 = call i32 @BN_sub(i32* %487, i32* %488, i32* %489)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %493, label %492

492:                                              ; preds = %486
  br label %613

493:                                              ; preds = %486
  %494 = load i32*, i32** %29, align 8
  %495 = load i32*, i32** %33, align 8
  %496 = load i32*, i32** %35, align 8
  %497 = load i32*, i32** %45, align 8
  %498 = call i32 @BN_div(i32* %494, i32* null, i32* %495, i32* %496, i32* %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %493
  br label %613

501:                                              ; preds = %493
  %502 = load i32, i32* %18, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %501
  %505 = load i32*, i32** %33, align 8
  %506 = load i32, i32* %47, align 4
  %507 = call i32 @BN_set_word(i32* %505, i32 %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %510, label %509

509:                                              ; preds = %504
  br label %613

510:                                              ; preds = %504
  br label %512

511:                                              ; preds = %501
  store i32 1, i32* %47, align 4
  br label %512

512:                                              ; preds = %511, %510
  %513 = load i32*, i32** %37, align 8
  %514 = load i32*, i32** %36, align 8
  %515 = load i32*, i32** %45, align 8
  %516 = call i32 @BN_MONT_CTX_set(i32* %513, i32* %514, i32* %515)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %512
  br label %613

519:                                              ; preds = %512
  br label %520

520:                                              ; preds = %606, %519
  %521 = load i32, i32* %18, align 4
  %522 = icmp sge i32 %521, 0
  br i1 %522, label %523, label %572

523:                                              ; preds = %520
  %524 = load i32, i32* %18, align 4
  %525 = and i32 %524, 255
  %526 = trunc i32 %525 to i8
  %527 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %526, i8* %527, align 16
  %528 = load i32, i32* %47, align 4
  %529 = lshr i32 %528, 8
  %530 = and i32 %529, 255
  %531 = trunc i32 %530 to i8
  %532 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %531, i8* %532, align 1
  %533 = load i32, i32* %47, align 4
  %534 = and i32 %533, 255
  %535 = trunc i32 %534 to i8
  %536 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %535, i8* %536, align 2
  %537 = load i32*, i32** %46, align 8
  %538 = load i32*, i32** %15, align 8
  %539 = call i32 @EVP_DigestInit_ex(i32* %537, i32* %538, i32* null)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %542, label %541

541:                                              ; preds = %523
  br label %613

542:                                              ; preds = %523
  %543 = load i32*, i32** %46, align 8
  %544 = load i8*, i8** %25, align 8
  %545 = load i64, i64* %17, align 8
  %546 = trunc i64 %545 to i32
  %547 = call i32 @EVP_DigestUpdate(i32* %543, i8* %544, i32 %546)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %550, label %549

549:                                              ; preds = %542
  br label %613

550:                                              ; preds = %542
  %551 = load i32*, i32** %46, align 8
  %552 = call i32 @EVP_DigestUpdate(i32* %551, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @dsa_builtin_paramgen2.ggen, i64 0, i64 0), i32 4)
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %550
  br label %613

555:                                              ; preds = %550
  %556 = load i32*, i32** %46, align 8
  %557 = call i32 @EVP_DigestUpdate(i32* %556, i8* %52, i32 3)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %555
  br label %613

560:                                              ; preds = %555
  %561 = load i32*, i32** %46, align 8
  %562 = call i32 @EVP_DigestFinal_ex(i32* %561, i8* %52, i32* null)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %565, label %564

564:                                              ; preds = %560
  br label %613

565:                                              ; preds = %560
  %566 = load i32, i32* %28, align 4
  %567 = load i32*, i32** %33, align 8
  %568 = call i32 @BN_bin2bn(i8* %52, i32 %566, i32* %567)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %565
  br label %613

571:                                              ; preds = %565
  br label %572

572:                                              ; preds = %571, %520
  %573 = load i32*, i32** %34, align 8
  %574 = load i32*, i32** %33, align 8
  %575 = load i32*, i32** %29, align 8
  %576 = load i32*, i32** %36, align 8
  %577 = load i32*, i32** %45, align 8
  %578 = load i32*, i32** %37, align 8
  %579 = call i32 @BN_mod_exp_mont(i32* %573, i32* %574, i32* %575, i32* %576, i32* %577, i32* %578)
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %572
  br label %613

582:                                              ; preds = %572
  %583 = load i32*, i32** %34, align 8
  %584 = call i32 @BN_is_one(i32* %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %587, label %586

586:                                              ; preds = %582
  br label %607

587:                                              ; preds = %582
  %588 = load i32, i32* %18, align 4
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %590, label %597

590:                                              ; preds = %587
  %591 = load i32*, i32** %33, align 8
  %592 = load i32*, i32** %33, align 8
  %593 = call i32* (...) @BN_value_one()
  %594 = call i32 @BN_add(i32* %591, i32* %592, i32* %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %590
  br label %613

597:                                              ; preds = %590, %587
  %598 = load i32, i32* %47, align 4
  %599 = add i32 %598, 1
  store i32 %599, i32* %47, align 4
  %600 = load i32, i32* %18, align 4
  %601 = icmp sge i32 %600, 0
  br i1 %601, label %602, label %606

602:                                              ; preds = %597
  %603 = load i32, i32* %47, align 4
  %604 = icmp ugt i32 %603, 65535
  br i1 %604, label %605, label %606

605:                                              ; preds = %602
  br label %613

606:                                              ; preds = %602, %597
  br label %520

607:                                              ; preds = %586
  %608 = load i32*, i32** %22, align 8
  %609 = call i32 @BN_GENCB_call(i32* %608, i32 3, i32 1)
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %612, label %611

611:                                              ; preds = %607
  br label %613

612:                                              ; preds = %607
  store i32 1, i32* %23, align 4
  br label %613

613:                                              ; preds = %672, %612, %611, %605, %596, %581, %570, %564, %559, %554, %549, %541, %518, %509, %500, %492, %484, %475, %460, %443, %436, %429, %421, %415, %408, %402, %391, %384, %374, %368, %328, %311, %306, %289, %285, %273, %226, %218, %209, %200, %190, %157, %139, %135, %122, %64, %59
  %614 = load i32, i32* %23, align 4
  %615 = icmp eq i32 %614, 1
  br i1 %615, label %616, label %691

616:                                              ; preds = %613
  %617 = load i32*, i32** %36, align 8
  %618 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %619 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %618, i32 0, i32 3
  %620 = load i32*, i32** %619, align 8
  %621 = icmp ne i32* %617, %620
  br i1 %621, label %622, label %632

622:                                              ; preds = %616
  %623 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %624 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %623, i32 0, i32 3
  %625 = load i32*, i32** %624, align 8
  %626 = call i32 @BN_free(i32* %625)
  %627 = load i32*, i32** %36, align 8
  %628 = call i8* @BN_dup(i32* %627)
  %629 = bitcast i8* %628 to i32*
  %630 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %631 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %630, i32 0, i32 3
  store i32* %629, i32** %631, align 8
  br label %632

632:                                              ; preds = %622, %616
  %633 = load i32*, i32** %35, align 8
  %634 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %635 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %634, i32 0, i32 2
  %636 = load i32*, i32** %635, align 8
  %637 = icmp ne i32* %633, %636
  br i1 %637, label %638, label %648

638:                                              ; preds = %632
  %639 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %640 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %639, i32 0, i32 2
  %641 = load i32*, i32** %640, align 8
  %642 = call i32 @BN_free(i32* %641)
  %643 = load i32*, i32** %35, align 8
  %644 = call i8* @BN_dup(i32* %643)
  %645 = bitcast i8* %644 to i32*
  %646 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %647 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %646, i32 0, i32 2
  store i32* %645, i32** %647, align 8
  br label %648

648:                                              ; preds = %638, %632
  %649 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %650 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %649, i32 0, i32 1
  %651 = load i32*, i32** %650, align 8
  %652 = call i32 @BN_free(i32* %651)
  %653 = load i32*, i32** %34, align 8
  %654 = call i8* @BN_dup(i32* %653)
  %655 = bitcast i8* %654 to i32*
  %656 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %657 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %656, i32 0, i32 1
  store i32* %655, i32** %657, align 8
  %658 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %659 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %658, i32 0, i32 3
  %660 = load i32*, i32** %659, align 8
  %661 = icmp eq i32* %660, null
  br i1 %661, label %672, label %662

662:                                              ; preds = %648
  %663 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 2
  %665 = load i32*, i32** %664, align 8
  %666 = icmp eq i32* %665, null
  br i1 %666, label %672, label %667

667:                                              ; preds = %662
  %668 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %669 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %668, i32 0, i32 1
  %670 = load i32*, i32** %669, align 8
  %671 = icmp eq i32* %670, null
  br i1 %671, label %672, label %673

672:                                              ; preds = %667, %662, %648
  store i32 -1, i32* %23, align 4
  br label %613

673:                                              ; preds = %667
  %674 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %675 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %675, align 8
  %678 = load i32*, i32** %20, align 8
  %679 = icmp ne i32* %678, null
  br i1 %679, label %680, label %683

680:                                              ; preds = %673
  %681 = load i32, i32* %43, align 4
  %682 = load i32*, i32** %20, align 8
  store i32 %681, i32* %682, align 4
  br label %683

683:                                              ; preds = %680, %673
  %684 = load i64*, i64** %21, align 8
  %685 = icmp ne i64* %684, null
  br i1 %685, label %686, label %690

686:                                              ; preds = %683
  %687 = load i32, i32* %47, align 4
  %688 = zext i32 %687 to i64
  %689 = load i64*, i64** %21, align 8
  store i64 %688, i64* %689, align 8
  br label %690

690:                                              ; preds = %686, %683
  br label %691

691:                                              ; preds = %690, %613
  %692 = load i8*, i8** %24, align 8
  %693 = call i32 @OPENSSL_free(i8* %692)
  %694 = load i8*, i8** %19, align 8
  %695 = load i8*, i8** %25, align 8
  %696 = icmp ne i8* %694, %695
  br i1 %696, label %697, label %700

697:                                              ; preds = %691
  %698 = load i8*, i8** %25, align 8
  %699 = call i32 @OPENSSL_free(i8* %698)
  br label %700

700:                                              ; preds = %697, %691
  %701 = load i32*, i32** %45, align 8
  %702 = call i32 @BN_CTX_end(i32* %701)
  %703 = load i32*, i32** %45, align 8
  %704 = call i32 @BN_CTX_free(i32* %703)
  %705 = load i32*, i32** %37, align 8
  %706 = call i32 @BN_MONT_CTX_free(i32* %705)
  %707 = load i32*, i32** %46, align 8
  %708 = call i32 @EVP_MD_CTX_free(i32* %707)
  %709 = load i32, i32* %23, align 4
  %710 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %710)
  ret i32 %709
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @DSAerr(i32, i32) #2

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32* @EVP_sha224(...) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #2

declare dso_local i32* @BN_value_one(...) #2

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #2

declare dso_local i64 @RAND_bytes(i8*, i64) #2

declare dso_local i32 @EVP_Digest(i8*, i64, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

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

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_is_one(i32*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i8* @BN_dup(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

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
