; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_do_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_do_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)* }

@DSA_F_DSA_DO_VERIFY = common dso_local global i32 0, align 4
@DSA_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@DSA_R_BAD_Q_VALUE = common dso_local global i32 0, align 4
@OPENSSL_DSA_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@DSA_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DSA_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, %struct.TYPE_6__*)* @dsa_do_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_do_verify(i8* %0, i32 %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32* null, i32** %14, align 8
  store i32 -1, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %23, %4
  %34 = load i32, i32* @DSA_F_DSA_DO_VERIFY, align 4
  %35 = load i32, i32* @DSA_R_MISSING_PARAMETERS, align 4
  %36 = call i32 @DSAerr(i32 %34, i32 %35)
  store i32 -1, i32* %5, align 4
  br label %269

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @BN_num_bits(i32* %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 160
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 224
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 256
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @DSA_F_DSA_DO_VERIFY, align 4
  %52 = load i32, i32* @DSA_R_BAD_Q_VALUE, align 4
  %53 = call i32 @DSAerr(i32 %51, i32 %52)
  store i32 -1, i32* %5, align 4
  br label %269

54:                                               ; preds = %47, %44, %37
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @BN_num_bits(i32* %57)
  %59 = load i32, i32* @OPENSSL_DSA_MAX_MODULUS_BITS, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @DSA_F_DSA_DO_VERIFY, align 4
  %63 = load i32, i32* @DSA_R_MODULUS_TOO_LARGE, align 4
  %64 = call i32 @DSAerr(i32 %62, i32 %63)
  store i32 -1, i32* %5, align 4
  br label %269

65:                                               ; preds = %54
  %66 = call i32* (...) @BN_new()
  store i32* %66, i32** %11, align 8
  %67 = call i32* (...) @BN_new()
  store i32* %67, i32** %12, align 8
  %68 = call i32* (...) @BN_new()
  store i32* %68, i32** %13, align 8
  %69 = call i32* (...) @BN_CTX_new()
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %75, %72, %65
  br label %252

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @DSA_SIG_get0(i32* %83, i32** %15, i32** %16)
  %85 = load i32*, i32** %15, align 8
  %86 = call i64 @BN_is_zero(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %82
  %89 = load i32*, i32** %15, align 8
  %90 = call i64 @BN_is_negative(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %15, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @BN_ucmp(i32* %93, i32* %96)
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %88, %82
  store i32 0, i32* %17, align 4
  br label %252

100:                                              ; preds = %92
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @BN_is_zero(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %16, align 8
  %106 = call i64 @BN_is_negative(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %16, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @BN_ucmp(i32* %109, i32* %112)
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %104, %100
  store i32 0, i32* %17, align 4
  br label %252

116:                                              ; preds = %108
  %117 = load i32*, i32** %12, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = call i32* @BN_mod_inverse(i32* %117, i32* %118, i32* %121, i32* %122)
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %252

126:                                              ; preds = %116
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %18, align 4
  %129 = ashr i32 %128, 3
  %130 = icmp sgt i32 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %18, align 4
  %133 = ashr i32 %132, 3
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = call i32* @BN_bin2bn(i8* %135, i32 %136, i32* %137)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %252

141:                                              ; preds = %134
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @BN_mod_mul(i32* %142, i32* %143, i32* %144, i32* %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  br label %252

152:                                              ; preds = %141
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @BN_mod_mul(i32* %153, i32* %154, i32* %155, i32* %158, i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %152
  br label %252

163:                                              ; preds = %152
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DSA_FLAG_CACHE_MONT_P, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %163
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = call i32* @BN_MONT_CTX_set_locked(i32* %172, i32 %175, i32* %178, i32* %179)
  store i32* %180, i32** %14, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %170
  br label %252

184:                                              ; preds = %170
  br label %185

185:                                              ; preds = %184, %163
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)** %189, align 8
  %191 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)* %190, null
  br i1 %191, label %192, label %217

192:                                              ; preds = %185
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 5
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*)** %196, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %11, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = call i32 %197(%struct.TYPE_6__* %198, i32* %199, i32 %202, i32* %203, i32 %206, i32* %207, i32* %210, i32* %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %192
  br label %252

216:                                              ; preds = %192
  br label %236

217:                                              ; preds = %185
  %218 = load i32*, i32** %13, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %12, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = call i32 @BN_mod_exp2_mont(i32* %218, i32 %221, i32* %222, i32 %225, i32* %226, i32* %229, i32* %230, i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %217
  br label %252

235:                                              ; preds = %217
  br label %236

236:                                              ; preds = %235, %216
  %237 = load i32*, i32** %11, align 8
  %238 = load i32*, i32** %13, align 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i32*, i32** %10, align 8
  %243 = call i32 @BN_mod(i32* %237, i32* %238, i32* %241, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %236
  br label %252

246:                                              ; preds = %236
  %247 = load i32*, i32** %11, align 8
  %248 = load i32*, i32** %15, align 8
  %249 = call i64 @BN_ucmp(i32* %247, i32* %248)
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %17, align 4
  br label %252

252:                                              ; preds = %246, %245, %234, %215, %183, %162, %151, %140, %125, %115, %99, %81
  %253 = load i32, i32* %17, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* @DSA_F_DSA_DO_VERIFY, align 4
  %257 = load i32, i32* @ERR_R_BN_LIB, align 4
  %258 = call i32 @DSAerr(i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  %260 = load i32*, i32** %10, align 8
  %261 = call i32 @BN_CTX_free(i32* %260)
  %262 = load i32*, i32** %11, align 8
  %263 = call i32 @BN_free(i32* %262)
  %264 = load i32*, i32** %12, align 8
  %265 = call i32 @BN_free(i32* %264)
  %266 = load i32*, i32** %13, align 8
  %267 = call i32 @BN_free(i32* %266)
  %268 = load i32, i32* %17, align 4
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %259, %61, %50, %33
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @DSA_SIG_get0(i32*, i32**, i32**) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32*) #1

declare dso_local i32* @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BN_MONT_CTX_set_locked(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp2_mont(i32*, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
