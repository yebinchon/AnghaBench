; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_group_order_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_group_order_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"allowing precomputation\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"without precomputation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @group_order_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_order_tests(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32*], align 16
  %15 = alloca [6 x i32*], align 16
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %3, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %4, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %5, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = call i32* (...) @BN_CTX_new()
  store i32* %28, i32** %11, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @EC_GROUP_get0_generator(i32* %32)
  store i32* %33, i32** %10, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32* @EC_POINT_new(i32* %37)
  store i32* %38, i32** %6, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = call i32* @EC_POINT_new(i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = call i32 @TEST_ptr(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = call i32* @EC_POINT_new(i32* %47)
  store i32* %48, i32** %8, align 8
  %49 = call i32 @TEST_ptr(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32* @EC_POINT_new(i32* %52)
  store i32* %53, i32** %9, align 8
  %54 = call i32 @TEST_ptr(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %46, %41, %36, %31, %27, %23, %19, %1
  br label %375

57:                                               ; preds = %51
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @EC_GROUP_get_order(i32* %58, i32* %59, i32* %60)
  %62 = call i32 @TEST_true(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %155

64:                                               ; preds = %57
  %65 = load i32*, i32** %2, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @EC_POINT_mul(i32* %65, i32* %66, i32* %67, i32* null, i32* null, i32* %68)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %155

72:                                               ; preds = %64
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @EC_POINT_is_at_infinity(i32* %73, i32* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %155

78:                                               ; preds = %72
  %79 = load i32*, i32** %2, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @EC_GROUP_precompute_mult(i32* %79, i32* %80)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %78
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @EC_POINT_mul(i32* %85, i32* %86, i32* %87, i32* null, i32* null, i32* %88)
  %90 = call i32 @TEST_true(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %155

92:                                               ; preds = %84
  %93 = load i32*, i32** %2, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @EC_POINT_is_at_infinity(i32* %93, i32* %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %92
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @EC_POINT_copy(i32* %99, i32* %100)
  %102 = call i32 @TEST_true(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %98
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @BN_one(i32* %105)
  %107 = call i32 @TEST_true(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %155

109:                                              ; preds = %104
  %110 = load i32*, i32** %2, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @EC_POINT_mul(i32* %110, i32* %111, i32* %112, i32* null, i32* null, i32* %113)
  %115 = call i32 @TEST_true(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %109
  %118 = load i32*, i32** %2, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @EC_POINT_cmp(i32* %118, i32* %119, i32* %120, i32* %121)
  %123 = call i32 @TEST_int_eq(i32 0, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %117
  %126 = load i32*, i32** %3, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @BN_sub(i32* %126, i32* %127, i32* %128)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %125
  %133 = load i32*, i32** %2, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %3, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @EC_POINT_mul(i32* %133, i32* %134, i32* %135, i32* null, i32* null, i32* %136)
  %138 = call i32 @TEST_true(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load i32*, i32** %2, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @EC_POINT_invert(i32* %141, i32* %142, i32* %143)
  %145 = call i32 @TEST_true(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load i32*, i32** %2, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @EC_POINT_cmp(i32* %148, i32* %149, i32* %150, i32* %151)
  %153 = call i32 @TEST_int_eq(i32 0, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147, %140, %132, %125, %117, %109, %104, %98, %92, %84, %78, %72, %64, %57
  br label %375

156:                                              ; preds = %147
  store i32 1, i32* %12, align 4
  br label %157

157:                                              ; preds = %371, %156
  %158 = load i32, i32* %12, align 4
  %159 = icmp sle i32 %158, 2
  br i1 %159, label %160, label %374

160:                                              ; preds = %157
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @BN_set_word(i32* %161, i32 %162)
  %164 = call i32 @TEST_true(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %263

166:                                              ; preds = %160
  %167 = load i32*, i32** %2, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @EC_POINT_mul(i32* %167, i32* %168, i32* %169, i32* null, i32* null, i32* %170)
  %172 = call i32 @TEST_true(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %263

174:                                              ; preds = %166
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load i32*, i32** %2, align 8
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @EC_POINT_cmp(i32* %178, i32* %179, i32* %180, i32* %181)
  %183 = call i32 @TEST_int_eq(i32 0, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %263

185:                                              ; preds = %177, %174
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @BN_one(i32* %186)
  %188 = call i32 @TEST_true(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %263

190:                                              ; preds = %185
  %191 = load i32*, i32** %3, align 8
  %192 = load i32*, i32** %3, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @BN_sub(i32* %191, i32* %192, i32* %193)
  %195 = call i32 @TEST_true(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %263

197:                                              ; preds = %190
  %198 = load i32*, i32** %2, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %3, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = call i32 @EC_POINT_mul(i32* %198, i32* %199, i32* null, i32* %200, i32* %201, i32* %202)
  %204 = call i32 @TEST_true(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %263

206:                                              ; preds = %197
  %207 = load i32*, i32** %2, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = call i32 @EC_POINT_cmp(i32* %207, i32* %208, i32* %209, i32* %210)
  %212 = call i32 @TEST_int_eq(i32 0, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %263

214:                                              ; preds = %206
  %215 = load i32*, i32** %4, align 8
  %216 = load i32*, i32** %5, align 8
  %217 = call i32* (...) @BN_value_one()
  %218 = call i32 @BN_add(i32* %215, i32* %216, i32* %217)
  %219 = call i32 @TEST_true(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %263

221:                                              ; preds = %214
  %222 = load i32*, i32** %2, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %4, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @EC_POINT_mul(i32* %222, i32* %223, i32* null, i32* %224, i32* %225, i32* %226)
  %228 = call i32 @TEST_true(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %263

230:                                              ; preds = %221
  %231 = load i32*, i32** %2, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @EC_POINT_cmp(i32* %231, i32* %232, i32* %233, i32* %234)
  %236 = call i32 @TEST_int_eq(i32 0, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %263

238:                                              ; preds = %230
  %239 = load i32*, i32** %4, align 8
  %240 = load i32*, i32** %3, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = load i32*, i32** %11, align 8
  %243 = call i32 @BN_mul(i32* %239, i32* %240, i32* %241, i32* %242)
  %244 = call i32 @TEST_true(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %238
  %247 = load i32*, i32** %2, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @EC_POINT_mul(i32* %247, i32* %248, i32* null, i32* %249, i32* %250, i32* %251)
  %253 = call i32 @TEST_true(i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %246
  %256 = load i32*, i32** %2, align 8
  %257 = load i32*, i32** %7, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @EC_POINT_cmp(i32* %256, i32* %257, i32* %258, i32* %259)
  %261 = call i32 @TEST_int_eq(i32 0, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %255, %246, %238, %230, %221, %214, %206, %197, %190, %185, %177, %166, %160
  br label %375

264:                                              ; preds = %255
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @BN_set_negative(i32* %265, i32 0)
  %267 = load i32*, i32** %2, align 8
  %268 = load i32*, i32** %7, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = load i32*, i32** %4, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 @EC_POINT_mul(i32* %267, i32* %268, i32* null, i32* %269, i32* %270, i32* %271)
  %273 = call i32 @TEST_true(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %296

275:                                              ; preds = %264
  %276 = load i32*, i32** %2, align 8
  %277 = load i32*, i32** %7, align 8
  %278 = load i32*, i32** %7, align 8
  %279 = load i32*, i32** %6, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = call i32 @EC_POINT_add(i32* %276, i32* %277, i32* %278, i32* %279, i32* %280)
  %282 = call i32 @TEST_true(i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %275
  %285 = load i32*, i32** %2, align 8
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @EC_POINT_is_at_infinity(i32* %285, i32* %286)
  %288 = call i32 @TEST_true(i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %284
  %291 = load i32*, i32** %2, align 8
  %292 = load i32*, i32** %6, align 8
  %293 = call i32 @EC_POINT_is_at_infinity(i32* %291, i32* %292)
  %294 = call i32 @TEST_false(i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %290, %284, %275, %264
  br label %375

297:                                              ; preds = %290
  %298 = call i32* (...) @BN_value_one()
  %299 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 1
  store i32* %298, i32** %299, align 8
  %300 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  store i32* %298, i32** %300, align 16
  %301 = load i32*, i32** %6, align 8
  %302 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 1
  store i32* %301, i32** %302, align 8
  %303 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 0
  store i32* %301, i32** %303, align 16
  %304 = load i32*, i32** %2, align 8
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 0
  %307 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  %308 = load i32*, i32** %11, align 8
  %309 = call i32 @EC_POINTs_mul(i32* %304, i32* %305, i32* null, i32 2, i32** %306, i32** %307, i32* %308)
  %310 = call i32 @TEST_true(i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %329

312:                                              ; preds = %297
  %313 = load i32*, i32** %2, align 8
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 0
  %316 = load i32*, i32** %315, align 16
  %317 = load i32*, i32** %11, align 8
  %318 = call i32 @EC_POINT_dbl(i32* %313, i32* %314, i32* %316, i32* %317)
  %319 = call i32 @TEST_true(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %312
  %322 = load i32*, i32** %2, align 8
  %323 = load i32*, i32** %8, align 8
  %324 = load i32*, i32** %9, align 8
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 @EC_POINT_cmp(i32* %322, i32* %323, i32* %324, i32* %325)
  %327 = call i32 @TEST_int_eq(i32 0, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %321, %312, %297
  br label %375

330:                                              ; preds = %321
  %331 = load i32*, i32** %3, align 8
  %332 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  store i32* %331, i32** %332, align 16
  %333 = load i32*, i32** %7, align 8
  %334 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 0
  store i32* %333, i32** %334, align 16
  %335 = load i32*, i32** %4, align 8
  %336 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 1
  store i32* %335, i32** %336, align 8
  %337 = load i32*, i32** %6, align 8
  %338 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 1
  store i32* %337, i32** %338, align 8
  %339 = load i32*, i32** %3, align 8
  %340 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 2
  store i32* %339, i32** %340, align 16
  %341 = load i32*, i32** %7, align 8
  %342 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 2
  store i32* %341, i32** %342, align 16
  %343 = load i32*, i32** %4, align 8
  %344 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 3
  store i32* %343, i32** %344, align 8
  %345 = load i32*, i32** %7, align 8
  %346 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 3
  store i32* %345, i32** %346, align 8
  %347 = load i32*, i32** %3, align 8
  %348 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 4
  store i32* %347, i32** %348, align 16
  %349 = load i32*, i32** %6, align 8
  %350 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 4
  store i32* %349, i32** %350, align 16
  %351 = load i32*, i32** %4, align 8
  %352 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 5
  store i32* %351, i32** %352, align 8
  %353 = load i32*, i32** %7, align 8
  %354 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 5
  store i32* %353, i32** %354, align 8
  %355 = load i32*, i32** %2, align 8
  %356 = load i32*, i32** %6, align 8
  %357 = getelementptr inbounds [6 x i32*], [6 x i32*]* %15, i64 0, i64 0
  %358 = getelementptr inbounds [6 x i32*], [6 x i32*]* %14, i64 0, i64 0
  %359 = load i32*, i32** %11, align 8
  %360 = call i32 @EC_POINTs_mul(i32* %355, i32* %356, i32* null, i32 6, i32** %357, i32** %358, i32* %359)
  %361 = call i32 @TEST_true(i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %330
  %364 = load i32*, i32** %2, align 8
  %365 = load i32*, i32** %6, align 8
  %366 = call i32 @EC_POINT_is_at_infinity(i32* %364, i32* %365)
  %367 = call i32 @TEST_true(i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %363, %330
  br label %375

370:                                              ; preds = %363
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %12, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %12, align 4
  br label %157

374:                                              ; preds = %157
  store i32 1, i32* %13, align 4
  br label %375

375:                                              ; preds = %374, %369, %329, %296, %263, %155, %56
  %376 = load i32, i32* %13, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %375
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %378
  %382 = load i32, i32* %12, align 4
  %383 = icmp eq i32 %382, 1
  %384 = zext i1 %383 to i64
  %385 = select i1 %383, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)
  %386 = call i32 @TEST_info(i8* %385)
  br label %387

387:                                              ; preds = %381, %378, %375
  %388 = load i32*, i32** %6, align 8
  %389 = call i32 @EC_POINT_free(i32* %388)
  %390 = load i32*, i32** %7, align 8
  %391 = call i32 @EC_POINT_free(i32* %390)
  %392 = load i32*, i32** %8, align 8
  %393 = call i32 @EC_POINT_free(i32* %392)
  %394 = load i32*, i32** %9, align 8
  %395 = call i32 @EC_POINT_free(i32* %394)
  %396 = load i32*, i32** %3, align 8
  %397 = call i32 @BN_free(i32* %396)
  %398 = load i32*, i32** %4, align 8
  %399 = call i32 @BN_free(i32* %398)
  %400 = load i32*, i32** %5, align 8
  %401 = call i32 @BN_free(i32* %400)
  %402 = load i32*, i32** %11, align 8
  %403 = call i32 @BN_CTX_free(i32* %402)
  %404 = load i32, i32* %13, align 4
  ret i32 %404
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EC_GROUP_get_order(i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_is_at_infinity(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_precompute_mult(i32*, i32*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EC_POINT_cmp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_invert(i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @EC_POINTs_mul(i32*, i32*, i32*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @EC_POINT_dbl(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
