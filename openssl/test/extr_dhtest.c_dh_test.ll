; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_dhtest.c_dh_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_dhtest.c_dh_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_MODULUS_TOO_SMALL = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@DH_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@DH_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@cb = common dso_local global i32 0, align 4
@DH_GENERATOR_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dh_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i32 0, i32* %33, align 4
  %34 = call i8* (...) @DH_new()
  store i8* %34, i8** %1, align 8
  %35 = call i32 @TEST_ptr(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %0
  %38 = call i8* (...) @BN_new()
  store i8* %38, i8** %2, align 8
  %39 = call i32 @TEST_ptr(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = call i8* (...) @BN_new()
  store i8* %42, i8** %3, align 8
  %43 = call i32 @TEST_ptr(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i8* (...) @BN_new()
  store i8* %46, i8** %4, align 8
  %47 = call i32 @TEST_ptr(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i8* (...) @BN_new()
  store i8* %50, i8** %8, align 8
  %51 = call i32 @TEST_ptr(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45, %41, %37, %0
  br label %438

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @BN_set_word(i8* %55, i64 4079)
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @BN_set_word(i8* %60, i64 2039)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @BN_set_word(i8* %65, i64 3)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %1, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @DH_set0_pqg(i8* %70, i8* %71, i8* %72, i8* %73)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69, %64, %59, %54
  br label %438

78:                                               ; preds = %69
  %79 = load i8*, i8** %1, align 8
  %80 = call i32 @DH_check(i8* %79, i32* %26)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %445

83:                                               ; preds = %78
  %84 = load i32, i32* @DH_MODULUS_TOO_SMALL, align 4
  %85 = load i32, i32* %26, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %26, align 4
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @TEST_false(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %83
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @TEST_false(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %144

98:                                               ; preds = %92
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @TEST_false(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %144

104:                                              ; preds = %98
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @TEST_false(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %104
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %113 = and i32 %111, %112
  %114 = call i32 @TEST_false(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %110
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @TEST_false(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @TEST_false(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* @DH_MODULUS_TOO_SMALL, align 4
  %131 = and i32 %129, %130
  %132 = call i32 @TEST_false(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* @DH_MODULUS_TOO_LARGE, align 4
  %137 = and i32 %135, %136
  %138 = call i32 @TEST_false(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @TEST_false(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140, %134, %128, %122, %116, %110, %104, %98, %92, %83
  br label %445

145:                                              ; preds = %140
  %146 = load i8*, i8** %1, align 8
  %147 = call i32 @DH_get0_pqg(i8* %146, i8** %5, i8** %6, i8** %7)
  %148 = load i8*, i8** %5, align 8
  %149 = load i8*, i8** %2, align 8
  %150 = call i32 @TEST_ptr_eq(i8* %148, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %145
  %153 = load i8*, i8** %6, align 8
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 @TEST_ptr_eq(i8* %153, i8* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i8*, i8** %7, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = call i32 @TEST_ptr_eq(i8* %158, i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157, %152, %145
  br label %445

163:                                              ; preds = %157
  %164 = load i8*, i8** %1, align 8
  %165 = call i8* @DH_get0_p(i8* %164)
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @TEST_ptr_eq(i8* %165, i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load i8*, i8** %1, align 8
  %171 = call i8* @DH_get0_q(i8* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @TEST_ptr_eq(i8* %171, i8* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i8*, i8** %1, align 8
  %177 = call i8* @DH_get0_g(i8* %176)
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @TEST_ptr_eq(i8* %177, i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175, %169, %163
  br label %445

182:                                              ; preds = %175
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @BN_set_word(i8* %183, i64 1234)
  %185 = call i32 @TEST_true(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i8*, i8** %1, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @DH_set0_key(i8* %188, i32* null, i8* %189)
  %191 = call i32 @TEST_true(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %187, %182
  br label %445

194:                                              ; preds = %187
  %195 = load i8*, i8** %1, align 8
  %196 = call i32 @DH_get0_key(i8* %195, i8** %9, i8** %10)
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @TEST_ptr_eq(i8* %197, i8* null)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load i8*, i8** %10, align 8
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @TEST_ptr_eq(i8* %201, i8* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200, %194
  br label %448

206:                                              ; preds = %200
  %207 = load i8*, i8** %1, align 8
  %208 = call i8* @DH_get0_pub_key(i8* %207)
  %209 = load i8*, i8** %9, align 8
  %210 = call i32 @TEST_ptr_eq(i8* %208, i8* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = load i8*, i8** %1, align 8
  %214 = call i8* @DH_get0_priv_key(i8* %213)
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 @TEST_ptr_eq(i8* %214, i8* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %212, %206
  br label %448

219:                                              ; preds = %212
  %220 = load i8*, i8** %1, align 8
  %221 = call i32 @DH_generate_key(i8* %220)
  %222 = call i32 @TEST_false(i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %448

225:                                              ; preds = %219
  %226 = call i32 (...) @ERR_clear_error()
  %227 = call i8* (...) @BN_GENCB_new()
  store i8* %227, i8** %11, align 8
  %228 = call i32 @TEST_ptr(i8* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  br label %448

231:                                              ; preds = %225
  %232 = load i8*, i8** %11, align 8
  %233 = call i32 @BN_GENCB_set(i8* %232, i32* @cb, i32* null)
  %234 = call i8* (...) @DH_new()
  store i8* %234, i8** %12, align 8
  %235 = call i32 @TEST_ptr(i8* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load i8*, i8** %12, align 8
  %239 = load i32, i32* @DH_GENERATOR_5, align 4
  %240 = load i8*, i8** %11, align 8
  %241 = call i32 @DH_generate_parameters_ex(i8* %238, i32 512, i32 %239, i8* %240)
  %242 = call i32 @TEST_true(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %237, %231
  br label %448

245:                                              ; preds = %237
  %246 = load i8*, i8** %12, align 8
  %247 = call i32 @DH_check(i8* %246, i32* %26)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  br label %448

250:                                              ; preds = %245
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %253 = and i32 %251, %252
  %254 = call i32 @TEST_false(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %308

256:                                              ; preds = %250
  %257 = load i32, i32* %26, align 4
  %258 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %259 = and i32 %257, %258
  %260 = call i32 @TEST_false(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %308

262:                                              ; preds = %256
  %263 = load i32, i32* %26, align 4
  %264 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %265 = and i32 %263, %264
  %266 = call i32 @TEST_false(i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %308

268:                                              ; preds = %262
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %271 = and i32 %269, %270
  %272 = call i32 @TEST_false(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %308

274:                                              ; preds = %268
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %277 = and i32 %275, %276
  %278 = call i32 @TEST_false(i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %274
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %283 = and i32 %281, %282
  %284 = call i32 @TEST_false(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %308

286:                                              ; preds = %280
  %287 = load i32, i32* %26, align 4
  %288 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %289 = and i32 %287, %288
  %290 = call i32 @TEST_false(i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %308

292:                                              ; preds = %286
  %293 = load i32, i32* %26, align 4
  %294 = load i32, i32* @DH_MODULUS_TOO_SMALL, align 4
  %295 = and i32 %293, %294
  %296 = call i32 @TEST_false(i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load i32, i32* %26, align 4
  %300 = load i32, i32* @DH_MODULUS_TOO_LARGE, align 4
  %301 = and i32 %299, %300
  %302 = call i32 @TEST_false(i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32, i32* %26, align 4
  %306 = call i32 @TEST_false(i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %304, %298, %292, %286, %280, %274, %268, %262, %256, %250
  br label %448

309:                                              ; preds = %304
  %310 = load i8*, i8** %12, align 8
  %311 = call i32 @DH_get0_pqg(i8* %310, i8** %15, i8** null, i8** %16)
  %312 = call i8* (...) @DH_new()
  store i8* %312, i8** %13, align 8
  %313 = call i32 @TEST_ptr(i8* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %309
  br label %448

316:                                              ; preds = %309
  %317 = load i8*, i8** %15, align 8
  %318 = call i8* @BN_dup(i8* %317)
  store i8* %318, i8** %20, align 8
  %319 = call i32 @TEST_ptr(i8* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %316
  %322 = load i8*, i8** %16, align 8
  %323 = call i8* @BN_dup(i8* %322)
  store i8* %323, i8** %21, align 8
  %324 = call i32 @TEST_ptr(i8* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %321
  %327 = load i8*, i8** %13, align 8
  %328 = load i8*, i8** %20, align 8
  %329 = load i8*, i8** %21, align 8
  %330 = call i32 @DH_set0_pqg(i8* %327, i8* %328, i8* null, i8* %329)
  %331 = call i32 @TEST_true(i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %326, %321, %316
  br label %448

334:                                              ; preds = %326
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  %335 = load i8*, i8** %12, align 8
  %336 = call i32 @DH_generate_key(i8* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %334
  br label %448

339:                                              ; preds = %334
  %340 = load i8*, i8** %12, align 8
  %341 = call i32 @DH_get0_key(i8* %340, i8** %17, i8** null)
  %342 = load i8*, i8** %13, align 8
  %343 = call i32 @DH_generate_key(i8* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %339
  br label %448

346:                                              ; preds = %339
  %347 = load i8*, i8** %13, align 8
  %348 = call i32 @DH_get0_key(i8* %347, i8** %18, i8** %19)
  %349 = load i8*, i8** %13, align 8
  %350 = call i8* @DHparams_dup(i8* %349)
  store i8* %350, i8** %14, align 8
  %351 = call i32 @TEST_ptr(i8* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %364

353:                                              ; preds = %346
  %354 = load i8*, i8** %19, align 8
  %355 = call i8* @BN_dup(i8* %354)
  store i8* %355, i8** %22, align 8
  %356 = call i32 @TEST_ptr(i8* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load i8*, i8** %14, align 8
  %360 = load i8*, i8** %22, align 8
  %361 = call i32 @DH_set0_key(i8* %359, i32* null, i8* %360)
  %362 = call i32 @TEST_true(i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %358, %353, %346
  br label %448

365:                                              ; preds = %358
  store i8* null, i8** %22, align 8
  %366 = load i8*, i8** %12, align 8
  %367 = call i32 @DH_size(i8* %366)
  store i32 %367, i32* %27, align 4
  %368 = load i32, i32* %27, align 4
  %369 = call i8* @OPENSSL_malloc(i32 %368)
  store i8* %369, i8** %23, align 8
  %370 = call i32 @TEST_ptr(i8* %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %365
  %373 = load i8*, i8** %23, align 8
  %374 = load i8*, i8** %18, align 8
  %375 = load i8*, i8** %12, align 8
  %376 = call i32 @DH_compute_key(i8* %373, i8* %374, i8* %375)
  store i32 %376, i32* %30, align 4
  %377 = icmp ne i32 %376, -1
  %378 = zext i1 %377 to i32
  %379 = call i32 @TEST_true(i32 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %372, %365
  br label %448

382:                                              ; preds = %372
  %383 = load i8*, i8** %13, align 8
  %384 = call i32 @DH_size(i8* %383)
  store i32 %384, i32* %28, align 4
  %385 = load i32, i32* %28, align 4
  %386 = call i8* @OPENSSL_malloc(i32 %385)
  store i8* %386, i8** %24, align 8
  %387 = call i32 @TEST_ptr(i8* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %398

389:                                              ; preds = %382
  %390 = load i8*, i8** %24, align 8
  %391 = load i8*, i8** %17, align 8
  %392 = load i8*, i8** %13, align 8
  %393 = call i32 @DH_compute_key(i8* %390, i8* %391, i8* %392)
  store i32 %393, i32* %31, align 4
  %394 = icmp ne i32 %393, -1
  %395 = zext i1 %394 to i32
  %396 = call i32 @TEST_true(i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %389, %382
  br label %448

399:                                              ; preds = %389
  %400 = load i8*, i8** %14, align 8
  %401 = call i32 @DH_size(i8* %400)
  store i32 %401, i32* %29, align 4
  %402 = load i32, i32* %29, align 4
  %403 = call i8* @OPENSSL_malloc(i32 %402)
  store i8* %403, i8** %25, align 8
  %404 = call i32 @TEST_ptr(i8* %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %399
  %407 = load i8*, i8** %25, align 8
  %408 = load i8*, i8** %17, align 8
  %409 = load i8*, i8** %14, align 8
  %410 = call i32 @DH_compute_key(i8* %407, i8* %408, i8* %409)
  store i32 %410, i32* %32, align 4
  %411 = icmp ne i32 %410, -1
  %412 = zext i1 %411 to i32
  %413 = call i32 @TEST_true(i32 %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %406, %399
  br label %448

416:                                              ; preds = %406
  %417 = load i32, i32* %30, align 4
  %418 = icmp sge i32 %417, 20
  %419 = zext i1 %418 to i32
  %420 = call i32 @TEST_true(i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %436

422:                                              ; preds = %416
  %423 = load i8*, i8** %23, align 8
  %424 = load i32, i32* %30, align 4
  %425 = load i8*, i8** %24, align 8
  %426 = load i32, i32* %31, align 4
  %427 = call i32 @TEST_mem_eq(i8* %423, i32 %424, i8* %425, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %436

429:                                              ; preds = %422
  %430 = load i8*, i8** %23, align 8
  %431 = load i32, i32* %30, align 4
  %432 = load i8*, i8** %25, align 8
  %433 = load i32, i32* %32, align 4
  %434 = call i32 @TEST_mem_eq(i8* %430, i32 %431, i8* %432, i32 %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %429, %422, %416
  br label %448

437:                                              ; preds = %429
  store i32 1, i32* %33, align 4
  br label %449

438:                                              ; preds = %77, %53
  %439 = load i8*, i8** %2, align 8
  %440 = call i32 @BN_free(i8* %439)
  %441 = load i8*, i8** %3, align 8
  %442 = call i32 @BN_free(i8* %441)
  %443 = load i8*, i8** %4, align 8
  %444 = call i32 @BN_free(i8* %443)
  br label %445

445:                                              ; preds = %438, %193, %181, %162, %144, %82
  %446 = load i8*, i8** %8, align 8
  %447 = call i32 @BN_free(i8* %446)
  br label %448

448:                                              ; preds = %445, %436, %415, %398, %381, %364, %345, %338, %333, %315, %308, %249, %244, %230, %224, %218, %205
  br label %449

449:                                              ; preds = %448, %437
  %450 = load i8*, i8** %23, align 8
  %451 = call i32 @OPENSSL_free(i8* %450)
  %452 = load i8*, i8** %24, align 8
  %453 = call i32 @OPENSSL_free(i8* %452)
  %454 = load i8*, i8** %25, align 8
  %455 = call i32 @OPENSSL_free(i8* %454)
  %456 = load i8*, i8** %13, align 8
  %457 = call i32 @DH_free(i8* %456)
  %458 = load i8*, i8** %12, align 8
  %459 = call i32 @DH_free(i8* %458)
  %460 = load i8*, i8** %14, align 8
  %461 = call i32 @DH_free(i8* %460)
  %462 = load i8*, i8** %20, align 8
  %463 = call i32 @BN_free(i8* %462)
  %464 = load i8*, i8** %21, align 8
  %465 = call i32 @BN_free(i8* %464)
  %466 = load i8*, i8** %22, align 8
  %467 = call i32 @BN_free(i8* %466)
  %468 = load i8*, i8** %11, align 8
  %469 = call i32 @BN_GENCB_free(i8* %468)
  %470 = load i8*, i8** %1, align 8
  %471 = call i32 @DH_free(i8* %470)
  %472 = load i32, i32* %33, align 4
  ret i32 %472
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @DH_new(...) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i8*, i64) #1

declare dso_local i32 @DH_set0_pqg(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @DH_check(i8*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @DH_get0_pqg(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i8*) #1

declare dso_local i8* @DH_get0_p(i8*) #1

declare dso_local i8* @DH_get0_q(i8*) #1

declare dso_local i8* @DH_get0_g(i8*) #1

declare dso_local i32 @DH_set0_key(i8*, i32*, i8*) #1

declare dso_local i32 @DH_get0_key(i8*, i8**, i8**) #1

declare dso_local i8* @DH_get0_pub_key(i8*) #1

declare dso_local i8* @DH_get0_priv_key(i8*) #1

declare dso_local i32 @DH_generate_key(i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i8* @BN_GENCB_new(...) #1

declare dso_local i32 @BN_GENCB_set(i8*, i32*, i32*) #1

declare dso_local i32 @DH_generate_parameters_ex(i8*, i32, i32, i8*) #1

declare dso_local i8* @BN_dup(i8*) #1

declare dso_local i8* @DHparams_dup(i8*) #1

declare dso_local i32 @DH_size(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @DH_compute_key(i8*, i8*, i8*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @BN_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @DH_free(i8*) #1

declare dso_local i32 @BN_GENCB_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
