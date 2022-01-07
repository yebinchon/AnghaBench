; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_derive_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_derive_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bn_inv_sqrt_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_rsa_fips186_4_derive_prime(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %15, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %22, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @BN_CTX_start(i32* %32)
  %34 = load i32*, i32** %17, align 8
  %35 = call i32* @BN_CTX_get(i32* %34)
  store i32* %35, i32** %28, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i32* @BN_CTX_get(i32* %36)
  store i32* %37, i32** %29, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %24, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32* @BN_CTX_get(i32* %40)
  store i32* %41, i32** %23, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %25, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32* @BN_CTX_get(i32* %44)
  store i32* %45, i32** %26, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %27, align 8
  %48 = load i32*, i32** %27, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %9
  br label %251

51:                                               ; preds = %9
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32* @BN_copy(i32* %55, i32* %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %251

60:                                               ; preds = %54, %51
  %61 = load i32*, i32** %12, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @BN_num_bits(i32* @bn_inv_sqrt_2)
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %251

68:                                               ; preds = %63
  %69 = load i32*, i32** %28, align 8
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @BN_num_bits(i32* @bn_inv_sqrt_2)
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @BN_lshift(i32* %69, i32* @bn_inv_sqrt_2, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load i32*, i32** %29, align 8
  %77 = call i32* (...) @BN_value_one()
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @BN_lshift(i32* %76, i32* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32*, i32** %29, align 8
  %83 = load i32*, i32** %29, align 8
  %84 = load i32*, i32** %28, align 8
  %85 = call i64 @BN_sub(i32* %82, i32* %83, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81, %75, %68
  br label %251

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32*, i32** %27, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i64 @BN_lshift1(i32* %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %89
  %95 = load i32*, i32** %23, align 8
  %96 = load i32*, i32** %27, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i64 @BN_gcd(i32* %95, i32* %96, i32* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %94
  %102 = load i32*, i32** %23, align 8
  %103 = call i64 @BN_is_one(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %146

105:                                              ; preds = %101
  %106 = load i32*, i32** %24, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i32*, i32** %27, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i64 @BN_mod_inverse(i32* %106, i32* %107, i32* %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %105
  %113 = load i32*, i32** %24, align 8
  %114 = load i32*, i32** %24, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = call i64 @BN_mul(i32* %113, i32* %114, i32* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %112
  %120 = load i32*, i32** %23, align 8
  %121 = load i32*, i32** %27, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = call i64 @BN_mod_inverse(i32* %120, i32* %121, i32* %122, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %119
  %127 = load i32*, i32** %23, align 8
  %128 = load i32*, i32** %23, align 8
  %129 = load i32*, i32** %27, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i64 @BN_mul(i32* %127, i32* %128, i32* %129, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  %134 = load i32*, i32** %24, align 8
  %135 = load i32*, i32** %24, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = call i64 @BN_sub(i32* %134, i32* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load i32*, i32** %25, align 8
  %141 = load i32*, i32** %27, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = call i64 @BN_mul(i32* %140, i32* %141, i32* %142, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139, %133, %126, %119, %112, %105, %101, %94, %89
  br label %251

147:                                              ; preds = %139
  %148 = load i32*, i32** %24, align 8
  %149 = call i64 @BN_is_negative(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i32*, i32** %24, align 8
  %153 = load i32*, i32** %24, align 8
  %154 = load i32*, i32** %25, align 8
  %155 = call i32 @BN_add(i32* %152, i32* %153, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  br label %251

158:                                              ; preds = %151, %147
  %159 = load i32, i32* %22, align 4
  %160 = mul nsw i32 5, %159
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %247, %158
  %162 = load i32*, i32** %12, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load i32*, i32** %11, align 8
  %166 = load i32*, i32** %29, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = call i32 @BN_priv_rand_range_ex(i32* %165, i32* %166, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32*, i32** %11, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load i32*, i32** %28, align 8
  %174 = call i32 @BN_add(i32* %171, i32* %172, i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %170, %164
  br label %248

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %24, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load i32*, i32** %25, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = call i32 @BN_mod_sub(i32* %179, i32* %180, i32* %181, i32* %182, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32*, i32** %10, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @BN_add(i32* %187, i32* %188, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186, %178
  br label %251

193:                                              ; preds = %186
  store i32 0, i32* %20, align 4
  br label %194

194:                                              ; preds = %246, %193
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @BN_num_bits(i32* %195)
  %197 = load i32, i32* %22, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load i32*, i32** %12, align 8
  %201 = icmp eq i32* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %247

203:                                              ; preds = %199
  br label %251

204:                                              ; preds = %194
  %205 = load i32*, i32** %18, align 8
  %206 = call i32 @BN_GENCB_call(i32* %205, i32 0, i32 2)
  %207 = load i32*, i32** %26, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = call i32* @BN_copy(i32* %207, i32* %208)
  %210 = icmp eq i32* %209, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %204
  %212 = load i32*, i32** %26, align 8
  %213 = call i32 @BN_sub_word(i32* %212, i32 1)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load i32*, i32** %23, align 8
  %217 = load i32*, i32** %26, align 8
  %218 = load i32*, i32** %16, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = call i64 @BN_gcd(i32* %216, i32* %217, i32* %218, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %215, %211, %204
  br label %251

223:                                              ; preds = %215
  %224 = load i32*, i32** %23, align 8
  %225 = call i64 @BN_is_one(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i32*, i32** %10, align 8
  %229 = load i32*, i32** %17, align 8
  %230 = load i32*, i32** %18, align 8
  %231 = call i64 @BN_check_prime(i32* %228, i32* %229, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %248

234:                                              ; preds = %227, %223
  %235 = load i32, i32* %20, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %20, align 4
  %237 = load i32, i32* %21, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %234
  %240 = load i32*, i32** %10, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = load i32*, i32** %25, align 8
  %243 = call i32 @BN_add(i32* %240, i32* %241, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %239, %234
  br label %251

246:                                              ; preds = %239
  br label %194

247:                                              ; preds = %202
  br label %161

248:                                              ; preds = %233, %176
  store i32 1, i32* %19, align 4
  %249 = load i32*, i32** %18, align 8
  %250 = call i32 @BN_GENCB_call(i32* %249, i32 3, i32 0)
  br label %251

251:                                              ; preds = %248, %245, %222, %203, %192, %157, %146, %87, %67, %59, %50
  %252 = load i32*, i32** %26, align 8
  %253 = call i32 @BN_clear(i32* %252)
  %254 = load i32*, i32** %17, align 8
  %255 = call i32 @BN_CTX_end(i32* %254)
  %256 = load i32, i32* %19, align 4
  ret i32 %256
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i64 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i64 @BN_lshift1(i32*, i32*) #1

declare dso_local i64 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i64 @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_sub(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i64 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
