; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_sign_setup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_sign_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)* }

@DSA_F_DSA_SIGN_SETUP = common dso_local global i32 0, align 4
@DSA_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@DSA_R_INVALID_PARAMETERS = common dso_local global i32 0, align 4
@DSA_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@DSA_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**, i32**, i8*, i32)* @dsa_sign_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_sign_setup(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %16, align 8
  %22 = load i32**, i32*** %11, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %28, %6
  %39 = load i32, i32* @DSA_F_DSA_SIGN_SETUP, align 4
  %40 = load i32, i32* @DSA_R_MISSING_PARAMETERS, align 4
  %41 = call i32 @DSAerr(i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %290

42:                                               ; preds = %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @BN_is_zero(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @BN_is_zero(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @BN_is_zero(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48, %42
  %61 = load i32, i32* @DSA_F_DSA_SIGN_SETUP, align 4
  %62 = load i32, i32* @DSA_R_INVALID_PARAMETERS, align 4
  %63 = call i32 @DSAerr(i32 %61, i32 %62)
  store i32 0, i32* %7, align 4
  br label %290

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @DSA_F_DSA_SIGN_SETUP, align 4
  %71 = load i32, i32* @DSA_R_MISSING_PRIVATE_KEY, align 4
  %72 = call i32 @DSAerr(i32 %70, i32 %71)
  store i32 0, i32* %7, align 4
  br label %290

73:                                               ; preds = %64
  %74 = call i32* (...) @BN_new()
  store i32* %74, i32** %15, align 8
  %75 = call i32* (...) @BN_new()
  store i32* %75, i32** %18, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** %18, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %73
  br label %270

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = call i32* (...) @BN_CTX_new()
  store i32* %86, i32** %14, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %270

89:                                               ; preds = %85
  br label %92

90:                                               ; preds = %82
  %91 = load i32*, i32** %9, align 8
  store i32* %91, i32** %14, align 8
  br label %92

92:                                               ; preds = %90, %89
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @BN_num_bits(i32* %95)
  store i32 %96, i32* %20, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @bn_get_top(i32* %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 2
  %104 = call i32 @bn_wexpand(i32* %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load i32*, i32** %18, align 8
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 2
  %110 = call i32 @bn_wexpand(i32* %107, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106, %92
  br label %270

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %142, %113
  %115 = load i8*, i8** %12, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i32*, i32** %15, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @BN_generate_dsa_nonce(i32* %118, i32* %121, i32* %124, i8* %125, i32 %126, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %117
  br label %270

131:                                              ; preds = %117
  br label %141

132:                                              ; preds = %114
  %133 = load i32*, i32** %15, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @BN_priv_rand_range(i32* %133, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %270

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %131
  br label %142

142:                                              ; preds = %141
  %143 = load i32*, i32** %15, align 8
  %144 = call i64 @BN_is_zero(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %114, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %149 = call i32 @BN_set_flags(i32* %147, i32 %148)
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %152 = call i32 @BN_set_flags(i32* %150, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DSA_FLAG_CACHE_MONT_P, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %146
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @BN_MONT_CTX_set_locked(i32* %161, i32 %164, i32* %167, i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %159
  br label %270

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %146
  %174 = load i32*, i32** %18, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @BN_add(i32* %174, i32* %175, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load i32*, i32** %15, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @BN_add(i32* %182, i32* %183, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %181, %173
  br label %270

190:                                              ; preds = %181
  %191 = load i32*, i32** %18, align 8
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @BN_is_bit_set(i32* %191, i32 %192)
  %194 = load i32*, i32** %15, align 8
  %195 = load i32*, i32** %18, align 8
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, 2
  %198 = call i32 @BN_consttime_swap(i32 %193, i32* %194, i32* %195, i32 %197)
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)** %202, align 8
  %204 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)* %203, null
  br i1 %204, label %205, label %228

205:                                              ; preds = %190
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32*, i32)** %209, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = load i32*, i32** %17, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32*, i32** %14, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %210(%struct.TYPE_6__* %211, i32* %212, i32* %215, i32* %216, i32* %219, i32* %220, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %205
  br label %270

227:                                              ; preds = %205
  br label %245

228:                                              ; preds = %190
  %229 = load i32*, i32** %17, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = load i32*, i32** %14, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @BN_mod_exp_mont(i32* %229, i32* %232, i32* %233, i32* %236, i32* %237, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %228
  br label %270

244:                                              ; preds = %228
  br label %245

245:                                              ; preds = %244, %227
  %246 = load i32*, i32** %17, align 8
  %247 = load i32*, i32** %17, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32*, i32** %14, align 8
  %252 = call i32 @BN_mod(i32* %246, i32* %247, i32* %250, i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %245
  br label %270

255:                                              ; preds = %245
  %256 = load i32*, i32** %15, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = call i32* @dsa_mod_inverse_fermat(i32* %256, i32* %259, i32* %260)
  store i32* %261, i32** %16, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  br label %270

264:                                              ; preds = %255
  %265 = load i32**, i32*** %10, align 8
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @BN_clear_free(i32* %266)
  %268 = load i32*, i32** %16, align 8
  %269 = load i32**, i32*** %10, align 8
  store i32* %268, i32** %269, align 8
  store i32* null, i32** %16, align 8
  store i32 1, i32* %19, align 4
  br label %270

270:                                              ; preds = %264, %263, %254, %243, %226, %189, %171, %139, %130, %112, %88, %81
  %271 = load i32, i32* %19, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* @DSA_F_DSA_SIGN_SETUP, align 4
  %275 = load i32, i32* @ERR_R_BN_LIB, align 4
  %276 = call i32 @DSAerr(i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %273, %270
  %278 = load i32*, i32** %14, align 8
  %279 = load i32*, i32** %9, align 8
  %280 = icmp ne i32* %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i32*, i32** %14, align 8
  %283 = call i32 @BN_CTX_free(i32* %282)
  br label %284

284:                                              ; preds = %281, %277
  %285 = load i32*, i32** %15, align 8
  %286 = call i32 @BN_clear_free(i32* %285)
  %287 = load i32*, i32** %18, align 8
  %288 = call i32 @BN_clear_free(i32* %287)
  %289 = load i32, i32* %19, align 4
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %284, %69, %60, %38
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @bn_get_top(i32*) #1

declare dso_local i32 @bn_wexpand(i32*, i32) #1

declare dso_local i32 @BN_generate_dsa_nonce(i32*, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_MONT_CTX_set_locked(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_consttime_swap(i32, i32*, i32*, i32) #1

declare dso_local i32 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @dsa_mod_inverse_fermat(i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
