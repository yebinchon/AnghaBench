; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@check_named_curve_test.invalid_seed = internal constant [25 x i8] c"THIS IS NOT A VALID SEED\00", align 16
@check_named_curve_test.invalid_seed_len = internal global i64 25, align 8
@curves = common dso_local global %struct.TYPE_2__* null, align 8
@NID_X9_62_characteristic_two_field = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_named_curve_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_named_curve_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = call i32* (...) @BN_CTX_new()
  store i32* %28, i32** %21, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %135

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = call i32* @EC_GROUP_new_by_curve_name(i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %135

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = call i32* @EC_GROUP_dup(i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %135

41:                                               ; preds = %36
  %42 = call i32* (...) @BN_new()
  store i32* %42, i32** %11, align 8
  %43 = call i32 @TEST_ptr(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %135

45:                                               ; preds = %41
  %46 = call i32* (...) @BN_new()
  store i32* %46, i32** %12, align 8
  %47 = call i32 @TEST_ptr(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %135

49:                                               ; preds = %45
  %50 = call i32* (...) @BN_new()
  store i32* %50, i32** %13, align 8
  %51 = call i32 @TEST_ptr(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %135

53:                                               ; preds = %49
  %54 = call i32* (...) @BN_new()
  store i32* %54, i32** %17, align 8
  %55 = call i32 @TEST_ptr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %135

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @EC_GROUP_get0_generator(i32* %58)
  store i32* %59, i32** %9, align 8
  %60 = call i32 @TEST_ptr(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @EC_GROUP_get0_order(i32* %63)
  store i32* %64, i32** %20, align 8
  %65 = call i32 @TEST_ptr(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %135

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i64 @EC_GROUP_get_cofactor(i32* %68, i32* %69, i32* null)
  %71 = call i32 @TEST_true(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %135

73:                                               ; preds = %67
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i64 @EC_GROUP_get_curve(i32* %74, i32* %75, i32* %76, i32* %77, i32* null)
  %79 = call i32 @TEST_true(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %73
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32* @EC_POINT_dup(i32* %82, i32* %83)
  store i32* %84, i32** %10, align 8
  %85 = call i32 @TEST_ptr(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i64 @EC_POINT_add(i32* %88, i32* %89, i32* %90, i32* %91, i32* null)
  %93 = call i32 @TEST_true(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %87
  %96 = load i32*, i32** %20, align 8
  %97 = call i32* @BN_dup(i32* %96)
  store i32* %97, i32** %19, align 8
  %98 = call i32 @TEST_ptr(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = load i32*, i32** %19, align 8
  %102 = call i64 @BN_add_word(i32* %101, i32 1)
  %103 = call i32 @TEST_true(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = load i32*, i32** %12, align 8
  %107 = call i32* @BN_dup(i32* %106)
  store i32* %107, i32** %15, align 8
  %108 = call i32 @TEST_ptr(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load i32*, i32** %15, align 8
  %112 = call i64 @BN_add_word(i32* %111, i32 1)
  %113 = call i32 @TEST_true(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %110
  %116 = load i32*, i32** %13, align 8
  %117 = call i32* @BN_dup(i32* %116)
  store i32* %117, i32** %16, align 8
  %118 = call i32 @TEST_ptr(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load i32*, i32** %16, align 8
  %122 = call i64 @BN_add_word(i32* %121, i32 1)
  %123 = call i32 @TEST_true(i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i32*, i32** %17, align 8
  %127 = call i32* @BN_dup(i32* %126)
  store i32* %127, i32** %18, align 8
  %128 = call i32 @TEST_ptr(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32*, i32** %18, align 8
  %132 = call i64 @BN_add_word(i32* %131, i32 1)
  %133 = call i32 @TEST_true(i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130, %125, %120, %115, %110, %105, %100, %95, %87, %81, %73, %67, %62, %57, %53, %49, %45, %41, %36, %31, %1
  br label %415

136:                                              ; preds = %130
  %137 = load i32*, i32** %7, align 8
  %138 = call i64 @EC_GROUP_get_seed_len(i32* %137)
  %139 = icmp sgt i64 %138, 0
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %6, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @EC_GROUP_method_of(i32* %141)
  %143 = call i32 @EC_METHOD_get_field_type(i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @NID_X9_62_characteristic_two_field, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %136
  %148 = load i32*, i32** %11, align 8
  %149 = call i32* @BN_dup(i32* %148)
  store i32* %149, i32** %14, align 8
  %150 = call i32 @TEST_ptr(i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i64 @BN_lshift1(i32* %153, i32* %154)
  %156 = call i32 @TEST_true(i64 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152, %147
  br label %415

159:                                              ; preds = %152
  br label %183

160:                                              ; preds = %136
  %161 = load i32*, i32** %11, align 8
  %162 = call i32* @BN_dup(i32* %161)
  store i32* %162, i32** %14, align 8
  %163 = call i32 @TEST_ptr(i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %415

166:                                              ; preds = %160
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 (...) @BN_get0_nist_prime_192()
  %169 = load i32*, i32** %14, align 8
  %170 = call i64 @BN_ucmp(i32 %168, i32* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = call i32 (...) @BN_get0_nist_prime_256()
  br label %176

174:                                              ; preds = %166
  %175 = call i32 (...) @BN_get0_nist_prime_192()
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = call i32* @BN_copy(i32* %167, i32 %177)
  %179 = call i32 @TEST_ptr(i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %415

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %159
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @EC_GROUP_check_named_curve(i32* %184, i32 0, i32* null)
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @TEST_int_eq(i32 %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %183
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @EC_GROUP_check_named_curve(i32* %190, i32 1, i32* null)
  %192 = load i32, i32* %4, align 4
  %193 = call i32* @EC_curve_nid2nist(i32 %192)
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* %4, align 4
  br label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @NID_undef, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = call i32 @TEST_int_eq(i32 %191, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199, %183
  br label %415

204:                                              ; preds = %199
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  %208 = call i32 @EC_GROUP_set_curve_name(i32* %205, i32 %207)
  %209 = call i32 (...) @ERR_set_mark()
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 @EC_GROUP_check_named_curve(i32* %210, i32 0, i32* null)
  %212 = call i32 @TEST_int_le(i32 %211, i32 0)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %204
  br label %415

215:                                              ; preds = %204
  %216 = call i32 (...) @ERR_pop_to_mark()
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @EC_GROUP_set_curve_name(i32* %217, i32 %218)
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @EC_GROUP_check_named_curve(i32* %220, i32 0, i32* null)
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @TEST_int_eq(i32 %221, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %215
  br label %415

226:                                              ; preds = %215
  %227 = load i32*, i32** %7, align 8
  %228 = load i64, i64* @check_named_curve_test.invalid_seed_len, align 8
  %229 = call i32 @EC_GROUP_set_seed(i32* %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @check_named_curve_test.invalid_seed, i64 0, i64 0), i64 %228)
  %230 = load i64, i64* @check_named_curve_test.invalid_seed_len, align 8
  %231 = trunc i64 %230 to i32
  %232 = call i32 @TEST_int_eq(i32 %229, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %226
  br label %415

235:                                              ; preds = %226
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @EC_GROUP_check_named_curve(i32* %239, i32 0, i32* null)
  %241 = call i32 @TEST_int_eq(i32 %240, i32 0)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %238
  br label %415

244:                                              ; preds = %238
  br label %253

245:                                              ; preds = %235
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @EC_GROUP_check_named_curve(i32* %246, i32 0, i32* null)
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @TEST_int_eq(i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %245
  br label %415

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %244
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @EC_GROUP_set_seed(i32* %254, i8* null, i64 0)
  %256 = call i32 @TEST_int_eq(i32 %255, i32 1)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i32*, i32** %7, align 8
  %260 = call i32 @EC_GROUP_check_named_curve(i32* %259, i32 0, i32* null)
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @TEST_int_eq(i32 %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %258, %253
  br label %415

265:                                              ; preds = %258
  %266 = load i32*, i32** %8, align 8
  %267 = call i32 @EC_GROUP_check_named_curve(i32* %266, i32 0, i32* null)
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @TEST_int_eq(i32 %267, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %265
  br label %415

272:                                              ; preds = %265
  %273 = load i32*, i32** %8, align 8
  %274 = load i32*, i32** %10, align 8
  %275 = load i32*, i32** %20, align 8
  %276 = load i32*, i32** %17, align 8
  %277 = call i64 @EC_GROUP_set_generator(i32* %273, i32* %274, i32* %275, i32* %276)
  %278 = call i32 @TEST_true(i64 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %345

280:                                              ; preds = %272
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @EC_GROUP_check_named_curve(i32* %281, i32 0, i32* null)
  %283 = call i32 @TEST_int_eq(i32 %282, i32 0)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %345

285:                                              ; preds = %280
  %286 = load i32*, i32** %8, align 8
  %287 = load i32*, i32** %9, align 8
  %288 = load i32*, i32** %19, align 8
  %289 = load i32*, i32** %17, align 8
  %290 = call i64 @EC_GROUP_set_generator(i32* %286, i32* %287, i32* %288, i32* %289)
  %291 = call i32 @TEST_true(i64 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %345

293:                                              ; preds = %285
  %294 = load i32*, i32** %8, align 8
  %295 = call i32 @EC_GROUP_check_named_curve(i32* %294, i32 0, i32* null)
  %296 = call i32 @TEST_int_eq(i32 %295, i32 0)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %345

298:                                              ; preds = %293
  %299 = load i32*, i32** %8, align 8
  %300 = load i32*, i32** %9, align 8
  %301 = load i32*, i32** %17, align 8
  %302 = call i64 @EC_GROUP_set_generator(i32* %299, i32* %300, i32* null, i32* %301)
  %303 = call i32 @TEST_false(i64 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %345

305:                                              ; preds = %298
  %306 = load i32*, i32** %8, align 8
  %307 = load i32*, i32** %9, align 8
  %308 = load i32*, i32** %20, align 8
  %309 = load i32*, i32** %18, align 8
  %310 = call i64 @EC_GROUP_set_generator(i32* %306, i32* %307, i32* %308, i32* %309)
  %311 = call i32 @TEST_true(i64 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %345

313:                                              ; preds = %305
  %314 = load i32*, i32** %8, align 8
  %315 = call i32 @EC_GROUP_check_named_curve(i32* %314, i32 0, i32* null)
  %316 = call i32 @TEST_int_eq(i32 %315, i32 0)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %313
  %319 = load i32*, i32** %8, align 8
  %320 = load i32*, i32** %9, align 8
  %321 = load i32*, i32** %20, align 8
  %322 = call i64 @EC_GROUP_set_generator(i32* %319, i32* %320, i32* %321, i32* null)
  %323 = call i32 @TEST_true(i64 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %345

325:                                              ; preds = %318
  %326 = load i32*, i32** %8, align 8
  %327 = call i32 @EC_GROUP_check_named_curve(i32* %326, i32 0, i32* null)
  %328 = load i32, i32* %4, align 4
  %329 = call i32 @TEST_int_eq(i32 %327, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %345

331:                                              ; preds = %325
  %332 = load i32*, i32** %8, align 8
  %333 = load i32*, i32** %9, align 8
  %334 = load i32*, i32** %20, align 8
  %335 = load i32*, i32** %17, align 8
  %336 = call i64 @EC_GROUP_set_generator(i32* %332, i32* %333, i32* %334, i32* %335)
  %337 = call i32 @TEST_true(i64 %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %331
  %340 = load i32*, i32** %8, align 8
  %341 = call i32 @EC_GROUP_check_named_curve(i32* %340, i32 0, i32* null)
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @TEST_int_eq(i32 %341, i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %339, %331, %325, %318, %313, %305, %298, %293, %285, %280, %272
  br label %415

346:                                              ; preds = %339
  %347 = call i32 (...) @ERR_set_mark()
  %348 = load i32*, i32** %8, align 8
  %349 = load i32*, i32** %14, align 8
  %350 = load i32*, i32** %12, align 8
  %351 = load i32*, i32** %13, align 8
  %352 = call i64 @EC_GROUP_set_curve(i32* %348, i32* %349, i32* %350, i32* %351, i32* null)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %346
  %355 = load i32*, i32** %8, align 8
  %356 = call i32 @EC_GROUP_check_named_curve(i32* %355, i32 0, i32* null)
  %357 = call i32 @TEST_int_le(i32 %356, i32 0)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %354
  br label %415

360:                                              ; preds = %354
  br label %364

361:                                              ; preds = %346
  %362 = call i32 (...) @ERR_pop_to_mark()
  %363 = call i32 (...) @ERR_set_mark()
  br label %364

364:                                              ; preds = %361, %360
  %365 = load i32*, i32** %8, align 8
  %366 = load i32*, i32** %11, align 8
  %367 = load i32*, i32** %15, align 8
  %368 = load i32*, i32** %13, align 8
  %369 = call i64 @EC_GROUP_set_curve(i32* %365, i32* %366, i32* %367, i32* %368, i32* null)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %364
  %372 = load i32*, i32** %8, align 8
  %373 = call i32 @EC_GROUP_check_named_curve(i32* %372, i32 0, i32* null)
  %374 = call i32 @TEST_int_le(i32 %373, i32 0)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %371
  br label %415

377:                                              ; preds = %371
  br label %381

378:                                              ; preds = %364
  %379 = call i32 (...) @ERR_pop_to_mark()
  %380 = call i32 (...) @ERR_set_mark()
  br label %381

381:                                              ; preds = %378, %377
  %382 = load i32*, i32** %8, align 8
  %383 = load i32*, i32** %11, align 8
  %384 = load i32*, i32** %12, align 8
  %385 = load i32*, i32** %16, align 8
  %386 = call i64 @EC_GROUP_set_curve(i32* %382, i32* %383, i32* %384, i32* %385, i32* null)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %395

388:                                              ; preds = %381
  %389 = load i32*, i32** %8, align 8
  %390 = call i32 @EC_GROUP_check_named_curve(i32* %389, i32 0, i32* null)
  %391 = call i32 @TEST_int_le(i32 %390, i32 0)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %388
  br label %415

394:                                              ; preds = %388
  br label %398

395:                                              ; preds = %381
  %396 = call i32 (...) @ERR_pop_to_mark()
  %397 = call i32 (...) @ERR_set_mark()
  br label %398

398:                                              ; preds = %395, %394
  %399 = call i32 (...) @ERR_pop_to_mark()
  %400 = load i32*, i32** %8, align 8
  %401 = load i32*, i32** %11, align 8
  %402 = load i32*, i32** %12, align 8
  %403 = load i32*, i32** %13, align 8
  %404 = call i64 @EC_GROUP_set_curve(i32* %400, i32* %401, i32* %402, i32* %403, i32* null)
  %405 = call i32 @TEST_true(i64 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %398
  %408 = load i32*, i32** %8, align 8
  %409 = call i32 @EC_GROUP_check_named_curve(i32* %408, i32 0, i32* null)
  %410 = load i32, i32* %4, align 4
  %411 = call i32 @TEST_int_eq(i32 %409, i32 %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %407, %398
  br label %415

414:                                              ; preds = %407
  store i32 1, i32* %3, align 4
  br label %415

415:                                              ; preds = %414, %413, %393, %376, %359, %345, %271, %264, %251, %243, %234, %225, %214, %203, %181, %165, %158, %135
  %416 = load i32*, i32** %11, align 8
  %417 = call i32 @BN_free(i32* %416)
  %418 = load i32*, i32** %14, align 8
  %419 = call i32 @BN_free(i32* %418)
  %420 = load i32*, i32** %12, align 8
  %421 = call i32 @BN_free(i32* %420)
  %422 = load i32*, i32** %15, align 8
  %423 = call i32 @BN_free(i32* %422)
  %424 = load i32*, i32** %13, align 8
  %425 = call i32 @BN_free(i32* %424)
  %426 = load i32*, i32** %16, align 8
  %427 = call i32 @BN_free(i32* %426)
  %428 = load i32*, i32** %17, align 8
  %429 = call i32 @BN_free(i32* %428)
  %430 = load i32*, i32** %18, align 8
  %431 = call i32 @BN_free(i32* %430)
  %432 = load i32*, i32** %19, align 8
  %433 = call i32 @BN_free(i32* %432)
  %434 = load i32*, i32** %10, align 8
  %435 = call i32 @EC_POINT_free(i32* %434)
  %436 = load i32*, i32** %8, align 8
  %437 = call i32 @EC_GROUP_free(i32* %436)
  %438 = load i32*, i32** %7, align 8
  %439 = call i32 @EC_GROUP_free(i32* %438)
  %440 = load i32*, i32** %21, align 8
  %441 = call i32 @BN_CTX_free(i32* %440)
  %442 = load i32, i32* %3, align 4
  ret i32 %442
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @EC_GROUP_dup(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32 @TEST_true(i64) #1

declare dso_local i64 @EC_GROUP_get_cofactor(i32*, i32*, i32*) #1

declare dso_local i64 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_dup(i32*, i32*) #1

declare dso_local i64 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i64 @BN_add_word(i32*, i32) #1

declare dso_local i64 @EC_GROUP_get_seed_len(i32*) #1

declare dso_local i32 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i64 @BN_lshift1(i32*, i32*) #1

declare dso_local i32* @BN_copy(i32*, i32) #1

declare dso_local i64 @BN_ucmp(i32, i32*) #1

declare dso_local i32 @BN_get0_nist_prime_192(...) #1

declare dso_local i32 @BN_get0_nist_prime_256(...) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EC_GROUP_check_named_curve(i32*, i32, i32*) #1

declare dso_local i32* @EC_curve_nid2nist(i32) #1

declare dso_local i32 @EC_GROUP_set_curve_name(i32*, i32) #1

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local i32 @EC_GROUP_set_seed(i32*, i8*, i64) #1

declare dso_local i64 @EC_GROUP_set_generator(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_false(i64) #1

declare dso_local i64 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
