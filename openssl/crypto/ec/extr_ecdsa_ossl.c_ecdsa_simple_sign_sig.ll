; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_simple_sign_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_simple_sign_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@EC_F_ECDSA_SIMPLE_SIGN_SIG = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_ECDSA_LIB = common dso_local global i32 0, align 4
@EC_R_NEED_NEW_SETUP_VALUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ecdsa_simple_sign_sig(i8* %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %19, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = call %struct.TYPE_15__* @EC_KEY_get0_group(%struct.TYPE_14__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %20, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = call i32* @EC_KEY_get0_private_key(%struct.TYPE_14__* %25)
  store i32* %26, i32** %22, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %28 = icmp eq %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %31 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %32 = call i32 @ECerr(i32 %30, i32 %31)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %262

33:                                               ; preds = %5
  %34 = load i32*, i32** %22, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %38 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %262

40:                                               ; preds = %33
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = call i32 @EC_KEY_can_sign(%struct.TYPE_14__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %46 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %47 = call i32 @ECerr(i32 %45, i32 %46)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %262

48:                                               ; preds = %40
  %49 = call %struct.TYPE_16__* (...) @ECDSA_SIG_new()
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %21, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %51 = icmp eq %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %262

56:                                               ; preds = %48
  %57 = call i8* (...) @BN_new()
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = call i8* (...) @BN_new()
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %56
  %75 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @ECerr(i32 %75, i32 %76)
  br label %248

78:                                               ; preds = %69
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %15, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @BN_CTX_new_ex(i32 %84)
  store i32* %85, i32** %19, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = call i8* (...) @BN_new()
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %16, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %87, %78
  %92 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %93 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %94 = call i32 @ECerr(i32 %92, i32 %93)
  br label %248

95:                                               ; preds = %87
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %97 = call i32* @EC_GROUP_get0_order(%struct.TYPE_15__* %96)
  store i32* %97, i32** %17, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @BN_num_bits(i32* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 8, %100
  %102 = load i32, i32* %13, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 7
  %107 = sdiv i32 %106, 8
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %95
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @BN_bin2bn(i8* %109, i32 %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %116 = load i32, i32* @ERR_R_BN_LIB, align 4
  %117 = call i32 @ECerr(i32 %115, i32 %116)
  br label %248

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 8, %119
  %121 = load i32, i32* %13, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load i32*, i32** %16, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %13, align 4
  %127 = and i32 %126, 7
  %128 = sub nsw i32 8, %127
  %129 = call i32 @BN_rshift(i32* %124, i32* %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %123
  %132 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %133 = load i32, i32* @ERR_R_BN_LIB, align 4
  %134 = call i32 @ECerr(i32 %132, i32 %133)
  br label %248

135:                                              ; preds = %123, %118
  br label %136

136:                                              ; preds = %246, %135
  %137 = load i32*, i32** %9, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %10, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @ecdsa_sign_setup(%struct.TYPE_14__* %143, i32* %144, i32** %14, i32** %146, i8* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %153 = load i32, i32* @ERR_R_ECDSA_LIB, align 4
  %154 = call i32 @ECerr(i32 %152, i32 %153)
  br label %248

155:                                              ; preds = %142
  %156 = load i32*, i32** %14, align 8
  store i32* %156, i32** %18, align 8
  br label %170

157:                                              ; preds = %139
  %158 = load i32*, i32** %9, align 8
  store i32* %158, i32** %18, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = call i32* @BN_copy(i32* %161, i32* %162)
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %167 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %168 = call i32 @ECerr(i32 %166, i32 %167)
  br label %248

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169, %155
  %171 = load i32*, i32** %15, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %19, align 8
  %179 = call i32 @bn_to_mont_fixed_top(i32* %171, i32* %174, i32 %177, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %170
  %182 = load i32*, i32** %15, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = load i32*, i32** %22, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %19, align 8
  %189 = call i32 @bn_mul_mont_fixed_top(i32* %182, i32* %183, i32* %184, i32 %187, i32* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %181, %170
  %192 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %193 = load i32, i32* @ERR_R_BN_LIB, align 4
  %194 = call i32 @ECerr(i32 %192, i32 %193)
  br label %248

195:                                              ; preds = %181
  %196 = load i32*, i32** %15, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load i32*, i32** %16, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = call i32 @bn_mod_add_fixed_top(i32* %196, i32* %197, i32* %198, i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %195
  %203 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %204 = load i32, i32* @ERR_R_BN_LIB, align 4
  %205 = call i32 @ECerr(i32 %203, i32 %204)
  br label %248

206:                                              ; preds = %195
  %207 = load i32*, i32** %15, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %19, align 8
  %213 = call i32 @bn_to_mont_fixed_top(i32* %207, i32* %208, i32 %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %206
  %216 = load i32*, i32** %15, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %19, align 8
  %223 = call i32 @BN_mod_mul_montgomery(i32* %216, i32* %217, i32* %218, i32 %221, i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %215, %206
  %226 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %227 = load i32, i32* @ERR_R_BN_LIB, align 4
  %228 = call i32 @ECerr(i32 %226, i32 %227)
  br label %248

229:                                              ; preds = %215
  %230 = load i32*, i32** %15, align 8
  %231 = call i64 @BN_is_zero(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load i32*, i32** %9, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load i32*, i32** %10, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load i32, i32* @EC_F_ECDSA_SIMPLE_SIGN_SIG, align 4
  %241 = load i32, i32* @EC_R_NEED_NEW_SETUP_VALUES, align 4
  %242 = call i32 @ECerr(i32 %240, i32 %241)
  br label %248

243:                                              ; preds = %236, %233
  br label %245

244:                                              ; preds = %229
  br label %247

245:                                              ; preds = %243
  br label %246

246:                                              ; preds = %245
  br i1 true, label %136, label %247

247:                                              ; preds = %246, %244
  store i32 1, i32* %12, align 4
  br label %248

248:                                              ; preds = %247, %239, %225, %202, %191, %165, %151, %131, %114, %91, %74
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %253 = call i32 @ECDSA_SIG_free(%struct.TYPE_16__* %252)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %21, align 8
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32*, i32** %19, align 8
  %256 = call i32 @BN_CTX_free(i32* %255)
  %257 = load i32*, i32** %16, align 8
  %258 = call i32 @BN_clear_free(i32* %257)
  %259 = load i32*, i32** %14, align 8
  %260 = call i32 @BN_clear_free(i32* %259)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %261, %struct.TYPE_16__** %6, align 8
  br label %262

262:                                              ; preds = %254, %52, %44, %36, %29
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %263
}

declare dso_local %struct.TYPE_15__* @EC_KEY_get0_group(%struct.TYPE_14__*) #1

declare dso_local i32* @EC_KEY_get0_private_key(%struct.TYPE_14__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_KEY_can_sign(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @ECDSA_SIG_new(...) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32* @EC_GROUP_get0_order(%struct.TYPE_15__*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @ecdsa_sign_setup(%struct.TYPE_14__*, i32*, i32**, i32**, i8*, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @bn_to_mont_fixed_top(i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_mul_mont_fixed_top(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @bn_mod_add_fixed_top(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul_montgomery(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @ECDSA_SIG_free(%struct.TYPE_16__*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
