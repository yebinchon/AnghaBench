; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_bn_miller_rabin_is_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_prime.c_bn_miller_rabin_is_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_PRIMETEST_COMPOSITE_WITH_FACTOR = common dso_local global i32 0, align 4
@BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME = common dso_local global i32 0, align 4
@BN_PRIMETEST_COMPOSITE = common dso_local global i32 0, align 4
@BN_PRIMETEST_PROBABLY_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_miller_rabin_is_prime(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @BN_is_odd(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %290

30:                                               ; preds = %6
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @BN_CTX_start(i32* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @BN_CTX_get(i32* %33)
  store i32* %34, i32** %18, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @BN_CTX_get(i32* %35)
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @BN_CTX_get(i32* %37)
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  store i32* %40, i32** %21, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32* @BN_CTX_get(i32* %41)
  store i32* %42, i32** %22, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @BN_CTX_get(i32* %43)
  store i32* %44, i32** %23, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @BN_CTX_get(i32* %45)
  store i32* %46, i32** %24, align 8
  %47 = load i32*, i32** %24, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %30
  %50 = load i32*, i32** %19, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @BN_copy(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32*, i32** %19, align 8
  %56 = call i64 @BN_sub_word(i32* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** %20, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @BN_copy(i32* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** %20, align 8
  %65 = call i64 @BN_sub_word(i32* %64, i32 3)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %58, %54, %49, %30
  br label %270

68:                                               ; preds = %63
  %69 = load i32*, i32** %20, align 8
  %70 = call i64 @BN_is_zero(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %20, align 8
  %74 = call i64 @BN_is_negative(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  br label %270

77:                                               ; preds = %72
  store i32 1, i32* %16, align 4
  br label %78

78:                                               ; preds = %84, %77
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @BN_is_bit_set(i32* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %78

87:                                               ; preds = %78
  %88 = load i32*, i32** %22, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @BN_rshift(i32* %88, i32* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %270

94:                                               ; preds = %87
  %95 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %95, i32** %25, align 8
  %96 = load i32*, i32** %25, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %25, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @BN_MONT_CTX_set(i32* %99, i32* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98, %94
  br label %270

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @BN_num_bits(i32* %109)
  %111 = call i32 @bn_mr_min_checks(i32 %110)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %105
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %264, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %267

117:                                              ; preds = %113
  %118 = load i32*, i32** %24, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @BN_priv_rand_range_ex(i32* %118, i32* %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32*, i32** %24, align 8
  %125 = call i32 @BN_add_word(i32* %124, i32 2)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123, %117
  br label %270

128:                                              ; preds = %123
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i32*, i32** %18, align 8
  %133 = load i32*, i32** %24, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @BN_gcd(i32* %132, i32* %133, i32* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %270

139:                                              ; preds = %131
  %140 = load i32*, i32** %18, align 8
  %141 = call i64 @BN_is_one(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @BN_PRIMETEST_COMPOSITE_WITH_FACTOR, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  store i32 1, i32* %17, align 4
  br label %270

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %128
  %148 = load i32*, i32** %23, align 8
  %149 = load i32*, i32** %24, align 8
  %150 = load i32*, i32** %22, align 8
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i32*, i32** %25, align 8
  %154 = call i32 @BN_mod_exp_mont(i32* %148, i32* %149, i32* %150, i32* %151, i32* %152, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %147
  br label %270

157:                                              ; preds = %147
  %158 = load i32*, i32** %23, align 8
  %159 = call i64 @BN_is_one(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32*, i32** %23, align 8
  %163 = load i32*, i32** %19, align 8
  %164 = call i64 @BN_cmp(i32* %162, i32* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161, %157
  br label %257

167:                                              ; preds = %161
  store i32 1, i32* %15, align 4
  br label %168

168:                                              ; preds = %198, %167
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %16, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %168
  %173 = load i32*, i32** %21, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = call i64 @BN_copy(i32* %173, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32*, i32** %23, align 8
  %179 = load i32*, i32** %21, align 8
  %180 = load i32*, i32** %21, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @BN_mod_mul(i32* %178, i32* %179, i32* %180, i32* %181, i32* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177, %172
  br label %270

186:                                              ; preds = %177
  %187 = load i32*, i32** %23, align 8
  %188 = load i32*, i32** %19, align 8
  %189 = call i64 @BN_cmp(i32* %187, i32* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %257

192:                                              ; preds = %186
  %193 = load i32*, i32** %23, align 8
  %194 = call i64 @BN_is_one(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %227

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %168

201:                                              ; preds = %168
  %202 = load i32*, i32** %21, align 8
  %203 = load i32*, i32** %23, align 8
  %204 = call i64 @BN_copy(i32* %202, i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load i32*, i32** %23, align 8
  %208 = load i32*, i32** %21, align 8
  %209 = load i32*, i32** %21, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @BN_mod_mul(i32* %207, i32* %208, i32* %209, i32* %210, i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %206, %201
  br label %270

215:                                              ; preds = %206
  %216 = load i32*, i32** %23, align 8
  %217 = call i64 @BN_is_one(i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %227

220:                                              ; preds = %215
  %221 = load i32*, i32** %21, align 8
  %222 = load i32*, i32** %23, align 8
  %223 = call i64 @BN_copy(i32* %221, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  br label %270

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %226, %219, %196
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %253

230:                                              ; preds = %227
  %231 = load i32*, i32** %21, align 8
  %232 = call i64 @BN_sub_word(i32* %231, i32 1)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load i32*, i32** %18, align 8
  %236 = load i32*, i32** %21, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = call i32 @BN_gcd(i32* %235, i32* %236, i32* %237, i32* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %234, %230
  br label %270

242:                                              ; preds = %234
  %243 = load i32*, i32** %18, align 8
  %244 = call i64 @BN_is_one(i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i32, i32* @BN_PRIMETEST_COMPOSITE_NOT_POWER_OF_PRIME, align 4
  %248 = load i32*, i32** %13, align 8
  store i32 %247, i32* %248, align 4
  br label %252

249:                                              ; preds = %242
  %250 = load i32, i32* @BN_PRIMETEST_COMPOSITE_WITH_FACTOR, align 4
  %251 = load i32*, i32** %13, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %246
  br label %256

253:                                              ; preds = %227
  %254 = load i32, i32* @BN_PRIMETEST_COMPOSITE, align 4
  %255 = load i32*, i32** %13, align 8
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %253, %252
  store i32 1, i32* %17, align 4
  br label %270

257:                                              ; preds = %191, %166
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %14, align 4
  %260 = call i32 @BN_GENCB_call(i32* %258, i32 1, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  br label %270

263:                                              ; preds = %257
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  br label %113

267:                                              ; preds = %113
  %268 = load i32, i32* @BN_PRIMETEST_PROBABLY_PRIME, align 4
  %269 = load i32*, i32** %13, align 8
  store i32 %268, i32* %269, align 4
  store i32 1, i32* %17, align 4
  br label %270

270:                                              ; preds = %267, %262, %256, %241, %225, %214, %185, %156, %143, %138, %127, %104, %93, %76, %67
  %271 = load i32*, i32** %18, align 8
  %272 = call i32 @BN_clear(i32* %271)
  %273 = load i32*, i32** %19, align 8
  %274 = call i32 @BN_clear(i32* %273)
  %275 = load i32*, i32** %20, align 8
  %276 = call i32 @BN_clear(i32* %275)
  %277 = load i32*, i32** %21, align 8
  %278 = call i32 @BN_clear(i32* %277)
  %279 = load i32*, i32** %22, align 8
  %280 = call i32 @BN_clear(i32* %279)
  %281 = load i32*, i32** %23, align 8
  %282 = call i32 @BN_clear(i32* %281)
  %283 = load i32*, i32** %24, align 8
  %284 = call i32 @BN_clear(i32* %283)
  %285 = load i32*, i32** %10, align 8
  %286 = call i32 @BN_CTX_end(i32* %285)
  %287 = load i32*, i32** %25, align 8
  %288 = call i32 @BN_MONT_CTX_free(i32* %287)
  %289 = load i32, i32* %17, align 4
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %270, %29
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_copy(i32*, i32*) #1

declare dso_local i64 @BN_sub_word(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #1

declare dso_local i32 @bn_mr_min_checks(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
