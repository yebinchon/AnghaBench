; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_chk.c_RSA_check_key_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_chk.c_RSA_check_key_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32* }

@RSA_F_RSA_CHECK_KEY_EX = common dso_local global i32 0, align 4
@RSA_R_VALUE_MISSING = common dso_local global i32 0, align 4
@RSA_ASN1_VERSION_MULTI = common dso_local global i64 0, align 8
@RSA_R_INVALID_MULTI_PRIME_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_R_BAD_E_VALUE = common dso_local global i32 0, align 4
@RSA_R_P_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_Q_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_MP_R_NOT_PRIME = common dso_local global i32 0, align 4
@RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES = common dso_local global i32 0, align 4
@RSA_R_N_DOES_NOT_EQUAL_P_Q = common dso_local global i32 0, align 4
@RSA_R_D_E_NOT_CONGRUENT_TO_1 = common dso_local global i32 0, align 4
@RSA_R_DMP1_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_DMQ1_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_IQMP_NOT_INVERSE_OF_Q = common dso_local global i32 0, align 4
@RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D = common dso_local global i32 0, align 4
@RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_check_key_ex(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %30, %25, %20, %2
  %41 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %42 = load i32, i32* @RSA_R_VALUE_MISSING, align 4
  %43 = call i32 @RSAerr(i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %504

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RSA_ASN1_VERSION_MULTI, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sk_RSA_PRIME_INFO_num(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @BN_num_bits(i32* %62)
  %64 = call i32 @rsa_multip_cap(i32 %63)
  %65 = icmp sgt i32 %59, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57, %50
  %67 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %68 = load i32, i32* @RSA_R_INVALID_MULTI_PRIME_KEY, align 4
  %69 = call i32 @RSAerr(i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %504

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %44
  %72 = call i32* (...) @BN_new()
  store i32* %72, i32** %6, align 8
  %73 = call i32* (...) @BN_new()
  store i32* %73, i32** %7, align 8
  %74 = call i32* (...) @BN_new()
  store i32* %74, i32** %8, align 8
  %75 = call i32* (...) @BN_new()
  store i32* %75, i32** %9, align 8
  %76 = call i32* (...) @BN_new()
  store i32* %76, i32** %10, align 8
  %77 = call i32* (...) @BN_CTX_new()
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %71
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %9, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %11, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92, %89, %86, %83, %80, %71
  store i32 -1, i32* %12, align 4
  %96 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %97 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %98 = call i32 @RSAerr(i32 %96, i32 %97)
  br label %490

99:                                               ; preds = %92
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @BN_is_one(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  %106 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %107 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %108 = call i32 @RSAerr(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @BN_is_odd(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  %116 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %117 = load i32, i32* @RSA_R_BAD_E_VALUE, align 4
  %118 = call i32 @RSAerr(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @BN_check_prime(i32* %122, i32* null, i32* %123)
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  %127 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %128 = load i32, i32* @RSA_R_P_NOT_PRIME, align 4
  %129 = call i32 @RSAerr(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @BN_check_prime(i32* %133, i32* null, i32* %134)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  %138 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %139 = load i32, i32* @RSA_R_Q_NOT_PRIME, align 4
  %140 = call i32 @RSAerr(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %130
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %163, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32 %149, i32 %150)
  store %struct.TYPE_9__* %151, %struct.TYPE_9__** %15, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @BN_check_prime(i32* %154, i32* null, i32* %155)
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %162

158:                                              ; preds = %146
  store i32 0, i32* %12, align 4
  %159 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %160 = load i32, i32* @RSA_R_MP_R_NOT_PRIME, align 4
  %161 = call i32 @RSAerr(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %142

166:                                              ; preds = %142
  %167 = load i32*, i32** %6, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @BN_mul(i32* %167, i32* %170, i32* %173, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %166
  store i32 -1, i32* %12, align 4
  br label %490

178:                                              ; preds = %166
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %179
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32 %186, i32 %187)
  store %struct.TYPE_9__* %188, %struct.TYPE_9__** %15, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @BN_mul(i32* %189, i32* %190, i32* %193, i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %183
  store i32 -1, i32* %12, align 4
  br label %490

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %179

202:                                              ; preds = %179
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 9
  %206 = load i32*, i32** %205, align 8
  %207 = call i64 @BN_cmp(i32* %203, i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %202
  store i32 0, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %214 = load i32, i32* @RSA_R_N_DOES_NOT_EQUAL_PRODUCT_OF_PRIMES, align 4
  %215 = call i32 @RSAerr(i32 %213, i32 %214)
  br label %220

216:                                              ; preds = %209
  %217 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %218 = load i32, i32* @RSA_R_N_DOES_NOT_EQUAL_P_Q, align 4
  %219 = call i32 @RSAerr(i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %212
  br label %221

221:                                              ; preds = %220, %202
  %222 = load i32*, i32** %6, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 (...) @BN_value_one()
  %227 = call i32 @BN_sub(i32* %222, i32* %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %221
  store i32 -1, i32* %12, align 4
  br label %490

230:                                              ; preds = %221
  %231 = load i32*, i32** %7, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 5
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 (...) @BN_value_one()
  %236 = call i32 @BN_sub(i32* %231, i32* %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  store i32 -1, i32* %12, align 4
  br label %490

239:                                              ; preds = %230
  %240 = load i32*, i32** %9, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @BN_mul(i32* %240, i32* %241, i32* %242, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %239
  store i32 -1, i32* %12, align 4
  br label %490

247:                                              ; preds = %239
  %248 = load i32*, i32** %10, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = load i32*, i32** %7, align 8
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @BN_gcd(i32* %248, i32* %249, i32* %250, i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %247
  store i32 -1, i32* %12, align 4
  br label %490

255:                                              ; preds = %247
  store i32 0, i32* %14, align 4
  br label %256

256:                                              ; preds = %291, %255
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %294

260:                                              ; preds = %256
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %14, align 4
  %265 = call %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32 %263, i32 %264)
  store %struct.TYPE_9__* %265, %struct.TYPE_9__** %15, align 8
  %266 = load i32*, i32** %8, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 (...) @BN_value_one()
  %271 = call i32 @BN_sub(i32* %266, i32* %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %260
  store i32 -1, i32* %12, align 4
  br label %490

274:                                              ; preds = %260
  %275 = load i32*, i32** %9, align 8
  %276 = load i32*, i32** %9, align 8
  %277 = load i32*, i32** %8, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = call i32 @BN_mul(i32* %275, i32* %276, i32* %277, i32* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %274
  store i32 -1, i32* %12, align 4
  br label %490

282:                                              ; preds = %274
  %283 = load i32*, i32** %10, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = load i32*, i32** %8, align 8
  %286 = load i32*, i32** %11, align 8
  %287 = call i32 @BN_gcd(i32* %283, i32* %284, i32* %285, i32* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %282
  store i32 -1, i32* %12, align 4
  br label %490

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  br label %256

294:                                              ; preds = %256
  %295 = load i32*, i32** %8, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = load i32*, i32** %10, align 8
  %298 = load i32*, i32** %11, align 8
  %299 = call i32 @BN_div(i32* %295, i32* null, i32* %296, i32* %297, i32* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %294
  store i32 -1, i32* %12, align 4
  br label %490

302:                                              ; preds = %294
  %303 = load i32*, i32** %6, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 8
  %309 = load i32*, i32** %308, align 8
  %310 = load i32*, i32** %8, align 8
  %311 = load i32*, i32** %11, align 8
  %312 = call i32 @BN_mod_mul(i32* %303, i32* %306, i32* %309, i32* %310, i32* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %302
  store i32 -1, i32* %12, align 4
  br label %490

315:                                              ; preds = %302
  %316 = load i32*, i32** %6, align 8
  %317 = call i64 @BN_is_one(i32* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %315
  store i32 0, i32* %12, align 4
  %320 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %321 = load i32, i32* @RSA_R_D_E_NOT_CONGRUENT_TO_1, align 4
  %322 = call i32 @RSAerr(i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %319, %315
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 7
  %326 = load i32*, i32** %325, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %328, label %422

328:                                              ; preds = %323
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 6
  %331 = load i32*, i32** %330, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %422

333:                                              ; preds = %328
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %422

338:                                              ; preds = %333
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 4
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 (...) @BN_value_one()
  %344 = call i32 @BN_sub(i32* %339, i32* %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %338
  store i32 -1, i32* %12, align 4
  br label %490

347:                                              ; preds = %338
  %348 = load i32*, i32** %7, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = load i32*, i32** %6, align 8
  %353 = load i32*, i32** %11, align 8
  %354 = call i32 @BN_mod(i32* %348, i32* %351, i32* %352, i32* %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %347
  store i32 -1, i32* %12, align 4
  br label %490

357:                                              ; preds = %347
  %358 = load i32*, i32** %7, align 8
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 7
  %361 = load i32*, i32** %360, align 8
  %362 = call i64 @BN_cmp(i32* %358, i32* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %357
  store i32 0, i32* %12, align 4
  %365 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %366 = load i32, i32* @RSA_R_DMP1_NOT_CONGRUENT_TO_D, align 4
  %367 = call i32 @RSAerr(i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %364, %357
  %369 = load i32*, i32** %6, align 8
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 (...) @BN_value_one()
  %374 = call i32 @BN_sub(i32* %369, i32* %372, i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %368
  store i32 -1, i32* %12, align 4
  br label %490

377:                                              ; preds = %368
  %378 = load i32*, i32** %7, align 8
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32*, i32** %6, align 8
  %383 = load i32*, i32** %11, align 8
  %384 = call i32 @BN_mod(i32* %378, i32* %381, i32* %382, i32* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %377
  store i32 -1, i32* %12, align 4
  br label %490

387:                                              ; preds = %377
  %388 = load i32*, i32** %7, align 8
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 6
  %391 = load i32*, i32** %390, align 8
  %392 = call i64 @BN_cmp(i32* %388, i32* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %387
  store i32 0, i32* %12, align 4
  %395 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %396 = load i32, i32* @RSA_R_DMQ1_NOT_CONGRUENT_TO_D, align 4
  %397 = call i32 @RSAerr(i32 %395, i32 %396)
  br label %398

398:                                              ; preds = %394, %387
  %399 = load i32*, i32** %6, align 8
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 5
  %402 = load i32*, i32** %401, align 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 4
  %405 = load i32*, i32** %404, align 8
  %406 = load i32*, i32** %11, align 8
  %407 = call i32 @BN_mod_inverse(i32* %399, i32* %402, i32* %405, i32* %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %398
  store i32 -1, i32* %12, align 4
  br label %490

410:                                              ; preds = %398
  %411 = load i32*, i32** %6, align 8
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 3
  %414 = load i32*, i32** %413, align 8
  %415 = call i64 @BN_cmp(i32* %411, i32* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %410
  store i32 0, i32* %12, align 4
  %418 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %419 = load i32, i32* @RSA_R_IQMP_NOT_INVERSE_OF_Q, align 4
  %420 = call i32 @RSAerr(i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %417, %410
  br label %422

422:                                              ; preds = %421, %333, %328, %323
  store i32 0, i32* %14, align 4
  br label %423

423:                                              ; preds = %486, %422
  %424 = load i32, i32* %14, align 4
  %425 = load i32, i32* %13, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %489

427:                                              ; preds = %423
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* %14, align 4
  %432 = call %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32 %430, i32 %431)
  store %struct.TYPE_9__* %432, %struct.TYPE_9__** %15, align 8
  %433 = load i32*, i32** %6, align 8
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = call i32 (...) @BN_value_one()
  %438 = call i32 @BN_sub(i32* %433, i32* %436, i32 %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %427
  store i32 -1, i32* %12, align 4
  br label %490

441:                                              ; preds = %427
  %442 = load i32*, i32** %7, align 8
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = load i32*, i32** %6, align 8
  %447 = load i32*, i32** %11, align 8
  %448 = call i32 @BN_mod(i32* %442, i32* %445, i32* %446, i32* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %441
  store i32 -1, i32* %12, align 4
  br label %490

451:                                              ; preds = %441
  %452 = load i32*, i32** %7, align 8
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 3
  %455 = load i32*, i32** %454, align 8
  %456 = call i64 @BN_cmp(i32* %452, i32* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %451
  store i32 0, i32* %12, align 4
  %459 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %460 = load i32, i32* @RSA_R_MP_EXPONENT_NOT_CONGRUENT_TO_D, align 4
  %461 = call i32 @RSAerr(i32 %459, i32 %460)
  br label %462

462:                                              ; preds = %458, %451
  %463 = load i32*, i32** %6, align 8
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 2
  %466 = load i32*, i32** %465, align 8
  %467 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 1
  %469 = load i32*, i32** %468, align 8
  %470 = load i32*, i32** %11, align 8
  %471 = call i32 @BN_mod_inverse(i32* %463, i32* %466, i32* %469, i32* %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %462
  store i32 -1, i32* %12, align 4
  br label %490

474:                                              ; preds = %462
  %475 = load i32*, i32** %6, align 8
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 0
  %478 = load i32*, i32** %477, align 8
  %479 = call i64 @BN_cmp(i32* %475, i32* %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %474
  store i32 0, i32* %12, align 4
  %482 = load i32, i32* @RSA_F_RSA_CHECK_KEY_EX, align 4
  %483 = load i32, i32* @RSA_R_MP_COEFFICIENT_NOT_INVERSE_OF_R, align 4
  %484 = call i32 @RSAerr(i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %481, %474
  br label %486

486:                                              ; preds = %485
  %487 = load i32, i32* %14, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %14, align 4
  br label %423

489:                                              ; preds = %423
  br label %490

490:                                              ; preds = %489, %473, %450, %440, %409, %386, %376, %356, %346, %314, %301, %289, %281, %273, %254, %246, %238, %229, %197, %177, %95
  %491 = load i32*, i32** %6, align 8
  %492 = call i32 @BN_free(i32* %491)
  %493 = load i32*, i32** %7, align 8
  %494 = call i32 @BN_free(i32* %493)
  %495 = load i32*, i32** %8, align 8
  %496 = call i32 @BN_free(i32* %495)
  %497 = load i32*, i32** %9, align 8
  %498 = call i32 @BN_free(i32* %497)
  %499 = load i32*, i32** %10, align 8
  %500 = call i32 @BN_free(i32* %499)
  %501 = load i32*, i32** %11, align 8
  %502 = call i32 @BN_CTX_free(i32* %501)
  %503 = load i32, i32* %12, align 4
  store i32 %503, i32* %3, align 4
  br label %504

504:                                              ; preds = %490, %66, %40
  %505 = load i32, i32* %3, align 4
  ret i32 %505
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @sk_RSA_PRIME_INFO_num(i32) #1

declare dso_local i32 @rsa_multip_cap(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @sk_RSA_PRIME_INFO_value(i32, i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
