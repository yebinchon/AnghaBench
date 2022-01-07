; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_simple_verify_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdsa_ossl.c_ecdsa_simple_verify_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32 }

@EC_F_ECDSA_SIMPLE_VERIFY_SIG = common dso_local global i32 0, align 4
@EC_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_BAD_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdsa_simple_verify_sig(i8* %0, i32 %1, %struct.TYPE_9__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %18, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = call i32* @EC_KEY_get0_group(%struct.TYPE_8__* %24)
  store i32* %25, i32** %19, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = call i32* @EC_KEY_get0_public_key(%struct.TYPE_8__* %28)
  store i32* %29, i32** %20, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27, %23, %4
  %35 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %36 = load i32, i32* @EC_R_MISSING_PARAMETERS, align 4
  %37 = call i32 @ECerr(i32 %35, i32 %36)
  store i32 -1, i32* %5, align 4
  br label %261

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = call i32 @EC_KEY_can_sign(%struct.TYPE_8__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %44 = load i32, i32* @EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING, align 4
  %45 = call i32 @ECerr(i32 %43, i32 %44)
  store i32 -1, i32* %5, align 4
  br label %261

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @BN_CTX_new_ex(i32 %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %55 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %56 = call i32 @ECerr(i32 %54, i32 %55)
  store i32 -1, i32* %5, align 4
  br label %261

57:                                               ; preds = %46
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @BN_CTX_start(i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @BN_CTX_get(i32* %60)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32* @BN_CTX_get(i32* %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32* @BN_CTX_get(i32* %64)
  store i32* %65, i32** %16, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32* @BN_CTX_get(i32* %66)
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %72 = load i32, i32* @ERR_R_BN_LIB, align 4
  %73 = call i32 @ECerr(i32 %71, i32 %72)
  br label %253

74:                                               ; preds = %57
  %75 = load i32*, i32** %19, align 8
  %76 = call i32* @EC_GROUP_get0_order(i32* %75)
  store i32* %76, i32** %13, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %81 = load i32, i32* @ERR_R_EC_LIB, align 4
  %82 = call i32 @ECerr(i32 %80, i32 %81)
  br label %253

83:                                               ; preds = %74
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @BN_is_zero(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @BN_is_negative(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i64 @BN_ucmp(i32* %98, i32* %99)
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @BN_is_zero(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @BN_is_negative(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i64 @BN_ucmp(i32* %117, i32* %118)
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114, %108, %102, %95, %89, %83
  %122 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %123 = load i32, i32* @EC_R_BAD_SIGNATURE, align 4
  %124 = call i32 @ECerr(i32 %122, i32 %123)
  store i32 0, i32* %10, align 4
  br label %253

125:                                              ; preds = %114
  %126 = load i32*, i32** %19, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @ec_group_do_inverse_ord(i32* %126, i32* %127, i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %125
  %135 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %136 = load i32, i32* @ERR_R_BN_LIB, align 4
  %137 = call i32 @ECerr(i32 %135, i32 %136)
  br label %253

138:                                              ; preds = %125
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @BN_num_bits(i32* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %7, align 4
  %142 = mul nsw i32 8, %141
  %143 = load i32, i32* %11, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 7
  %148 = sdiv i32 %147, 8
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %145, %138
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @BN_bin2bn(i8* %150, i32 %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %157 = load i32, i32* @ERR_R_BN_LIB, align 4
  %158 = call i32 @ECerr(i32 %156, i32 %157)
  br label %253

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 8, %160
  %162 = load i32, i32* %11, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load i32*, i32** %16, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, 7
  %169 = sub nsw i32 8, %168
  %170 = call i32 @BN_rshift(i32* %165, i32* %166, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %164
  %173 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %174 = load i32, i32* @ERR_R_BN_LIB, align 4
  %175 = call i32 @ECerr(i32 %173, i32 %174)
  br label %253

176:                                              ; preds = %164, %159
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %16, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @BN_mod_mul(i32* %177, i32* %178, i32* %179, i32* %180, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %176
  %185 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %186 = load i32, i32* @ERR_R_BN_LIB, align 4
  %187 = call i32 @ECerr(i32 %185, i32 %186)
  br label %253

188:                                              ; preds = %176
  %189 = load i32*, i32** %15, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @BN_mod_mul(i32* %189, i32* %192, i32* %193, i32* %194, i32* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %188
  %199 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %200 = load i32, i32* @ERR_R_BN_LIB, align 4
  %201 = call i32 @ECerr(i32 %199, i32 %200)
  br label %253

202:                                              ; preds = %188
  %203 = load i32*, i32** %19, align 8
  %204 = call i32* @EC_POINT_new(i32* %203)
  store i32* %204, i32** %18, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %208 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %209 = call i32 @ECerr(i32 %207, i32 %208)
  br label %253

210:                                              ; preds = %202
  %211 = load i32*, i32** %19, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = load i32*, i32** %20, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = call i32 @EC_POINT_mul(i32* %211, i32* %212, i32* %213, i32* %214, i32* %215, i32* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %210
  %220 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %221 = load i32, i32* @ERR_R_EC_LIB, align 4
  %222 = call i32 @ECerr(i32 %220, i32 %221)
  br label %253

223:                                              ; preds = %210
  %224 = load i32*, i32** %19, align 8
  %225 = load i32*, i32** %18, align 8
  %226 = load i32*, i32** %17, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = call i32 @EC_POINT_get_affine_coordinates(i32* %224, i32* %225, i32* %226, i32* null, i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %232 = load i32, i32* @ERR_R_EC_LIB, align 4
  %233 = call i32 @ECerr(i32 %231, i32 %232)
  br label %253

234:                                              ; preds = %223
  %235 = load i32*, i32** %14, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = load i32*, i32** %13, align 8
  %238 = load i32*, i32** %12, align 8
  %239 = call i32 @BN_nnmod(i32* %235, i32* %236, i32* %237, i32* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %234
  %242 = load i32, i32* @EC_F_ECDSA_SIMPLE_VERIFY_SIG, align 4
  %243 = load i32, i32* @ERR_R_BN_LIB, align 4
  %244 = call i32 @ECerr(i32 %242, i32 %243)
  br label %253

245:                                              ; preds = %234
  %246 = load i32*, i32** %14, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = call i64 @BN_ucmp(i32* %246, i32* %249)
  %251 = icmp eq i64 %250, 0
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %10, align 4
  br label %253

253:                                              ; preds = %245, %241, %230, %219, %206, %198, %184, %172, %155, %134, %121, %79, %70
  %254 = load i32*, i32** %12, align 8
  %255 = call i32 @BN_CTX_end(i32* %254)
  %256 = load i32*, i32** %12, align 8
  %257 = call i32 @BN_CTX_free(i32* %256)
  %258 = load i32*, i32** %18, align 8
  %259 = call i32 @EC_POINT_free(i32* %258)
  %260 = load i32, i32* %10, align 4
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %253, %53, %42, %34
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32* @EC_KEY_get0_group(%struct.TYPE_8__*) #1

declare dso_local i32* @EC_KEY_get0_public_key(%struct.TYPE_8__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_KEY_can_sign(%struct.TYPE_8__*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32 @ec_group_do_inverse_ord(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
