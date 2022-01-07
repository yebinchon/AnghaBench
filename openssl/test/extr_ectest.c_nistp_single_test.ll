; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_nistp_single_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_nistp_single_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nistp_test_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (...)* }

@nistp_tests_params = common dso_local global %struct.nistp_test_params* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"NIST curve P-%d (optimised implementation):\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NIST test vectors ... \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nistp_single_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nistp_single_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nistp_test_params*, align 8
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
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %20 = load %struct.nistp_test_params*, %struct.nistp_test_params** @nistp_tests_params, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %20, i64 %22
  store %struct.nistp_test_params* %23, %struct.nistp_test_params** %3, align 8
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
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %25 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32* (...) @BN_CTX_new()
  store i32* %28, i32** %4, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %216

31:                                               ; preds = %1
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %5, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %216

35:                                               ; preds = %31
  %36 = call i32* (...) @BN_new()
  store i32* %36, i32** %6, align 8
  %37 = call i32 @TEST_ptr(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %216

39:                                               ; preds = %35
  %40 = call i32* (...) @BN_new()
  store i32* %40, i32** %7, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %216

43:                                               ; preds = %39
  %44 = call i32* (...) @BN_new()
  store i32* %44, i32** %8, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %216

47:                                               ; preds = %43
  %48 = call i32* (...) @BN_new()
  store i32* %48, i32** %9, align 8
  %49 = call i32 @TEST_ptr(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %216

51:                                               ; preds = %47
  %52 = call i32* (...) @BN_new()
  store i32* %52, i32** %11, align 8
  %53 = call i32 @TEST_ptr(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %216

55:                                               ; preds = %51
  %56 = call i32* (...) @BN_new()
  store i32* %56, i32** %10, align 8
  %57 = call i32 @TEST_ptr(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %216

59:                                               ; preds = %55
  %60 = call i32* (...) @BN_new()
  store i32* %60, i32** %12, align 8
  %61 = call i32 @TEST_ptr(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %216

63:                                               ; preds = %59
  %64 = call i32* (...) @BN_new()
  store i32* %64, i32** %13, align 8
  %65 = call i32 @TEST_ptr(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %216

67:                                               ; preds = %63
  %68 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %69 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %68, i32 0, i32 10
  %70 = load i32 (...)*, i32 (...)** %69, align 8
  %71 = call i32 (...) %70()
  %72 = call i32* @EC_GROUP_new(i32 %71)
  store i32* %72, i32** %14, align 8
  %73 = call i32 @TEST_ptr(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %216

75:                                               ; preds = %67
  %76 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %77 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BN_hex2bn(i32** %5, i32 %78)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %216

82:                                               ; preds = %75
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @BN_check_prime(i32* %83, i32* %84, i32* null)
  %86 = call i32 @TEST_int_eq(i32 1, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %216

88:                                               ; preds = %82
  %89 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %90 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BN_hex2bn(i32** %6, i32 %91)
  %93 = call i32 @TEST_true(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %216

95:                                               ; preds = %88
  %96 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %97 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BN_hex2bn(i32** %7, i32 %98)
  %100 = call i32 @TEST_true(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %216

102:                                              ; preds = %95
  %103 = load i32*, i32** %14, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @EC_GROUP_set_curve(i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = call i32 @TEST_true(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %216

111:                                              ; preds = %102
  %112 = load i32*, i32** %14, align 8
  %113 = call i32* @EC_POINT_new(i32* %112)
  store i32* %113, i32** %15, align 8
  %114 = call i32 @TEST_ptr(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %216

116:                                              ; preds = %111
  %117 = load i32*, i32** %14, align 8
  %118 = call i32* @EC_POINT_new(i32* %117)
  store i32* %118, i32** %16, align 8
  %119 = call i32 @TEST_ptr(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %216

121:                                              ; preds = %116
  %122 = load i32*, i32** %14, align 8
  %123 = call i32* @EC_POINT_new(i32* %122)
  store i32* %123, i32** %17, align 8
  %124 = call i32 @TEST_ptr(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %216

126:                                              ; preds = %121
  %127 = load i32*, i32** %14, align 8
  %128 = call i32* @EC_POINT_new(i32* %127)
  store i32* %128, i32** %18, align 8
  %129 = call i32 @TEST_ptr(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %216

131:                                              ; preds = %126
  %132 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %133 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @BN_hex2bn(i32** %8, i32 %134)
  %136 = call i32 @TEST_true(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %216

138:                                              ; preds = %131
  %139 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %140 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @BN_hex2bn(i32** %9, i32 %141)
  %143 = call i32 @TEST_true(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %138
  %146 = load i32*, i32** %13, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 (...) @BN_value_one()
  %149 = call i32 @BN_add(i32* %146, i32* %147, i32 %148)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %216

152:                                              ; preds = %145
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @EC_POINT_set_affine_coordinates(i32* %153, i32* %154, i32* %155, i32* %156, i32* %157)
  %159 = call i32 @TEST_false(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %216

161:                                              ; preds = %152
  %162 = load i32*, i32** %14, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @EC_POINT_set_affine_coordinates(i32* %162, i32* %163, i32* %164, i32* %165, i32* %166)
  %168 = call i32 @TEST_true(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %216

170:                                              ; preds = %161
  %171 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %172 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @BN_hex2bn(i32** %8, i32 %173)
  %175 = call i32 @TEST_true(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %170
  %178 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %179 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @BN_hex2bn(i32** %9, i32 %180)
  %182 = call i32 @TEST_true(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %216

184:                                              ; preds = %177
  %185 = load i32*, i32** %14, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @EC_POINT_set_affine_coordinates(i32* %185, i32* %186, i32* %187, i32* %188, i32* %189)
  %191 = call i32 @TEST_true(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %184
  %194 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %195 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @BN_hex2bn(i32** %12, i32 %196)
  %198 = call i32 @TEST_true(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %193
  %201 = load i32*, i32** %14, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 (...) @BN_value_one()
  %205 = call i32 @EC_GROUP_set_generator(i32* %201, i32* %202, i32* %203, i32 %204)
  %206 = call i32 @TEST_true(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %200
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @EC_GROUP_get_degree(i32* %209)
  %211 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %212 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @TEST_int_eq(i32 %210, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %208, %200, %193, %184, %177, %170, %161, %152, %145, %138, %131, %126, %121, %116, %111, %102, %95, %88, %82, %75, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %1
  br label %433

217:                                              ; preds = %208
  %218 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %219 = load %struct.nistp_test_params*, %struct.nistp_test_params** %3, align 8
  %220 = getelementptr inbounds %struct.nistp_test_params, %struct.nistp_test_params* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @BN_hex2bn(i32** %10, i32 %221)
  %223 = call i32 @TEST_true(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %217
  br label %433

226:                                              ; preds = %217
  %227 = load i32*, i32** %14, align 8
  %228 = load i32*, i32** %17, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @EC_POINT_mul(i32* %227, i32* %228, i32* %229, i32* null, i32* null, i32* %230)
  %232 = load i32*, i32** %14, align 8
  %233 = load i32*, i32** %17, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = load i32*, i32** %4, align 8
  %236 = call i32 @EC_POINT_cmp(i32* %232, i32* %233, i32* %234, i32* %235)
  %237 = call i32 @TEST_int_eq(i32 0, i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %226
  br label %433

240:                                              ; preds = %226
  %241 = load i32*, i32** %14, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = load i32*, i32** %15, align 8
  %244 = load i32*, i32** %10, align 8
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @EC_POINT_mul(i32* %241, i32* %242, i32* null, i32* %243, i32* %244, i32* %245)
  %247 = load i32*, i32** %14, align 8
  %248 = load i32*, i32** %17, align 8
  %249 = load i32*, i32** %18, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = call i32 @EC_POINT_cmp(i32* %247, i32* %248, i32* %249, i32* %250)
  %252 = call i32 @TEST_int_eq(i32 0, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %276

254:                                              ; preds = %240
  %255 = load i32*, i32** %14, align 8
  %256 = load i32*, i32** %16, align 8
  %257 = load i32*, i32** %15, align 8
  %258 = load i32*, i32** %4, align 8
  %259 = call i32 @EC_POINT_dbl(i32* %255, i32* %256, i32* %257, i32* %258)
  %260 = call i32 @TEST_true(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %254
  %263 = load i32*, i32** %14, align 8
  %264 = load i32*, i32** %16, align 8
  %265 = load i32*, i32** %12, align 8
  %266 = call i32 (...) @BN_value_one()
  %267 = call i32 @EC_GROUP_set_generator(i32* %263, i32* %264, i32* %265, i32 %266)
  %268 = call i32 @TEST_true(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %262
  %271 = load i32*, i32** %11, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = call i32 @BN_rshift(i32* %271, i32* %272, i32 1)
  %274 = call i32 @TEST_true(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %270, %262, %254, %240
  br label %433

277:                                              ; preds = %270
  %278 = load i32*, i32** %14, align 8
  %279 = load i32*, i32** %17, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = load i32*, i32** %4, align 8
  %282 = call i32 @EC_POINT_mul(i32* %278, i32* %279, i32* %280, i32* null, i32* null, i32* %281)
  %283 = load i32*, i32** %14, align 8
  %284 = load i32*, i32** %17, align 8
  %285 = load i32*, i32** %18, align 8
  %286 = load i32*, i32** %4, align 8
  %287 = call i32 @EC_POINT_cmp(i32* %283, i32* %284, i32* %285, i32* %286)
  %288 = call i32 @TEST_int_eq(i32 0, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %277
  br label %433

291:                                              ; preds = %277
  %292 = load i32*, i32** %14, align 8
  %293 = load i32*, i32** %17, align 8
  %294 = load i32*, i32** %16, align 8
  %295 = load i32*, i32** %11, align 8
  %296 = load i32*, i32** %4, align 8
  %297 = call i32 @EC_POINT_mul(i32* %292, i32* %293, i32* null, i32* %294, i32* %295, i32* %296)
  %298 = load i32*, i32** %14, align 8
  %299 = load i32*, i32** %17, align 8
  %300 = load i32*, i32** %18, align 8
  %301 = load i32*, i32** %4, align 8
  %302 = call i32 @EC_POINT_cmp(i32* %298, i32* %299, i32* %300, i32* %301)
  %303 = call i32 @TEST_int_eq(i32 0, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %291
  %306 = load i32*, i32** %14, align 8
  %307 = call i32 @EC_GROUP_have_precompute_mult(i32* %306)
  %308 = call i32 @TEST_false(i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %305
  %311 = load i32*, i32** %14, align 8
  %312 = load i32*, i32** %4, align 8
  %313 = call i32 @EC_GROUP_precompute_mult(i32* %311, i32* %312)
  %314 = call i32 @TEST_true(i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %310
  %317 = load i32*, i32** %14, align 8
  %318 = call i32 @EC_GROUP_have_precompute_mult(i32* %317)
  %319 = call i32 @TEST_true(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %316, %310, %305, %291
  br label %433

322:                                              ; preds = %316
  %323 = load i32*, i32** %14, align 8
  %324 = load i32*, i32** %17, align 8
  %325 = load i32*, i32** %11, align 8
  %326 = load i32*, i32** %4, align 8
  %327 = call i32 @EC_POINT_mul(i32* %323, i32* %324, i32* %325, i32* null, i32* null, i32* %326)
  %328 = load i32*, i32** %14, align 8
  %329 = load i32*, i32** %17, align 8
  %330 = load i32*, i32** %18, align 8
  %331 = load i32*, i32** %4, align 8
  %332 = call i32 @EC_POINT_cmp(i32* %328, i32* %329, i32* %330, i32* %331)
  %333 = call i32 @TEST_int_eq(i32 0, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %322
  br label %433

336:                                              ; preds = %322
  %337 = load i32*, i32** %14, align 8
  %338 = load i32*, i32** %17, align 8
  %339 = load i32*, i32** %16, align 8
  %340 = load i32*, i32** %11, align 8
  %341 = load i32*, i32** %4, align 8
  %342 = call i32 @EC_POINT_mul(i32* %337, i32* %338, i32* null, i32* %339, i32* %340, i32* %341)
  %343 = load i32*, i32** %14, align 8
  %344 = load i32*, i32** %17, align 8
  %345 = load i32*, i32** %18, align 8
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 @EC_POINT_cmp(i32* %343, i32* %344, i32* %345, i32* %346)
  %348 = call i32 @TEST_int_eq(i32 0, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %336
  %351 = load i32*, i32** %14, align 8
  %352 = load i32*, i32** %15, align 8
  %353 = load i32*, i32** %12, align 8
  %354 = call i32 (...) @BN_value_one()
  %355 = call i32 @EC_GROUP_set_generator(i32* %351, i32* %352, i32* %353, i32 %354)
  %356 = call i32 @TEST_true(i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %350, %336
  br label %433

359:                                              ; preds = %350
  %360 = load i32*, i32** %14, align 8
  %361 = load i32*, i32** %17, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = load i32*, i32** %4, align 8
  %364 = call i32 @EC_POINT_mul(i32* %360, i32* %361, i32* %362, i32* null, i32* null, i32* %363)
  %365 = load i32*, i32** %14, align 8
  %366 = load i32*, i32** %17, align 8
  %367 = load i32*, i32** %18, align 8
  %368 = load i32*, i32** %4, align 8
  %369 = call i32 @EC_POINT_cmp(i32* %365, i32* %366, i32* %367, i32* %368)
  %370 = call i32 @TEST_int_eq(i32 0, i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %359
  br label %433

373:                                              ; preds = %359
  %374 = load i32*, i32** %14, align 8
  %375 = load i32*, i32** %17, align 8
  %376 = load i32*, i32** %15, align 8
  %377 = load i32*, i32** %10, align 8
  %378 = load i32*, i32** %4, align 8
  %379 = call i32 @EC_POINT_mul(i32* %374, i32* %375, i32* null, i32* %376, i32* %377, i32* %378)
  %380 = load i32*, i32** %14, align 8
  %381 = load i32*, i32** %17, align 8
  %382 = load i32*, i32** %18, align 8
  %383 = load i32*, i32** %4, align 8
  %384 = call i32 @EC_POINT_cmp(i32* %380, i32* %381, i32* %382, i32* %383)
  %385 = call i32 @TEST_int_eq(i32 0, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %373
  br label %433

388:                                              ; preds = %373
  %389 = load i32*, i32** %11, align 8
  %390 = call i32 @BN_set_word(i32* %389, i32 32)
  %391 = call i32 @TEST_true(i32 %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %429

393:                                              ; preds = %388
  %394 = load i32*, i32** %10, align 8
  %395 = call i32 @BN_set_word(i32* %394, i32 31)
  %396 = call i32 @TEST_true(i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %429

398:                                              ; preds = %393
  %399 = load i32*, i32** %16, align 8
  %400 = load i32*, i32** %15, align 8
  %401 = call i32 @EC_POINT_copy(i32* %399, i32* %400)
  %402 = call i32 @TEST_true(i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %429

404:                                              ; preds = %398
  %405 = load i32*, i32** %14, align 8
  %406 = load i32*, i32** %16, align 8
  %407 = load i32*, i32** %4, align 8
  %408 = call i32 @EC_POINT_invert(i32* %405, i32* %406, i32* %407)
  %409 = call i32 @TEST_true(i32 %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %429

411:                                              ; preds = %404
  %412 = load i32*, i32** %14, align 8
  %413 = load i32*, i32** %17, align 8
  %414 = load i32*, i32** %11, align 8
  %415 = load i32*, i32** %16, align 8
  %416 = load i32*, i32** %10, align 8
  %417 = load i32*, i32** %4, align 8
  %418 = call i32 @EC_POINT_mul(i32* %412, i32* %413, i32* %414, i32* %415, i32* %416, i32* %417)
  %419 = call i32 @TEST_true(i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %411
  %422 = load i32*, i32** %14, align 8
  %423 = load i32*, i32** %17, align 8
  %424 = load i32*, i32** %15, align 8
  %425 = load i32*, i32** %4, align 8
  %426 = call i32 @EC_POINT_cmp(i32* %422, i32* %423, i32* %424, i32* %425)
  %427 = call i32 @TEST_int_eq(i32 0, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %421, %411, %404, %398, %393, %388
  br label %433

430:                                              ; preds = %421
  %431 = load i32*, i32** %14, align 8
  %432 = call i32 @group_order_tests(i32* %431)
  store i32 %432, i32* %19, align 4
  br label %433

433:                                              ; preds = %430, %429, %387, %372, %358, %335, %321, %290, %276, %239, %225, %216
  %434 = load i32*, i32** %14, align 8
  %435 = call i32 @EC_GROUP_free(i32* %434)
  %436 = load i32*, i32** %15, align 8
  %437 = call i32 @EC_POINT_free(i32* %436)
  %438 = load i32*, i32** %16, align 8
  %439 = call i32 @EC_POINT_free(i32* %438)
  %440 = load i32*, i32** %17, align 8
  %441 = call i32 @EC_POINT_free(i32* %440)
  %442 = load i32*, i32** %18, align 8
  %443 = call i32 @EC_POINT_free(i32* %442)
  %444 = load i32*, i32** %10, align 8
  %445 = call i32 @BN_free(i32* %444)
  %446 = load i32*, i32** %11, align 8
  %447 = call i32 @BN_free(i32* %446)
  %448 = load i32*, i32** %5, align 8
  %449 = call i32 @BN_free(i32* %448)
  %450 = load i32*, i32** %6, align 8
  %451 = call i32 @BN_free(i32* %450)
  %452 = load i32*, i32** %7, align 8
  %453 = call i32 @BN_free(i32* %452)
  %454 = load i32*, i32** %8, align 8
  %455 = call i32 @BN_free(i32* %454)
  %456 = load i32*, i32** %9, align 8
  %457 = call i32 @BN_free(i32* %456)
  %458 = load i32*, i32** %12, align 8
  %459 = call i32 @BN_free(i32* %458)
  %460 = load i32*, i32** %13, align 8
  %461 = call i32 @BN_free(i32* %460)
  %462 = load i32*, i32** %4, align 8
  %463 = call i32 @BN_CTX_free(i32* %462)
  %464 = load i32, i32* %19, align 4
  ret i32 %464
}

declare dso_local i32 @TEST_note(i8*, ...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @EC_GROUP_new(i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_hex2bn(i32**, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_generator(i32*, i32*, i32*, i32) #1

declare dso_local i32 @EC_GROUP_get_degree(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_cmp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_dbl(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @EC_GROUP_have_precompute_mult(i32*) #1

declare dso_local i32 @EC_GROUP_precompute_mult(i32*, i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32 @EC_POINT_invert(i32*, i32*, i32*) #1

declare dso_local i32 @group_order_tests(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
