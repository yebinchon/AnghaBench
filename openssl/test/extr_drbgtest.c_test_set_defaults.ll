; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_set_defaults.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@RAND_DRBG_TYPE = common dso_local global i32 0, align 4
@RAND_DRBG_FLAGS = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_MASTER = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_PUBLIC = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_PRIVATE = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_HMAC = common dso_local global i32 0, align 4
@NID_sha1 = common dso_local global i32 0, align 4
@NID_aes_256_ctr = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_CTR_NO_DF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_set_defaults() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %4 = call %struct.TYPE_7__* (...) @RAND_DRBG_get0_master()
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %1, align 8
  %5 = call i64 @TEST_ptr(%struct.TYPE_7__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %316

7:                                                ; preds = %0
  %8 = call %struct.TYPE_7__* (...) @RAND_DRBG_get0_public()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %2, align 8
  %9 = call i64 @TEST_ptr(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %316

11:                                               ; preds = %7
  %12 = call %struct.TYPE_7__* (...) @RAND_DRBG_get0_private()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  %13 = call i64 @TEST_ptr(%struct.TYPE_7__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %316

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %20 = call i64 @TEST_int_eq(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %316

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %27 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @TEST_int_eq(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %316

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %36 = call i64 @TEST_int_eq(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %316

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %43 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @TEST_int_eq(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %316

47:                                               ; preds = %38
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %52 = call i64 @TEST_int_eq(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %316

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %59 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @TEST_int_eq(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %316

63:                                               ; preds = %54
  %64 = load i32, i32* @NID_sha256, align 4
  %65 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %66 = call i32 @RAND_DRBG_set_defaults(i32 %64, i32 %65)
  %67 = call i64 @TEST_true(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %316

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %71 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %70)
  %72 = call i64 @TEST_true(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %316

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NID_sha256, align 4
  %79 = call i64 @TEST_int_eq(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %316

81:                                               ; preds = %74
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %86 = call i64 @TEST_int_eq(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %316

88:                                               ; preds = %81
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %93 = call i64 @TEST_int_eq(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %316

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %100 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %101 = or i32 %99, %100
  %102 = call i64 @TEST_int_eq(i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %316

104:                                              ; preds = %95
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %109 = call i64 @TEST_int_eq(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %316

111:                                              ; preds = %104
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %116 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %117 = or i32 %115, %116
  %118 = call i64 @TEST_int_eq(i32 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %316

120:                                              ; preds = %111
  %121 = load i32, i32* @NID_sha256, align 4
  %122 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %123 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @RAND_DRBG_set_defaults(i32 %121, i32 %124)
  %126 = call i64 @TEST_true(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %316

128:                                              ; preds = %120
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %129)
  %131 = call i64 @TEST_true(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %316

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NID_sha256, align 4
  %138 = call i64 @TEST_int_eq(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %316

140:                                              ; preds = %133
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %145 = call i64 @TEST_int_eq(i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %316

147:                                              ; preds = %140
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %152 = call i64 @TEST_int_eq(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %316

154:                                              ; preds = %147
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %159 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %160 = or i32 %158, %159
  %161 = call i64 @TEST_int_eq(i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %316

163:                                              ; preds = %154
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NID_sha256, align 4
  %168 = call i64 @TEST_int_eq(i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %316

170:                                              ; preds = %163
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %175 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %176 = or i32 %174, %175
  %177 = call i64 @TEST_int_eq(i32 %173, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %316

179:                                              ; preds = %170
  %180 = load i32, i32* @NID_sha1, align 4
  %181 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %182 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @RAND_DRBG_set_defaults(i32 %180, i32 %183)
  %185 = call i64 @TEST_true(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %316

187:                                              ; preds = %179
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %188)
  %190 = call i64 @TEST_true(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %316

192:                                              ; preds = %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @NID_sha256, align 4
  %197 = call i64 @TEST_int_eq(i32 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %316

199:                                              ; preds = %192
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %204 = call i64 @TEST_int_eq(i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %316

206:                                              ; preds = %199
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @NID_sha1, align 4
  %211 = call i64 @TEST_int_eq(i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %316

213:                                              ; preds = %206
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %218 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %219 = or i32 %217, %218
  %220 = call i64 @TEST_int_eq(i32 %216, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %316

222:                                              ; preds = %213
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @NID_sha256, align 4
  %227 = call i64 @TEST_int_eq(i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %316

229:                                              ; preds = %222
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %234 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %235 = or i32 %233, %234
  %236 = call i64 @TEST_int_eq(i32 %232, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %316

238:                                              ; preds = %229
  %239 = load i32, i32* @NID_sha256, align 4
  %240 = call i32 @RAND_DRBG_set_defaults(i32 %239, i32 0)
  %241 = call i64 @TEST_true(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %316

243:                                              ; preds = %238
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %245 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %244)
  %246 = call i64 @TEST_true(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %316

248:                                              ; preds = %243
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @NID_sha256, align 4
  %253 = call i64 @TEST_int_eq(i32 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %316

255:                                              ; preds = %248
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %260 = call i64 @TEST_int_eq(i32 %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %316

262:                                              ; preds = %255
  %263 = load i32, i32* @NID_aes_256_ctr, align 4
  %264 = load i32, i32* @RAND_DRBG_FLAG_CTR_NO_DF, align 4
  %265 = call i32 @RAND_DRBG_set_defaults(i32 %263, i32 %264)
  %266 = call i64 @TEST_true(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %316

268:                                              ; preds = %262
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %270 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %269)
  %271 = call i64 @TEST_true(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %316

273:                                              ; preds = %268
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @NID_aes_256_ctr, align 4
  %278 = call i64 @TEST_int_eq(i32 %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %316

280:                                              ; preds = %273
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %285 = load i32, i32* @RAND_DRBG_FLAG_CTR_NO_DF, align 4
  %286 = or i32 %284, %285
  %287 = call i64 @TEST_int_eq(i32 %283, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %316

289:                                              ; preds = %280
  %290 = load i32, i32* @RAND_DRBG_TYPE, align 4
  %291 = load i32, i32* @RAND_DRBG_FLAGS, align 4
  %292 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %297 = or i32 %295, %296
  %298 = call i32 @RAND_DRBG_set_defaults(i32 %290, i32 %297)
  %299 = call i64 @TEST_true(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %316

301:                                              ; preds = %289
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %303 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %302)
  %304 = call i64 @TEST_true(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %301
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %308 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %307)
  %309 = call i64 @TEST_true(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %313 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %312)
  %314 = call i64 @TEST_true(i32 %313)
  %315 = icmp ne i64 %314, 0
  br label %316

316:                                              ; preds = %311, %306, %301, %289, %280, %273, %268, %262, %255, %248, %243, %238, %229, %222, %213, %206, %199, %192, %187, %179, %170, %163, %154, %147, %140, %133, %128, %120, %111, %104, %95, %88, %81, %74, %69, %63, %54, %47, %38, %31, %22, %15, %11, %7, %0
  %317 = phi i1 [ false, %306 ], [ false, %301 ], [ false, %289 ], [ false, %280 ], [ false, %273 ], [ false, %268 ], [ false, %262 ], [ false, %255 ], [ false, %248 ], [ false, %243 ], [ false, %238 ], [ false, %229 ], [ false, %222 ], [ false, %213 ], [ false, %206 ], [ false, %199 ], [ false, %192 ], [ false, %187 ], [ false, %179 ], [ false, %170 ], [ false, %163 ], [ false, %154 ], [ false, %147 ], [ false, %140 ], [ false, %133 ], [ false, %128 ], [ false, %120 ], [ false, %111 ], [ false, %104 ], [ false, %95 ], [ false, %88 ], [ false, %81 ], [ false, %74 ], [ false, %69 ], [ false, %63 ], [ false, %54 ], [ false, %47 ], [ false, %38 ], [ false, %31 ], [ false, %22 ], [ false, %15 ], [ false, %11 ], [ false, %7 ], [ false, %0 ], [ %315, %311 ]
  %318 = zext i1 %317 to i32
  ret i32 %318
}

declare dso_local i64 @TEST_ptr(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @RAND_DRBG_get0_master(...) #1

declare dso_local %struct.TYPE_7__* @RAND_DRBG_get0_public(...) #1

declare dso_local %struct.TYPE_7__* @RAND_DRBG_get0_private(...) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @RAND_DRBG_set_defaults(i32, i32) #1

declare dso_local i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
