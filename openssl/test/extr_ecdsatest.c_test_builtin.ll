; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_test_builtin.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_test_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@NID_ipsec4 = common dso_local global i32 0, align 4
@NID_ipsec3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skipped: ECDSA unsupported for curve %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"testing ECDSA for curve %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_builtin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @NID_ipsec4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @NID_ipsec3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @OBJ_nid2sn(i32 %31)
  %33 = call i32 @TEST_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %2, align 4
  br label %316

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @OBJ_nid2sn(i32 %35)
  %37 = call i32 @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i8* (...) @EVP_MD_CTX_new()
  store i8* %38, i8** %12, align 8
  %39 = call i32 @TEST_ptr(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %34
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %43 = call i32 @RAND_bytes(i8* %42, i32 128)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @EC_KEY_new_by_curve_name(i32 %47)
  store i8* %48, i8** %5, align 8
  %49 = call i32 @TEST_ptr(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @EC_KEY_generate_key(i8* %52)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = call i8* (...) @EVP_PKEY_new()
  store i8* %57, i8** %11, align 8
  %58 = call i32 @TEST_ptr(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @EVP_PKEY_assign_EC_KEY(i8* %61, i8* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = call i8* @EC_KEY_new_by_curve_name(i32 %67)
  store i8* %68, i8** %4, align 8
  %69 = call i32 @TEST_ptr(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @EC_KEY_generate_key(i8* %72)
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = call i8* (...) @EVP_PKEY_new()
  store i8* %77, i8** %10, align 8
  %78 = call i32 @TEST_ptr(i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @EVP_PKEY_assign_EC_KEY(i8* %81, i8* %82)
  %84 = call i32 @TEST_true(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80, %76, %71, %66, %60, %56, %51, %46, %41, %34
  br label %306

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @ECDSA_size(i8* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @TEST_int_ge(i32 %90, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %176

93:                                               ; preds = %87
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %13, align 8
  %96 = call i8* @OPENSSL_malloc(i64 %95)
  store i8* %96, i8** %9, align 8
  %97 = call i32 @TEST_ptr(i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %176

99:                                               ; preds = %93
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @EVP_DigestSignInit(i8* %100, i32* null, i32* null, i32* null, i8* %101)
  %103 = call i32 @TEST_true(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %176

105:                                              ; preds = %99
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %109 = call i32 @EVP_DigestSign(i8* %106, i8* %107, i64* %13, i8* %108, i32 128)
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %176

112:                                              ; preds = %105
  %113 = load i64, i64* %13, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @ECDSA_size(i8* %114)
  %116 = call i32 @TEST_int_le(i64 %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %176

118:                                              ; preds = %112
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @EVP_MD_CTX_reset(i8* %119)
  %121 = call i32 @TEST_true(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %118
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @EVP_DigestVerifyInit(i8* %124, i32* null, i32* null, i32* null, i8* %125)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %176

129:                                              ; preds = %123
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %134 = call i32 @EVP_DigestVerify(i8* %130, i8* %131, i64 %132, i8* %133, i32 128)
  %135 = call i32 @TEST_int_eq(i32 %134, i32 0)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %176

137:                                              ; preds = %129
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @EVP_MD_CTX_reset(i8* %138)
  %140 = call i32 @TEST_true(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %137
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @EVP_DigestVerifyInit(i8* %143, i32* null, i32* null, i32* null, i8* %144)
  %146 = call i32 @TEST_true(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %142
  %149 = load i8*, i8** %12, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i64, i64* %13, align 8
  %152 = sub i64 %151, 1
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %154 = call i32 @EVP_DigestVerify(i8* %149, i8* %150, i64 %152, i8* %153, i32 128)
  %155 = call i32 @TEST_int_eq(i32 %154, i32 -1)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %148
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @EVP_MD_CTX_reset(i8* %158)
  %160 = call i32 @TEST_true(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load i8*, i8** %12, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = call i32 @EVP_DigestVerifyInit(i8* %163, i32* null, i32* null, i32* null, i8* %164)
  %166 = call i32 @TEST_true(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %173 = call i32 @EVP_DigestVerify(i8* %169, i8* %170, i64 %171, i8* %172, i32 128)
  %174 = call i32 @TEST_int_eq(i32 %173, i32 1)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %168, %162, %157, %148, %142, %137, %129, %123, %118, %112, %105, %99, %93, %87
  br label %306

177:                                              ; preds = %168
  %178 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %179 = load i8, i8* %178, align 16
  %180 = zext i8 %179 to i32
  %181 = xor i32 %180, 1
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %178, align 16
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @EVP_MD_CTX_reset(i8* %183)
  %185 = call i32 @TEST_true(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %177
  %188 = load i8*, i8** %12, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @EVP_DigestVerifyInit(i8* %188, i32* null, i32* null, i32* null, i8* %189)
  %191 = call i32 @TEST_true(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load i8*, i8** %12, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i64, i64* %13, align 8
  %197 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %198 = call i32 @EVP_DigestVerify(i8* %194, i8* %195, i64 %196, i8* %197, i32 128)
  %199 = call i32 @TEST_int_eq(i32 %198, i32 0)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %193, %187, %177
  br label %306

202:                                              ; preds = %193
  %203 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %204 = load i8, i8* %203, align 16
  %205 = zext i8 %204 to i32
  %206 = xor i32 %205, 1
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %203, align 16
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @EVP_MD_CTX_reset(i8* %208)
  %210 = call i32 @TEST_true(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %202
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 @EVP_DigestVerifyInit(i8* %213, i32* null, i32* null, i32* null, i8* %214)
  %216 = call i32 @TEST_true(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load i8*, i8** %12, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = load i64, i64* %13, align 8
  %222 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %223 = call i32 @EVP_DigestVerify(i8* %219, i8* %220, i64 %221, i8* %222, i32 128)
  %224 = call i32 @TEST_int_eq(i32 %223, i32 1)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %218, %212, %202
  br label %306

227:                                              ; preds = %218
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %229 = load i8, i8* %228, align 16
  %230 = zext i8 %229 to i64
  %231 = load i64, i64* %13, align 8
  %232 = urem i64 %230, %231
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %7, align 1
  %234 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %227
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 1
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  br label %243

242:                                              ; preds = %227
  br label %243

243:                                              ; preds = %242, %238
  %244 = phi i32 [ %241, %238 ], [ 1, %242 ]
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %6, align 1
  %246 = load i8, i8* %6, align 1
  %247 = zext i8 %246 to i32
  %248 = load i8*, i8** %9, align 8
  %249 = load i8, i8* %7, align 1
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = xor i32 %253, %247
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %251, align 1
  %256 = load i8*, i8** %12, align 8
  %257 = call i32 @EVP_MD_CTX_reset(i8* %256)
  %258 = call i32 @TEST_true(i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %274

260:                                              ; preds = %243
  %261 = load i8*, i8** %12, align 8
  %262 = load i8*, i8** %11, align 8
  %263 = call i32 @EVP_DigestVerifyInit(i8* %261, i32* null, i32* null, i32* null, i8* %262)
  %264 = call i32 @TEST_true(i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %260
  %267 = load i8*, i8** %12, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %271 = call i32 @EVP_DigestVerify(i8* %267, i8* %268, i64 %269, i8* %270, i32 128)
  %272 = call i32 @TEST_int_ne(i32 %271, i32 1)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %266, %260, %243
  br label %306

275:                                              ; preds = %266
  %276 = load i8, i8* %6, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8*, i8** %9, align 8
  %279 = load i8, i8* %7, align 1
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = xor i32 %283, %277
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %281, align 1
  %286 = load i8*, i8** %12, align 8
  %287 = call i32 @EVP_MD_CTX_reset(i8* %286)
  %288 = call i32 @TEST_true(i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %304

290:                                              ; preds = %275
  %291 = load i8*, i8** %12, align 8
  %292 = load i8*, i8** %11, align 8
  %293 = call i32 @EVP_DigestVerifyInit(i8* %291, i32* null, i32* null, i32* null, i8* %292)
  %294 = call i32 @TEST_true(i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %290
  %297 = load i8*, i8** %12, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load i64, i64* %13, align 8
  %300 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %301 = call i32 @EVP_DigestVerify(i8* %297, i8* %298, i64 %299, i8* %300, i32 128)
  %302 = call i32 @TEST_int_eq(i32 %301, i32 1)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %296, %290, %275
  br label %306

305:                                              ; preds = %296
  store i32 1, i32* %15, align 4
  br label %306

306:                                              ; preds = %305, %304, %274, %226, %201, %176, %86
  %307 = load i8*, i8** %11, align 8
  %308 = call i32 @EVP_PKEY_free(i8* %307)
  %309 = load i8*, i8** %10, align 8
  %310 = call i32 @EVP_PKEY_free(i8* %309)
  %311 = load i8*, i8** %12, align 8
  %312 = call i32 @EVP_MD_CTX_free(i8* %311)
  %313 = load i8*, i8** %9, align 8
  %314 = call i32 @OPENSSL_free(i8* %313)
  %315 = load i32, i32* %15, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %306, %30
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i8* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @EC_KEY_generate_key(i8*) #1

declare dso_local i8* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_assign_EC_KEY(i8*, i8*) #1

declare dso_local i32 @ECDSA_size(i8*) #1

declare dso_local i32 @TEST_int_ge(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @EVP_DigestSignInit(i8*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @EVP_DigestSign(i8*, i8*, i64*, i8*, i32) #1

declare dso_local i32 @TEST_int_le(i64, i32) #1

declare dso_local i32 @EVP_MD_CTX_reset(i8*) #1

declare dso_local i32 @EVP_DigestVerifyInit(i8*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EVP_DigestVerify(i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
