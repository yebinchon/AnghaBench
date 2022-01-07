; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_crt_components.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_crt_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_check_crt_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_check_crt_components() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store i32 15, i32* %1, align 4
  store i32 17, i32* %2, align 4
  store i32 5, i32* %3, align 4
  store i32 255, i32* %4, align 4
  store i32 3, i32* %5, align 4
  store i32 13, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  %14 = call %struct.TYPE_21__* (...) @RSA_new()
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %9, align 8
  %15 = call i64 @TEST_ptr(%struct.TYPE_21__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %0
  %18 = call %struct.TYPE_21__* (...) @BN_CTX_new()
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %10, align 8
  %19 = call i64 @TEST_ptr(%struct.TYPE_21__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = call %struct.TYPE_21__* (...) @BN_new()
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %11, align 8
  %23 = call i64 @TEST_ptr(%struct.TYPE_21__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = call %struct.TYPE_21__* (...) @BN_new()
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %12, align 8
  %27 = call i64 @TEST_ptr(%struct.TYPE_21__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = call %struct.TYPE_21__* (...) @BN_new()
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %13, align 8
  %31 = call i64 @TEST_ptr(%struct.TYPE_21__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = call i32 @BN_set_word(%struct.TYPE_21__* %34, i32 15)
  %36 = call i64 @TEST_true(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = call i32 @BN_set_word(%struct.TYPE_21__* %39, i32 17)
  %41 = call i64 @TEST_true(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %45 = call i32 @BN_set_word(%struct.TYPE_21__* %44, i32 5)
  %46 = call i64 @TEST_true(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %52 = call i32 @RSA_set0_factors(%struct.TYPE_21__* %49, %struct.TYPE_21__* %50, %struct.TYPE_21__* %51)
  %53 = call i64 @TEST_true(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %43, %38, %33, %29, %25, %21, %17, %0
  %56 = phi i1 [ false, %43 ], [ false, %38 ], [ false, %33 ], [ false, %29 ], [ false, %25 ], [ false, %21 ], [ false, %17 ], [ false, %0 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %62 = call i32 @BN_free(%struct.TYPE_21__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = call i32 @BN_free(%struct.TYPE_21__* %63)
  br label %270

65:                                               ; preds = %55
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = call i32 @rsa_sp800_56b_derive_params_from_pq(%struct.TYPE_21__* %66, i32 8, %struct.TYPE_21__* %67, %struct.TYPE_21__* %68)
  %70 = call i64 @TEST_true(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %267

72:                                               ; preds = %65
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = call i64 @TEST_BN_eq_word(%struct.TYPE_21__* %75, i32 255)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %267

78:                                               ; preds = %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  %82 = call i64 @TEST_BN_eq_word(%struct.TYPE_21__* %81, i32 3)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %267

84:                                               ; preds = %78
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = call i64 @TEST_BN_eq_word(%struct.TYPE_21__* %87, i32 13)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %267

90:                                               ; preds = %84
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = call i64 @TEST_BN_eq_word(%struct.TYPE_21__* %93, i32 8)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %267

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %99 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %97, %struct.TYPE_21__* %98)
  %100 = call i64 @TEST_true(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %267

102:                                              ; preds = %96
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = call i32 @BN_set_word(%struct.TYPE_21__* %105, i32 1)
  %107 = call i64 @TEST_true(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %267

109:                                              ; preds = %102
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %112 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %110, %struct.TYPE_21__* %111)
  %113 = call i64 @TEST_false(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %267

115:                                              ; preds = %109
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = call i32 @BN_set_word(%struct.TYPE_21__* %118, i32 14)
  %120 = call i64 @TEST_true(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %267

122:                                              ; preds = %115
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %123, %struct.TYPE_21__* %124)
  %126 = call i64 @TEST_false(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %267

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = call i32 @BN_set_word(%struct.TYPE_21__* %131, i32 3)
  %133 = call i64 @TEST_true(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %267

135:                                              ; preds = %128
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = call i32 @BN_set_word(%struct.TYPE_21__* %138, i32 1)
  %140 = call i64 @TEST_true(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %267

142:                                              ; preds = %135
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %145 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %143, %struct.TYPE_21__* %144)
  %146 = call i64 @TEST_false(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %267

148:                                              ; preds = %142
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = call i32 @BN_set_word(%struct.TYPE_21__* %151, i32 16)
  %153 = call i64 @TEST_true(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %267

155:                                              ; preds = %148
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %158 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %156, %struct.TYPE_21__* %157)
  %159 = call i64 @TEST_false(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %267

161:                                              ; preds = %155
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = call i32 @BN_set_word(%struct.TYPE_21__* %164, i32 13)
  %166 = call i64 @TEST_true(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %267

168:                                              ; preds = %161
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = call i32 @BN_set_word(%struct.TYPE_21__* %171, i32 1)
  %173 = call i64 @TEST_true(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %267

175:                                              ; preds = %168
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %178 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %176, %struct.TYPE_21__* %177)
  %179 = call i64 @TEST_false(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %267

181:                                              ; preds = %175
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = call i32 @BN_set_word(%struct.TYPE_21__* %184, i32 15)
  %186 = call i64 @TEST_true(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %267

188:                                              ; preds = %181
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %191 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %189, %struct.TYPE_21__* %190)
  %192 = call i64 @TEST_false(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %267

194:                                              ; preds = %188
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = call i32 @BN_set_word(%struct.TYPE_21__* %197, i32 8)
  %199 = call i64 @TEST_true(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %267

201:                                              ; preds = %194
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = call i32 @BN_set_word(%struct.TYPE_21__* %204, i32 4)
  %206 = call i64 @TEST_true(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %267

208:                                              ; preds = %201
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %211 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %209, %struct.TYPE_21__* %210)
  %212 = call i64 @TEST_false(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %267

214:                                              ; preds = %208
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = call i32 @BN_set_word(%struct.TYPE_21__* %217, i32 3)
  %219 = call i64 @TEST_true(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %267

221:                                              ; preds = %214
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = call i32 @BN_set_word(%struct.TYPE_21__* %224, i32 12)
  %226 = call i64 @TEST_true(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %267

228:                                              ; preds = %221
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %231 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %229, %struct.TYPE_21__* %230)
  %232 = call i64 @TEST_false(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %267

234:                                              ; preds = %228
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = call i32 @BN_set_word(%struct.TYPE_21__* %237, i32 13)
  %239 = call i64 @TEST_true(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %234
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = call i32 @BN_set_word(%struct.TYPE_21__* %244, i32 9)
  %246 = call i64 @TEST_true(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %241
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %251 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %249, %struct.TYPE_21__* %250)
  %252 = call i64 @TEST_false(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %248
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = call i32 @BN_set_word(%struct.TYPE_21__* %257, i32 8)
  %259 = call i64 @TEST_true(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %254
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %264 = call i32 @rsa_check_crt_components(%struct.TYPE_21__* %262, %struct.TYPE_21__* %263)
  %265 = call i64 @TEST_true(i32 %264)
  %266 = icmp ne i64 %265, 0
  br label %267

267:                                              ; preds = %261, %254, %248, %241, %234, %228, %221, %214, %208, %201, %194, %188, %181, %175, %168, %161, %155, %148, %142, %135, %128, %122, %115, %109, %102, %96, %90, %84, %78, %72, %65
  %268 = phi i1 [ false, %254 ], [ false, %248 ], [ false, %241 ], [ false, %234 ], [ false, %228 ], [ false, %221 ], [ false, %214 ], [ false, %208 ], [ false, %201 ], [ false, %194 ], [ false, %188 ], [ false, %181 ], [ false, %175 ], [ false, %168 ], [ false, %161 ], [ false, %155 ], [ false, %148 ], [ false, %142 ], [ false, %135 ], [ false, %128 ], [ false, %122 ], [ false, %115 ], [ false, %109 ], [ false, %102 ], [ false, %96 ], [ false, %90 ], [ false, %84 ], [ false, %78 ], [ false, %72 ], [ false, %65 ], [ %266, %261 ]
  %269 = zext i1 %268 to i32
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %267, %60
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %272 = call i32 @BN_free(%struct.TYPE_21__* %271)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %274 = call i32 @RSA_free(%struct.TYPE_21__* %273)
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %276 = call i32 @BN_CTX_free(%struct.TYPE_21__* %275)
  %277 = load i32, i32* %8, align 4
  ret i32 %277
}

declare dso_local i64 @TEST_ptr(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @RSA_new(...) #1

declare dso_local %struct.TYPE_21__* @BN_CTX_new(...) #1

declare dso_local %struct.TYPE_21__* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @RSA_set0_factors(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @BN_free(%struct.TYPE_21__*) #1

declare dso_local i32 @rsa_sp800_56b_derive_params_from_pq(%struct.TYPE_21__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @TEST_BN_eq_word(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @rsa_check_crt_components(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @RSA_free(%struct.TYPE_21__*) #1

declare dso_local i32 @BN_CTX_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
