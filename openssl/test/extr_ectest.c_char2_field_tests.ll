; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_char2_field_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_char2_field_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Curve defined by Weierstrass equation\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"     y^2 + x*y = x^3 + a*x^2 + b (mod p)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Point is not on curve\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"A cyclic subgroup:\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"     point at infinity\00", align 1
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"Generator as octet string, uncompressed form:\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @char2_field_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char2_field_tests() #0 {
  %1 = alloca i32*, align 8
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
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
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
  store i32 0, i32* %18, align 4
  %19 = call i32* (...) @BN_CTX_new()
  store i32* %19, i32** %1, align 8
  %20 = call i32 @TEST_ptr(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %0
  %23 = call i32* (...) @BN_new()
  store i32* %23, i32** %2, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = call i32* (...) @BN_new()
  store i32* %27, i32** %3, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = call i32* (...) @BN_new()
  store i32* %31, i32** %4, align 8
  %32 = call i32 @TEST_ptr(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i64 @BN_hex2bn(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @TEST_true(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = call i64 @BN_hex2bn(i32** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @TEST_true(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i64 @BN_hex2bn(i32** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @TEST_true(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %38, %34, %30, %26, %22, %0
  br label %317

47:                                               ; preds = %42
  %48 = call i32 (...) @EC_GF2m_simple_method()
  %49 = call i32* @EC_GROUP_new(i32 %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @TEST_ptr(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %1, align 8
  %59 = call i64 @EC_GROUP_set_curve(i32* %54, i32* %55, i32* %56, i32* %57, i32* %58)
  %60 = call i32 @TEST_true(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @EC_GROUP_method_of(i32* %63)
  %65 = call i32* @EC_GROUP_new(i32 %64)
  store i32* %65, i32** %6, align 8
  %66 = call i32 @TEST_ptr(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @EC_GROUP_copy(i32* %69, i32* %70)
  %72 = call i32 @TEST_true(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %62, %53, %47
  br label %317

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @EC_GROUP_free(i32* %76)
  %78 = load i32*, i32** %6, align 8
  store i32* %78, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = call i64 @EC_GROUP_get_curve(i32* %79, i32* %80, i32* %81, i32* %82, i32* %83)
  %85 = call i32 @TEST_true(i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  br label %317

88:                                               ; preds = %75
  %89 = call i32 @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @TEST_note(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32* @EC_POINT_new(i32* %97)
  store i32* %98, i32** %7, align 8
  %99 = call i32 @TEST_ptr(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %88
  %102 = load i32*, i32** %5, align 8
  %103 = call i32* @EC_POINT_new(i32* %102)
  store i32* %103, i32** %8, align 8
  %104 = call i32 @TEST_ptr(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @EC_POINT_new(i32* %107)
  store i32* %108, i32** %9, align 8
  %109 = call i32 @TEST_ptr(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i64 @EC_POINT_set_to_infinity(i32* %112, i32* %113)
  %115 = call i32 @TEST_true(i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i64 @EC_POINT_is_at_infinity(i32* %118, i32* %119)
  %121 = call i32 @TEST_true(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117, %111, %106, %101, %88
  br label %317

124:                                              ; preds = %117
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %125, align 16
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %129 = load i32*, i32** %1, align 8
  %130 = call i64 @EC_POINT_oct2point(i32* %126, i32* %127, i8* %128, i64 1, i32* %129)
  %131 = call i32 @TEST_true(i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %185

133:                                              ; preds = %124
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %1, align 8
  %139 = call i64 @EC_POINT_add(i32* %134, i32* %135, i32* %136, i32* %137, i32* %138)
  %140 = call i32 @TEST_true(i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %185

142:                                              ; preds = %133
  %143 = load i32*, i32** %5, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i64 @EC_POINT_is_at_infinity(i32* %143, i32* %144)
  %146 = call i32 @TEST_true(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %142
  %149 = call i32* (...) @BN_new()
  store i32* %149, i32** %10, align 8
  %150 = call i32 @TEST_ptr(i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = call i32* (...) @BN_new()
  store i32* %153, i32** %11, align 8
  %154 = call i32 @TEST_ptr(i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %152
  %157 = call i32* (...) @BN_new()
  store i32* %157, i32** %12, align 8
  %158 = call i32 @TEST_ptr(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %156
  %161 = call i32* (...) @BN_new()
  store i32* %161, i32** %13, align 8
  %162 = call i32 @TEST_ptr(i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = call i32* (...) @BN_new()
  store i32* %165, i32** %14, align 8
  %166 = call i32 @TEST_ptr(i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %164
  %169 = call i64 @BN_hex2bn(i32** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %170 = call i32 @TEST_true(i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = call i64 @BN_hex2bn(i32** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %174 = call i32 @TEST_true(i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32*, i32** %5, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %1, align 8
  %182 = call i64 @EC_POINT_set_affine_coordinates(i32* %177, i32* %178, i32* %179, i32* %180, i32* %181)
  %183 = call i32 @TEST_true(i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %176, %172, %168, %164, %160, %156, %152, %148, %142, %133, %124
  br label %317

186:                                              ; preds = %176
  %187 = load i32*, i32** %5, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = load i32*, i32** %1, align 8
  %190 = call i32 @EC_POINT_is_on_curve(i32* %187, i32* %188, i32* %189)
  %191 = call i32 @TEST_int_gt(i32 %190, i32 0)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %186
  %194 = call i32 @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* %195)
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* %197)
  br label %317

199:                                              ; preds = %186
  %200 = call i32 @TEST_note(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  store i32 100, i32* %17, align 4
  br label %201

201:                                              ; preds = %246, %199
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %17, align 4
  %204 = call i32 @TEST_int_ne(i32 %202, i32 0)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  br label %317

207:                                              ; preds = %201
  %208 = load i32*, i32** %5, align 8
  %209 = load i32*, i32** %7, align 8
  %210 = call i64 @EC_POINT_is_at_infinity(i32* %208, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = call i32 @TEST_note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %229

214:                                              ; preds = %207
  %215 = load i32*, i32** %5, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i32*, i32** %11, align 8
  %219 = load i32*, i32** %1, align 8
  %220 = call i64 @EC_POINT_get_affine_coordinates(i32* %215, i32* %216, i32* %217, i32* %218, i32* %219)
  %221 = call i32 @TEST_true(i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %214
  br label %317

224:                                              ; preds = %214
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* %225)
  %227 = load i32*, i32** %11, align 8
  %228 = call i32 @test_output_bignum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* %227)
  br label %229

229:                                              ; preds = %224, %212
  %230 = load i32*, i32** %9, align 8
  %231 = load i32*, i32** %7, align 8
  %232 = call i64 @EC_POINT_copy(i32* %230, i32* %231)
  %233 = call i32 @TEST_true(i64 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load i32*, i32** %5, align 8
  %237 = load i32*, i32** %7, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = load i32*, i32** %8, align 8
  %240 = load i32*, i32** %1, align 8
  %241 = call i64 @EC_POINT_add(i32* %236, i32* %237, i32* %238, i32* %239, i32* %240)
  %242 = call i32 @TEST_true(i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %235, %229
  br label %317

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245
  %247 = load i32*, i32** %5, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = call i64 @EC_POINT_is_at_infinity(i32* %247, i32* %248)
  %250 = icmp ne i64 %249, 0
  %251 = xor i1 %250, true
  br i1 %251, label %201, label %252

252:                                              ; preds = %246
  %253 = load i32*, i32** %5, align 8
  %254 = load i32*, i32** %7, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i32*, i32** %1, align 8
  %258 = call i64 @EC_POINT_add(i32* %253, i32* %254, i32* %255, i32* %256, i32* %257)
  %259 = call i32 @TEST_true(i64 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %252
  %262 = load i32*, i32** %5, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = call i64 @EC_POINT_is_at_infinity(i32* %262, i32* %263)
  %265 = call i32 @TEST_true(i64 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %261, %252
  br label %317

268:                                              ; preds = %261
  %269 = load i32*, i32** %5, align 8
  %270 = load i32*, i32** %8, align 8
  %271 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %272 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %273 = load i32*, i32** %1, align 8
  %274 = call i64 @EC_POINT_point2oct(i32* %269, i32* %270, i32 %271, i8* %272, i32 100, i32* %273)
  store i64 %274, i64* %16, align 8
  %275 = load i64, i64* %16, align 8
  %276 = call i32 @TEST_size_t_ne(i64 %275, i32 0)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %268
  %279 = load i32*, i32** %5, align 8
  %280 = load i32*, i32** %7, align 8
  %281 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %282 = load i64, i64* %16, align 8
  %283 = load i32*, i32** %1, align 8
  %284 = call i64 @EC_POINT_oct2point(i32* %279, i32* %280, i8* %281, i64 %282, i32* %283)
  %285 = call i32 @TEST_true(i64 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %278
  %288 = load i32*, i32** %5, align 8
  %289 = load i32*, i32** %7, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = load i32*, i32** %1, align 8
  %292 = call i32 @EC_POINT_cmp(i32* %288, i32* %289, i32* %290, i32* %291)
  %293 = call i32 @TEST_int_eq(i32 0, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %287, %278, %268
  br label %317

296:                                              ; preds = %287
  %297 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %298 = load i64, i64* %16, align 8
  %299 = call i32 @test_output_memory(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8* %297, i64 %298)
  %300 = load i32*, i32** %5, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = load i32*, i32** %1, align 8
  %303 = call i64 @EC_POINT_invert(i32* %300, i32* %301, i32* %302)
  %304 = call i32 @TEST_true(i64 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %296
  %307 = load i32*, i32** %5, align 8
  %308 = load i32*, i32** %7, align 8
  %309 = load i32*, i32** %9, align 8
  %310 = load i32*, i32** %1, align 8
  %311 = call i32 @EC_POINT_cmp(i32* %307, i32* %308, i32* %309, i32* %310)
  %312 = call i32 @TEST_int_eq(i32 0, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %306, %296
  br label %317

315:                                              ; preds = %306
  %316 = call i32 @TEST_note(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %317

317:                                              ; preds = %315, %314, %295, %267, %244, %223, %206, %193, %185, %123, %87, %74, %46
  %318 = load i32*, i32** %1, align 8
  %319 = call i32 @BN_CTX_free(i32* %318)
  %320 = load i32*, i32** %2, align 8
  %321 = call i32 @BN_free(i32* %320)
  %322 = load i32*, i32** %3, align 8
  %323 = call i32 @BN_free(i32* %322)
  %324 = load i32*, i32** %4, align 8
  %325 = call i32 @BN_free(i32* %324)
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 @EC_GROUP_free(i32* %326)
  %328 = load i32*, i32** %6, align 8
  %329 = call i32 @EC_GROUP_free(i32* %328)
  %330 = load i32*, i32** %7, align 8
  %331 = call i32 @EC_POINT_free(i32* %330)
  %332 = load i32*, i32** %8, align 8
  %333 = call i32 @EC_POINT_free(i32* %332)
  %334 = load i32*, i32** %9, align 8
  %335 = call i32 @EC_POINT_free(i32* %334)
  %336 = load i32*, i32** %10, align 8
  %337 = call i32 @BN_free(i32* %336)
  %338 = load i32*, i32** %11, align 8
  %339 = call i32 @BN_free(i32* %338)
  %340 = load i32*, i32** %12, align 8
  %341 = call i32 @BN_free(i32* %340)
  %342 = load i32*, i32** %13, align 8
  %343 = call i32 @BN_free(i32* %342)
  %344 = load i32*, i32** %14, align 8
  %345 = call i32 @BN_free(i32* %344)
  %346 = load i32, i32* %18, align 4
  ret i32 %346
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i64) #1

declare dso_local i64 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32* @EC_GROUP_new(i32) #1

declare dso_local i32 @EC_GF2m_simple_method(...) #1

declare dso_local i64 @EC_GROUP_set_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i64 @EC_GROUP_copy(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i64 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @TEST_note(i8*) #1

declare dso_local i32 @test_output_bignum(i8*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i64 @EC_POINT_set_to_infinity(i32*, i32*) #1

declare dso_local i64 @EC_POINT_is_at_infinity(i32*, i32*) #1

declare dso_local i64 @EC_POINT_oct2point(i32*, i32*, i8*, i64, i32*) #1

declare dso_local i64 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @EC_POINT_is_on_curve(i32*, i32*, i32*) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i64 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i64 @EC_POINT_point2oct(i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @TEST_size_t_ne(i64, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EC_POINT_cmp(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @test_output_memory(i8*, i8*, i64) #1

declare dso_local i64 @EC_POINT_invert(i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
