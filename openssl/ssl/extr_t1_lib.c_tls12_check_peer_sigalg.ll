; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls12_check_peer_sigalg.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls12_check_peer_sigalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@EVP_PKEY_DSA = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_TLS12_CHECK_PEER_SIGALG = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_TYPE = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@NID_sha1 = common dso_local global i64 0, align 8
@NID_sha224 = common dso_local global i64 0, align 8
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@SSL_R_ILLEGAL_POINT_COMPRESSION = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@SSL_R_WRONG_CURVE = common dso_local global i32 0, align 4
@TLSEXT_SIGALG_ecdsa_secp256r1_sha256 = common dso_local global i32 0, align 4
@TLSEXT_SIGALG_ecdsa_secp384r1_sha384 = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_CERT_FLAGS_CHECK_TLS_STRICT = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_DIGEST = common dso_local global i32 0, align 4
@SSL_SECOP_SIGALG_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls12_check_peer_sigalg(%struct.TYPE_19__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @EVP_PKEY_id(i32* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %290

23:                                               ; preds = %3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = call i64 @SSL_IS_TLS13(%struct.TYPE_19__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @EVP_PKEY_DSA, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %34 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %35 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %36 = call i32 @SSLfatal(%struct.TYPE_19__* %32, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %4, align 4
  br label %290

37:                                               ; preds = %27
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @EVP_PKEY_RSA, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_20__* @tls1_lookup_sigalg(i32 %45)
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %15, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %48 = icmp eq %struct.TYPE_20__* %47, null
  br i1 %48, label %81, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = call i64 @SSL_IS_TLS13(%struct.TYPE_19__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NID_sha1, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NID_sha224, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @EVP_PKEY_RSA, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %71, %59, %53, %44
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %83 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %84 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %85 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %86 = call i32 @SSLfatal(%struct.TYPE_19__* %82, i32 %83, i32 %84, i32 %85)
  store i32 0, i32* %4, align 4
  br label %290

87:                                               ; preds = %77, %65
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @EVP_PKEY_id(i32* %88)
  %90 = call i32 @ssl_cert_lookup_by_nid(i32 %89, i64* %13)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92, %87
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %102 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %103 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %104 = call i32 @SSLfatal(%struct.TYPE_19__* %100, i32 %101, i32 %102, i32 %103)
  store i32 0, i32* %4, align 4
  br label %290

105:                                              ; preds = %92
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @EVP_PKEY_EC, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %189

109:                                              ; preds = %105
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @tls1_check_pkey_comp(%struct.TYPE_19__* %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %117 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %118 = load i32, i32* @SSL_R_ILLEGAL_POINT_COMPRESSION, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_19__* %115, i32 %116, i32 %117, i32 %118)
  store i32 0, i32* %4, align 4
  br label %290

120:                                              ; preds = %109
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %122 = call i64 @SSL_IS_TLS13(%struct.TYPE_19__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = call i64 @tls1_suiteb(%struct.TYPE_19__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %124, %120
  %129 = load i32*, i32** %7, align 8
  %130 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %129)
  store i32* %130, i32** %16, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @EC_KEY_get0_group(i32* %131)
  %133 = call i32 @EC_GROUP_get_curve_name(i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NID_undef, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %128
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %148 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %149 = load i32, i32* @SSL_R_WRONG_CURVE, align 4
  %150 = call i32 @SSLfatal(%struct.TYPE_19__* %146, i32 %147, i32 %148, i32 %149)
  store i32 0, i32* %4, align 4
  br label %290

151:                                              ; preds = %139, %128
  br label %152

152:                                              ; preds = %151, %124
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %154 = call i64 @SSL_IS_TLS13(%struct.TYPE_19__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %188, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @tls1_get_group_id(i32* %158)
  %160 = call i32 @tls1_check_group_id(%struct.TYPE_19__* %157, i32 %159, i32 1)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %164 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %165 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %166 = load i32, i32* @SSL_R_WRONG_CURVE, align 4
  %167 = call i32 @SSLfatal(%struct.TYPE_19__* %163, i32 %164, i32 %165, i32 %166)
  store i32 0, i32* %4, align 4
  br label %290

168:                                              ; preds = %156
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %170 = call i64 @tls1_suiteb(%struct.TYPE_19__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @TLSEXT_SIGALG_ecdsa_secp256r1_sha256, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @TLSEXT_SIGALG_ecdsa_secp384r1_sha384, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %183 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %184 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %185 = call i32 @SSLfatal(%struct.TYPE_19__* %181, i32 %182, i32 %183, i32 %184)
  store i32 0, i32* %4, align 4
  br label %290

186:                                              ; preds = %176, %172
  br label %187

187:                                              ; preds = %186, %168
  br label %188

188:                                              ; preds = %187, %152
  br label %200

189:                                              ; preds = %105
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %191 = call i64 @tls1_suiteb(%struct.TYPE_19__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %196 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %197 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %198 = call i32 @SSLfatal(%struct.TYPE_19__* %194, i32 %195, i32 %196, i32 %197)
  store i32 0, i32* %4, align 4
  br label %290

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %188
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = call i64 @tls12_get_psigalgs(%struct.TYPE_19__* %201, i32 1, i32** %8)
  store i64 %202, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %203

203:                                              ; preds = %214, %200
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* %11, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load i32, i32* %6, align 4
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %219

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %8, align 8
  br label %203

219:                                              ; preds = %212, %203
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %11, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %244

223:                                              ; preds = %219
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @NID_sha1, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %238, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SSL_CERT_FLAGS_CHECK_TLS_STRICT, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %229, %223
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %241 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %242 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %243 = call i32 @SSLfatal(%struct.TYPE_19__* %239, i32 %240, i32 %241, i32 %242)
  store i32 0, i32* %4, align 4
  br label %290

244:                                              ; preds = %229, %219
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %246 = call i32 @tls1_lookup_md(%struct.TYPE_20__* %245, i32** %9)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %244
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %251 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %252 = load i32, i32* @SSL_R_UNKNOWN_DIGEST, align 4
  %253 = call i32 @SSLfatal(%struct.TYPE_19__* %249, i32 %250, i32 %251, i32 %252)
  store i32 0, i32* %4, align 4
  br label %290

254:                                              ; preds = %244
  %255 = load i32*, i32** %9, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %284

257:                                              ; preds = %254
  %258 = load i32, i32* %6, align 4
  %259 = ashr i32 %258, 8
  %260 = and i32 %259, 255
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %261, i8* %262, align 1
  %263 = load i32, i32* %6, align 4
  %264 = and i32 %263, 255
  %265 = trunc i32 %264 to i8
  %266 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %265, i8* %266, align 1
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = load i32, i32* @SSL_SECOP_SIGALG_CHECK, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = call i32 @EVP_MD_size(i32* %269)
  %271 = mul nsw i32 %270, 4
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @EVP_MD_type(i32* %272)
  %274 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %275 = call i32 @ssl_security(%struct.TYPE_19__* %267, i32 %268, i32 %271, i32 %273, i8* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %257
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %279 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %280 = load i32, i32* @SSL_F_TLS12_CHECK_PEER_SIGALG, align 4
  %281 = load i32, i32* @SSL_R_WRONG_SIGNATURE_TYPE, align 4
  %282 = call i32 @SSLfatal(%struct.TYPE_19__* %278, i32 %279, i32 %280, i32 %281)
  store i32 0, i32* %4, align 4
  br label %290

283:                                              ; preds = %257
  br label %284

284:                                              ; preds = %283, %254
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  store %struct.TYPE_20__* %285, %struct.TYPE_20__** %289, align 8
  store i32 1, i32* %4, align 4
  br label %290

290:                                              ; preds = %284, %277, %248, %238, %193, %180, %162, %145, %114, %99, %81, %31, %22
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_19__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @tls1_lookup_sigalg(i32) #1

declare dso_local i32 @ssl_cert_lookup_by_nid(i32, i64*) #1

declare dso_local i32 @tls1_check_pkey_comp(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @tls1_suiteb(%struct.TYPE_19__*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @tls1_check_group_id(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @tls1_get_group_id(i32*) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_19__*, i32, i32**) #1

declare dso_local i32 @tls1_lookup_md(%struct.TYPE_20__*, i32**) #1

declare dso_local i32 @ssl_security(%struct.TYPE_19__*, i32, i32, i32, i8*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
