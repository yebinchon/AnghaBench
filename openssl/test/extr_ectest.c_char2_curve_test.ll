; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_char2_curve_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_char2_curve_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_curve_test = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@char2_curve_tests = common dso_local global %struct.c2_curve_test* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s -- Generator:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"combined multiplication ...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @char2_curve_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char2_curve_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
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
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i32*], align 16
  %20 = alloca %struct.c2_curve_test*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
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
  %21 = load %struct.c2_curve_test*, %struct.c2_curve_test** @char2_curve_tests, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %21, i64 %23
  store %struct.c2_curve_test* %24, %struct.c2_curve_test** %20, align 8
  %25 = call i32* (...) @BN_CTX_new()
  store i32* %25, i32** %4, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %1
  %29 = call i32* (...) @BN_new()
  store i32* %29, i32** %5, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %127

32:                                               ; preds = %28
  %33 = call i32* (...) @BN_new()
  store i32* %33, i32** %6, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %127

36:                                               ; preds = %32
  %37 = call i32* (...) @BN_new()
  store i32* %37, i32** %7, align 8
  %38 = call i32 @TEST_ptr(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = call i32* (...) @BN_new()
  store i32* %41, i32** %8, align 8
  %42 = call i32 @TEST_ptr(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %127

44:                                               ; preds = %40
  %45 = call i32* (...) @BN_new()
  store i32* %45, i32** %9, align 8
  %46 = call i32 @TEST_ptr(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %127

48:                                               ; preds = %44
  %49 = call i32* (...) @BN_new()
  store i32* %49, i32** %10, align 8
  %50 = call i32 @TEST_ptr(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %48
  %53 = call i32* (...) @BN_new()
  store i32* %53, i32** %12, align 8
  %54 = call i32 @TEST_ptr(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %127

56:                                               ; preds = %52
  %57 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %58 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @BN_hex2bn(i32** %5, i32 %59)
  %61 = call i32 @TEST_true(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %56
  %64 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %65 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @BN_hex2bn(i32** %6, i32 %66)
  %68 = call i32 @TEST_true(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %63
  %71 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %72 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @BN_hex2bn(i32** %7, i32 %73)
  %75 = call i32 @TEST_true(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %70
  %78 = call i32 (...) @EC_GF2m_simple_method()
  %79 = call i32* @EC_GROUP_new(i32 %78)
  store i32* %79, i32** %13, align 8
  %80 = call i32 @TEST_true(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %77
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32* @EC_GROUP_set_curve(i32* %83, i32* %84, i32* %85, i32* %86, i32* %87)
  %89 = call i32 @TEST_true(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %82
  %92 = load i32*, i32** %13, align 8
  %93 = call i32* @EC_POINT_new(i32* %92)
  store i32* %93, i32** %15, align 8
  %94 = call i32 @TEST_ptr(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = load i32*, i32** %13, align 8
  %98 = call i32* @EC_POINT_new(i32* %97)
  store i32* %98, i32** %16, align 8
  %99 = call i32 @TEST_ptr(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %96
  %102 = load i32*, i32** %13, align 8
  %103 = call i32* @EC_POINT_new(i32* %102)
  store i32* %103, i32** %17, align 8
  %104 = call i32 @TEST_ptr(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %108 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @BN_hex2bn(i32** %8, i32 %109)
  %111 = call i32 @TEST_true(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %115 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32* @BN_hex2bn(i32** %9, i32 %116)
  %118 = call i32 @TEST_true(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32* (...) @BN_value_one()
  %124 = call i32* @BN_add(i32* %121, i32* %122, i32* %123)
  %125 = call i32 @TEST_true(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120, %113, %106, %101, %96, %91, %82, %77, %70, %63, %56, %52, %48, %44, %40, %36, %32, %28, %1
  br label %433

128:                                              ; preds = %120
  %129 = load i32*, i32** %13, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = call i32* @EC_POINT_set_affine_coordinates(i32* %129, i32* %130, i32* %131, i32* %132, i32* %133)
  %135 = call i32 @TEST_false(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %175

137:                                              ; preds = %128
  %138 = load i32*, i32** %13, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i32* @EC_POINT_set_affine_coordinates(i32* %138, i32* %139, i32* %140, i32* %141, i32* %142)
  %144 = call i32 @TEST_true(i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %175

146:                                              ; preds = %137
  %147 = load i32*, i32** %13, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @EC_POINT_is_on_curve(i32* %147, i32* %148, i32* %149)
  %151 = call i32 @TEST_int_gt(i32 %150, i32 0)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %146
  %154 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %155 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32* @BN_hex2bn(i32** %10, i32 %156)
  %158 = call i32 @TEST_true(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %153
  %161 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %162 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32* @BN_hex2bn(i32** %11, i32 %163)
  %165 = call i32 @TEST_true(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load i32*, i32** %13, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call i32* @EC_GROUP_set_generator(i32* %168, i32* %169, i32* %170, i32* %171)
  %173 = call i32 @TEST_true(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %167, %160, %153, %146, %137, %128
  br label %433

176:                                              ; preds = %167
  %177 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %178 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %181)
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %183)
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @EC_GROUP_get_degree(i32* %185)
  %187 = load %struct.c2_curve_test*, %struct.c2_curve_test** %20, align 8
  %188 = getelementptr inbounds %struct.c2_curve_test, %struct.c2_curve_test* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @TEST_int_eq(i32 %186, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %176
  %193 = load i32*, i32** %13, align 8
  %194 = call i32 @group_order_tests(i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load i32*, i32** %13, align 8
  %198 = call i32 @EC_GROUP_method_of(i32* %197)
  %199 = call i32* @EC_GROUP_new(i32 %198)
  store i32* %199, i32** %14, align 8
  %200 = call i32 @TEST_ptr(i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load i32*, i32** %14, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = call i32* @EC_GROUP_copy(i32* %203, i32* %204)
  %206 = call i32 @TEST_true(i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %202, %196, %192, %176
  br label %433

209:                                              ; preds = %202
  %210 = load i32, i32* %2, align 4
  %211 = load %struct.c2_curve_test*, %struct.c2_curve_test** @char2_curve_tests, align 8
  %212 = call i32 @OSSL_NELEM(%struct.c2_curve_test* %211)
  %213 = sub nsw i32 %212, 1
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %432

215:                                              ; preds = %209
  %216 = load i32*, i32** %13, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = load i32*, i32** %4, align 8
  %221 = call i32* @EC_POINT_set_affine_coordinates(i32* %216, i32* %217, i32* %218, i32* %219, i32* %220)
  %222 = call i32 @TEST_true(i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %288

224:                                              ; preds = %215
  %225 = load i32*, i32** %16, align 8
  %226 = load i32*, i32** %15, align 8
  %227 = call i32* @EC_POINT_copy(i32* %225, i32* %226)
  %228 = call i32 @TEST_true(i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %288

230:                                              ; preds = %224
  %231 = load i32*, i32** %13, align 8
  %232 = load i32*, i32** %16, align 8
  %233 = call i32* @EC_POINT_is_at_infinity(i32* %231, i32* %232)
  %234 = call i32 @TEST_false(i32* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %288

236:                                              ; preds = %230
  %237 = load i32*, i32** %13, align 8
  %238 = load i32*, i32** %15, align 8
  %239 = load i32*, i32** %15, align 8
  %240 = load i32*, i32** %4, align 8
  %241 = call i32* @EC_POINT_dbl(i32* %237, i32* %238, i32* %239, i32* %240)
  %242 = call i32 @TEST_true(i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %288

244:                                              ; preds = %236
  %245 = load i32*, i32** %13, align 8
  %246 = load i32*, i32** %15, align 8
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 @EC_POINT_is_on_curve(i32* %245, i32* %246, i32* %247)
  %249 = call i32 @TEST_int_gt(i32 %248, i32 0)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %288

251:                                              ; preds = %244
  %252 = load i32*, i32** %13, align 8
  %253 = load i32*, i32** %16, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = call i32* @EC_POINT_invert(i32* %252, i32* %253, i32* %254)
  %256 = call i32 @TEST_true(i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %288

258:                                              ; preds = %251
  %259 = load i32*, i32** %13, align 8
  %260 = load i32*, i32** %17, align 8
  %261 = load i32*, i32** %15, align 8
  %262 = load i32*, i32** %16, align 8
  %263 = load i32*, i32** %4, align 8
  %264 = call i32* @EC_POINT_add(i32* %259, i32* %260, i32* %261, i32* %262, i32* %263)
  %265 = call i32 @TEST_true(i32* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %288

267:                                              ; preds = %258
  %268 = load i32*, i32** %13, align 8
  %269 = load i32*, i32** %17, align 8
  %270 = load i32*, i32** %17, align 8
  %271 = load i32*, i32** %16, align 8
  %272 = load i32*, i32** %4, align 8
  %273 = call i32* @EC_POINT_add(i32* %268, i32* %269, i32* %270, i32* %271, i32* %272)
  %274 = call i32 @TEST_true(i32* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %267
  %277 = load i32*, i32** %13, align 8
  %278 = load i32*, i32** %17, align 8
  %279 = call i32* @EC_POINT_is_at_infinity(i32* %277, i32* %278)
  %280 = call i32 @TEST_true(i32* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %276
  %283 = load i32*, i32** %13, align 8
  %284 = load i32*, i32** %16, align 8
  %285 = call i32* @EC_POINT_is_at_infinity(i32* %283, i32* %284)
  %286 = call i32 @TEST_false(i32* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %282, %276, %267, %258, %251, %244, %236, %230, %224, %215
  br label %433

289:                                              ; preds = %282
  %290 = load i32*, i32** %16, align 8
  %291 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  store i32* %290, i32** %291, align 16
  %292 = load i32*, i32** %16, align 8
  %293 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 1
  store i32* %292, i32** %293, align 8
  %294 = load i32*, i32** %16, align 8
  %295 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 2
  store i32* %294, i32** %295, align 16
  %296 = load i32*, i32** %9, align 8
  %297 = load i32*, i32** %10, align 8
  %298 = call i32* (...) @BN_value_one()
  %299 = call i32* @BN_add(i32* %296, i32* %297, i32* %298)
  %300 = call i32 @TEST_true(i32* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %289
  %303 = load i32*, i32** %9, align 8
  %304 = call i32 @TEST_BN_even(i32* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %302
  %307 = load i32*, i32** %9, align 8
  %308 = load i32*, i32** %9, align 8
  %309 = call i32* @BN_rshift1(i32* %307, i32* %308)
  %310 = call i32 @TEST_true(i32* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %306, %302, %289
  br label %433

313:                                              ; preds = %306
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* %314, i32** %315, align 16
  %316 = load i32*, i32** %9, align 8
  %317 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 1
  store i32* %316, i32** %317, align 8
  %318 = call i32 @TEST_note(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %319 = load i32*, i32** %13, align 8
  %320 = load i32*, i32** %15, align 8
  %321 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %322 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %323 = load i32*, i32** %4, align 8
  %324 = call i32* @EC_POINTs_mul(i32* %319, i32* %320, i32* null, i32 2, i32** %321, i32** %322, i32* %323)
  %325 = call i32 @TEST_true(i32* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %353

327:                                              ; preds = %313
  %328 = load i32*, i32** %13, align 8
  %329 = load i32*, i32** %17, align 8
  %330 = load i32*, i32** %10, align 8
  %331 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %332 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %333 = load i32*, i32** %4, align 8
  %334 = call i32* @EC_POINTs_mul(i32* %328, i32* %329, i32* %330, i32 2, i32** %331, i32** %332, i32* %333)
  %335 = call i32 @TEST_true(i32* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %353

337:                                              ; preds = %327
  %338 = load i32*, i32** %13, align 8
  %339 = load i32*, i32** %15, align 8
  %340 = load i32*, i32** %17, align 8
  %341 = load i32*, i32** %4, align 8
  %342 = call i32 @EC_POINT_cmp(i32* %338, i32* %339, i32* %340, i32* %341)
  %343 = call i32 @TEST_int_eq(i32 0, i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %337
  %346 = load i32*, i32** %13, align 8
  %347 = load i32*, i32** %17, align 8
  %348 = load i32*, i32** %16, align 8
  %349 = load i32*, i32** %4, align 8
  %350 = call i32 @EC_POINT_cmp(i32* %346, i32* %347, i32* %348, i32* %349)
  %351 = call i32 @TEST_int_eq(i32 0, i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %345, %337, %327, %313
  br label %433

354:                                              ; preds = %345
  %355 = load i32*, i32** %9, align 8
  %356 = load i32*, i32** %9, align 8
  %357 = call i64 @BN_num_bits(i32* %356)
  %358 = call i32* @BN_rand(i32* %355, i64 %357, i32 0, i32 0)
  %359 = call i32 @TEST_true(i32* %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %354
  %362 = load i32*, i32** %10, align 8
  %363 = load i32*, i32** %10, align 8
  %364 = load i32*, i32** %9, align 8
  %365 = call i32* @BN_add(i32* %362, i32* %363, i32* %364)
  %366 = call i32 @TEST_true(i32* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %361, %354
  br label %433

369:                                              ; preds = %361
  %370 = load i32*, i32** %10, align 8
  %371 = call i32 @BN_set_negative(i32* %370, i32 1)
  %372 = load i32*, i32** %9, align 8
  %373 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* %372, i32** %373, align 16
  %374 = load i32*, i32** %10, align 8
  %375 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 1
  store i32* %374, i32** %375, align 8
  %376 = load i32*, i32** %13, align 8
  %377 = load i32*, i32** %15, align 8
  %378 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %379 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %380 = load i32*, i32** %4, align 8
  %381 = call i32* @EC_POINTs_mul(i32* %376, i32* %377, i32* null, i32 2, i32** %378, i32** %379, i32* %380)
  %382 = call i32 @TEST_true(i32* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %369
  %385 = load i32*, i32** %13, align 8
  %386 = load i32*, i32** %15, align 8
  %387 = call i32* @EC_POINT_is_at_infinity(i32* %385, i32* %386)
  %388 = call i32 @TEST_true(i32* %387)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %384, %369
  br label %433

391:                                              ; preds = %384
  %392 = load i32*, i32** %8, align 8
  %393 = load i32*, i32** %9, align 8
  %394 = call i64 @BN_num_bits(i32* %393)
  %395 = sub nsw i64 %394, 1
  %396 = call i32* @BN_rand(i32* %392, i64 %395, i32 0, i32 0)
  %397 = call i32 @TEST_true(i32* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %391
  %400 = load i32*, i32** %10, align 8
  %401 = load i32*, i32** %8, align 8
  %402 = load i32*, i32** %9, align 8
  %403 = call i32* @BN_add(i32* %400, i32* %401, i32* %402)
  %404 = call i32 @TEST_true(i32* %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %399, %391
  br label %433

407:                                              ; preds = %399
  %408 = load i32*, i32** %10, align 8
  %409 = call i32 @BN_set_negative(i32* %408, i32 1)
  %410 = load i32*, i32** %8, align 8
  %411 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  store i32* %410, i32** %411, align 16
  %412 = load i32*, i32** %9, align 8
  %413 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 1
  store i32* %412, i32** %413, align 8
  %414 = load i32*, i32** %10, align 8
  %415 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 2
  store i32* %414, i32** %415, align 16
  %416 = load i32*, i32** %13, align 8
  %417 = load i32*, i32** %15, align 8
  %418 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %419 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %420 = load i32*, i32** %4, align 8
  %421 = call i32* @EC_POINTs_mul(i32* %416, i32* %417, i32* null, i32 3, i32** %418, i32** %419, i32* %420)
  %422 = call i32 @TEST_true(i32* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %407
  %425 = load i32*, i32** %13, align 8
  %426 = load i32*, i32** %15, align 8
  %427 = call i32* @EC_POINT_is_at_infinity(i32* %425, i32* %426)
  %428 = call i32 @TEST_true(i32* %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %424, %407
  br label %433

431:                                              ; preds = %424
  br label %432

432:                                              ; preds = %431, %209
  store i32 1, i32* %3, align 4
  br label %433

433:                                              ; preds = %432, %430, %406, %390, %368, %353, %312, %288, %208, %175, %127
  %434 = load i32*, i32** %4, align 8
  %435 = call i32 @BN_CTX_free(i32* %434)
  %436 = load i32*, i32** %5, align 8
  %437 = call i32 @BN_free(i32* %436)
  %438 = load i32*, i32** %6, align 8
  %439 = call i32 @BN_free(i32* %438)
  %440 = load i32*, i32** %7, align 8
  %441 = call i32 @BN_free(i32* %440)
  %442 = load i32*, i32** %8, align 8
  %443 = call i32 @BN_free(i32* %442)
  %444 = load i32*, i32** %9, align 8
  %445 = call i32 @BN_free(i32* %444)
  %446 = load i32*, i32** %10, align 8
  %447 = call i32 @BN_free(i32* %446)
  %448 = load i32*, i32** %12, align 8
  %449 = call i32 @BN_free(i32* %448)
  %450 = load i32*, i32** %11, align 8
  %451 = call i32 @BN_free(i32* %450)
  %452 = load i32*, i32** %15, align 8
  %453 = call i32 @EC_POINT_free(i32* %452)
  %454 = load i32*, i32** %16, align 8
  %455 = call i32 @EC_POINT_free(i32* %454)
  %456 = load i32*, i32** %17, align 8
  %457 = call i32 @EC_POINT_free(i32* %456)
  %458 = load i32*, i32** %13, align 8
  %459 = call i32 @EC_GROUP_free(i32* %458)
  %460 = load i32*, i32** %14, align 8
  %461 = call i32 @EC_GROUP_free(i32* %460)
  %462 = load i32, i32* %3, align 4
  ret i32 %462
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32*) #1

declare dso_local i32* @BN_hex2bn(i32**, i32) #1

declare dso_local i32* @EC_GROUP_new(i32) #1

declare dso_local i32 @EC_GF2m_simple_method(...) #1

declare dso_local i32* @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @BN_add(i32*, i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @TEST_false(i32*) #1

declare dso_local i32* @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @EC_POINT_is_on_curve(i32*, i32*, i32*) #1

declare dso_local i32* @EC_GROUP_set_generator(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @test_output_bignum(i8*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EC_GROUP_get_degree(i32*) #1

declare dso_local i32 @group_order_tests(i32*) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i32* @EC_GROUP_copy(i32*, i32*) #1

declare dso_local i32 @OSSL_NELEM(%struct.c2_curve_test*) #1

declare dso_local i32* @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32* @EC_POINT_is_at_infinity(i32*, i32*) #1

declare dso_local i32* @EC_POINT_dbl(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_invert(i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_BN_even(i32*) #1

declare dso_local i32* @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @TEST_note(i8*) #1

declare dso_local i32* @EC_POINTs_mul(i32*, i32*, i32*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @EC_POINT_cmp(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_rand(i32*, i64, i32, i32) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
