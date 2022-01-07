; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls_choose_sigalg.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls_choose_sigalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, %struct.TYPE_28__, %struct.TYPE_25__*, i64, %struct.TYPE_30__** }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_30__*, %struct.TYPE_26__*, %struct.TYPE_24__*, i32* }
%struct.TYPE_30__ = type { i32, i64, i32, i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_26__* }

@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_CHOOSE_SIGALG = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@SSL_aCERT = common dso_local global i32 0, align 4
@SSL_PKEY_ECC = common dso_local global i64 0, align 8
@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@SSL_aGOST01 = common dso_local global i32 0, align 4
@SSL_aGOST12 = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_choose_sigalg(%struct.TYPE_29__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %6, align 8
  store i32 -1, i32* %7, align 4
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %18, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %22, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = call i64 @SSL_IS_TLS13(%struct.TYPE_29__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %28 = call %struct.TYPE_30__* @find_sig_alg(%struct.TYPE_29__* %27, i32* null, i32* null)
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %6, align 8
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %30 = icmp eq %struct.TYPE_30__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %367

35:                                               ; preds = %31
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %38 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %39 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_29__* %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %367

41:                                               ; preds = %26
  br label %333

42:                                               ; preds = %2
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SSL_aCERT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %367

54:                                               ; preds = %42
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %64, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = ptrtoint %struct.TYPE_26__* %65 to i64
  %72 = ptrtoint %struct.TYPE_26__* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @ssl_has_cert(%struct.TYPE_29__* %60, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %367

79:                                               ; preds = %59, %54
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_29__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %317

83:                                               ; preds = %79
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %258

90:                                               ; preds = %83
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %92 = call i64 @tls1_suiteb(%struct.TYPE_29__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  %100 = load i64, i64* @SSL_PKEY_ECC, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %103)
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @EC_KEY_get0_group(i32* %105)
  %107 = call i32 @EC_GROUP_get_curve_name(i32 %106)
  store i32 %107, i32* %9, align 4
  br label %109

108:                                              ; preds = %90
  store i32 -1, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %94
  store i64 0, i64* %8, align 8
  br label %110

110:                                              ; preds = %200, %109
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %203

116:                                              ; preds = %110
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %119, i64 %120
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %121, align 8
  store %struct.TYPE_30__* %122, %struct.TYPE_30__** %6, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %116
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %130 = call i32 @tls12_get_cert_sigalg_idx(%struct.TYPE_29__* %128, %struct.TYPE_30__* %129)
  store i32 %130, i32* %7, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %200

133:                                              ; preds = %127
  br label %158

134:                                              ; preds = %116
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %143, align 8
  %145 = ptrtoint %struct.TYPE_26__* %139 to i64
  %146 = ptrtoint %struct.TYPE_26__* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %134
  br label %200

157:                                              ; preds = %134
  br label %158

158:                                              ; preds = %157, %133
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @has_usable_cert(%struct.TYPE_29__* %159, %struct.TYPE_30__* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %200

165:                                              ; preds = %158
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  store i32* %181, i32** %12, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @EVP_PKEY_get0(i32* %182)
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %185 = call i32 @rsa_pss_check_min_key_size(i32 %183, %struct.TYPE_30__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %171
  br label %200

188:                                              ; preds = %171
  br label %189

189:                                              ; preds = %188, %165
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192, %189
  br label %203

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %187, %164, %156, %132
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %8, align 8
  br label %110

203:                                              ; preds = %198, %110
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %241

209:                                              ; preds = %203
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SSL_aGOST01, align 4
  %218 = load i32, i32* @SSL_aGOST12, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %209
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %224 = call %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__* %223, i32 -1)
  store %struct.TYPE_30__* %224, %struct.TYPE_30__** %6, align 8
  %225 = icmp eq %struct.TYPE_30__* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  store i32 1, i32* %3, align 4
  br label %367

230:                                              ; preds = %226
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %232 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %233 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %234 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %235 = call i32 @SSLfatal(%struct.TYPE_29__* %231, i32 %232, i32 %233, i32 %234)
  store i32 0, i32* %3, align 4
  br label %367

236:                                              ; preds = %222
  store i64 0, i64* %8, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %209, %203
  %242 = load i64, i64* %8, align 8
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %241
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store i32 1, i32* %3, align 4
  br label %367

251:                                              ; preds = %247
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %253 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %254 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %255 = load i32, i32* @SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM, align 4
  %256 = call i32 @SSLfatal(%struct.TYPE_29__* %252, i32 %253, i32 %254, i32 %255)
  store i32 0, i32* %3, align 4
  br label %367

257:                                              ; preds = %241
  br label %316

258:                                              ; preds = %83
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %260 = call %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__* %259, i32 -1)
  store %struct.TYPE_30__* %260, %struct.TYPE_30__** %6, align 8
  %261 = icmp eq %struct.TYPE_30__* %260, null
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 1, i32* %3, align 4
  br label %367

266:                                              ; preds = %262
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %268 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %269 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %270 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %271 = call i32 @SSLfatal(%struct.TYPE_29__* %267, i32 %268, i32 %269, i32 %270)
  store i32 0, i32* %3, align 4
  br label %367

272:                                              ; preds = %258
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %274 = call i64 @tls12_get_psigalgs(%struct.TYPE_29__* %273, i32 1, i64** %13)
  store i64 %274, i64* %14, align 8
  store i64 0, i64* %8, align 8
  br label %275

275:                                              ; preds = %296, %272
  %276 = load i64, i64* %8, align 8
  %277 = load i64, i64* %14, align 8
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %279, label %301

279:                                              ; preds = %275
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %13, align 8
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %282, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %279
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i64 @has_usable_cert(%struct.TYPE_29__* %287, %struct.TYPE_30__* %288, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %286
  br label %301

295:                                              ; preds = %286, %279
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %8, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %8, align 8
  %299 = load i64*, i64** %13, align 8
  %300 = getelementptr inbounds i64, i64* %299, i32 1
  store i64* %300, i64** %13, align 8
  br label %275

301:                                              ; preds = %294, %275
  %302 = load i64, i64* %8, align 8
  %303 = load i64, i64* %14, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load i32, i32* %5, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %305
  store i32 1, i32* %3, align 4
  br label %367

309:                                              ; preds = %305
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %311 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %312 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %313 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %314 = call i32 @SSLfatal(%struct.TYPE_29__* %310, i32 %311, i32 %312, i32 %313)
  store i32 0, i32* %3, align 4
  br label %367

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315, %257
  br label %332

317:                                              ; preds = %79
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %319 = call %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__* %318, i32 -1)
  store %struct.TYPE_30__* %319, %struct.TYPE_30__** %6, align 8
  %320 = icmp eq %struct.TYPE_30__* %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = load i32, i32* %5, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  store i32 1, i32* %3, align 4
  br label %367

325:                                              ; preds = %321
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %327 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %328 = load i32, i32* @SSL_F_TLS_CHOOSE_SIGALG, align 4
  %329 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %330 = call i32 @SSLfatal(%struct.TYPE_29__* %326, i32 %327, i32 %328, i32 %329)
  store i32 0, i32* %3, align 4
  br label %367

331:                                              ; preds = %317
  br label %332

332:                                              ; preds = %331, %316
  br label %333

333:                                              ; preds = %332, %41
  %334 = load i32, i32* %7, align 4
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %336, %333
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %344, align 8
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i64 %347
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 1
  store %struct.TYPE_26__* %348, %struct.TYPE_26__** %352, align 8
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %356, align 8
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i32 0, i32 0
  store %struct.TYPE_26__* %357, %struct.TYPE_26__** %361, align 8
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  store %struct.TYPE_30__* %362, %struct.TYPE_30__** %366, align 8
  store i32 1, i32* %3, align 4
  br label %367

367:                                              ; preds = %340, %325, %324, %309, %308, %266, %265, %251, %250, %230, %229, %78, %53, %35, %34
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @find_sig_alg(%struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @ssl_has_cert(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_29__*) #1

declare dso_local i64 @tls1_suiteb(%struct.TYPE_29__*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @tls12_get_cert_sigalg_idx(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i64 @has_usable_cert(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @rsa_pss_check_min_key_size(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @EVP_PKEY_get0(i32*) #1

declare dso_local %struct.TYPE_30__* @tls1_get_legacy_sigalg(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_29__*, i32, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
