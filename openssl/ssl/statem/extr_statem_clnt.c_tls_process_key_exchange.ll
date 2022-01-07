; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_key_exchange.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USING TLSv1.2 HASH %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_R_BAD_DATA = common dso_local global i32 0, align 4
@SSL_R_EXTRA_DATA_IN_MESSAGE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_key_exchange(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @EVP_PKEY_free(i32* %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @SSL_PSK, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @tls_process_ske_psk_preamble(%struct.TYPE_20__* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %336

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @SSL_kPSK, align 8
  %50 = load i64, i64* @SSL_kRSAPSK, align 8
  %51 = or i64 %49, %50
  %52 = and i64 %48, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %108

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @SSL_kSRP, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @tls_process_ske_srp(%struct.TYPE_20__* %61, i32* %62, i32** %7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %336

66:                                               ; preds = %60
  br label %107

67:                                               ; preds = %55
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @SSL_kDHE, align 8
  %70 = load i64, i64* @SSL_kDHEPSK, align 8
  %71 = or i64 %69, %70
  %72 = and i64 %68, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @tls_process_ske_dhe(%struct.TYPE_20__* %75, i32* %76, i32** %7)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %336

80:                                               ; preds = %74
  br label %106

81:                                               ; preds = %67
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @SSL_kECDHE, align 8
  %84 = load i64, i64* @SSL_kECDHEPSK, align 8
  %85 = or i64 %83, %84
  %86 = and i64 %82, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @tls_process_ske_ecdhe(%struct.TYPE_20__* %89, i32* %90, i32** %7)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %336

94:                                               ; preds = %88
  br label %105

95:                                               ; preds = %81
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %101 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %102 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_20__* %99, i32 %100, i32 %101, i32 %102)
  br label %336

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %54
  %109 = load i32*, i32** %7, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %294

111:                                              ; preds = %108
  store i32* null, i32** %14, align 8
  %112 = call i64 @PACKET_remaining(i32* %10)
  %113 = load i32*, i32** %5, align 8
  %114 = call i64 @PACKET_remaining(i32* %113)
  %115 = sub i64 %112, %114
  %116 = call i32 @PACKET_get_sub_packet(i32* %10, i32* %12, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %121 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @SSLfatal(%struct.TYPE_20__* %119, i32 %120, i32 %121, i32 %122)
  br label %336

124:                                              ; preds = %111
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_20__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @PACKET_get_net_2(i32* %129, i32* %18)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %134 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %135 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %136 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %137 = call i32 @SSLfatal(%struct.TYPE_20__* %133, i32 %134, i32 %135, i32 %136)
  br label %336

138:                                              ; preds = %128
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = call i64 @tls12_check_peer_sigalg(%struct.TYPE_20__* %139, i32 %140, i32* %141)
  %143 = icmp sle i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %336

145:                                              ; preds = %138
  br label %158

146:                                              ; preds = %124
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_20__* %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %154 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %155 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %156 = call i32 @SSLfatal(%struct.TYPE_20__* %152, i32 %153, i32 %154, i32 %155)
  br label %336

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %145
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @tls1_lookup_md(i32 %163, i32** %14)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %158
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %168 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %169 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %170 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %171 = call i32 @SSLfatal(%struct.TYPE_20__* %167, i32 %168, i32 %169, i32 %170)
  br label %336

172:                                              ; preds = %158
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_20__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i32, i32* @TLS, align 4
  %178 = load i32*, i32** %14, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %184

181:                                              ; preds = %176
  %182 = load i32*, i32** %14, align 8
  %183 = call i8* @EVP_MD_name(i32* %182)
  br label %184

184:                                              ; preds = %181, %180
  %185 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %180 ], [ %183, %181 ]
  %186 = call i32 @OSSL_TRACE1(i32 %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %184, %172
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @PACKET_get_length_prefixed_2(i32* %188, i32* %11)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i32*, i32** %5, align 8
  %193 = call i64 @PACKET_remaining(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %191, %187
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %198 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %199 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %200 = call i32 @SSLfatal(%struct.TYPE_20__* %196, i32 %197, i32 %198, i32 %199)
  br label %336

201:                                              ; preds = %191
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @EVP_PKEY_size(i32* %202)
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %209 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %210 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %211 = call i32 @SSLfatal(%struct.TYPE_20__* %207, i32 %208, i32 %209, i32 %210)
  br label %336

212:                                              ; preds = %201
  %213 = call i64 @PACKET_remaining(i32* %11)
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp ugt i64 %213, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %219 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %220 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %221 = load i32, i32* @SSL_R_WRONG_SIGNATURE_LENGTH, align 4
  %222 = call i32 @SSLfatal(%struct.TYPE_20__* %218, i32 %219, i32 %220, i32 %221)
  br label %336

223:                                              ; preds = %212
  %224 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %224, i32** %8, align 8
  %225 = load i32*, i32** %8, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %229 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %230 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %231 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %232 = call i32 @SSLfatal(%struct.TYPE_20__* %228, i32 %229, i32 %230, i32 %231)
  br label %336

233:                                              ; preds = %223
  %234 = load i32*, i32** %8, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = call i64 @EVP_DigestVerifyInit(i32* %234, i32** %9, i32* %235, i32* null, i32* %236)
  %238 = icmp sle i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %241 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %242 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %243 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %244 = call i32 @SSLfatal(%struct.TYPE_20__* %240, i32 %241, i32 %242, i32 %243)
  br label %336

245:                                              ; preds = %233
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = call i64 @SSL_USE_PSS(%struct.TYPE_20__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %245
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %252 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %250, i32 %251)
  %253 = icmp sle i64 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i32*, i32** %9, align 8
  %256 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %257 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %255, i32 %256)
  %258 = icmp sle i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %254, %249
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %261 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %262 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %263 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %264 = call i32 @SSLfatal(%struct.TYPE_20__* %260, i32 %261, i32 %262, i32 %263)
  br label %336

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %245
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %268 = call i32 @PACKET_data(i32* %12)
  %269 = call i64 @PACKET_remaining(i32* %12)
  %270 = call i64 @construct_key_exchange_tbs(%struct.TYPE_20__* %267, i8** %15, i32 %268, i64 %269)
  store i64 %270, i64* %16, align 8
  %271 = load i64, i64* %16, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %336

274:                                              ; preds = %266
  %275 = load i32*, i32** %8, align 8
  %276 = call i32 @PACKET_data(i32* %11)
  %277 = call i64 @PACKET_remaining(i32* %11)
  %278 = load i8*, i8** %15, align 8
  %279 = load i64, i64* %16, align 8
  %280 = call i32 @EVP_DigestVerify(i32* %275, i32 %276, i64 %277, i8* %278, i64 %279)
  store i32 %280, i32* %17, align 4
  %281 = load i8*, i8** %15, align 8
  %282 = call i32 @OPENSSL_free(i8* %281)
  %283 = load i32, i32* %17, align 4
  %284 = icmp sle i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %274
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %287 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %288 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %289 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %290 = call i32 @SSLfatal(%struct.TYPE_20__* %286, i32 %287, i32 %288, i32 %289)
  br label %336

291:                                              ; preds = %274
  %292 = load i32*, i32** %8, align 8
  %293 = call i32 @EVP_MD_CTX_free(i32* %292)
  store i32* null, i32** %8, align 8
  br label %334

294:                                              ; preds = %108
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @SSL_aNULL, align 4
  %303 = load i32, i32* @SSL_aSRP, align 4
  %304 = or i32 %302, %303
  %305 = and i32 %301, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %323, label %307

307:                                              ; preds = %294
  %308 = load i64, i64* %6, align 8
  %309 = load i64, i64* @SSL_PSK, align 8
  %310 = and i64 %308, %309
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %323, label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %314 = call i64 @ssl3_check_cert_and_algorithm(%struct.TYPE_20__* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %319 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %320 = load i32, i32* @SSL_R_BAD_DATA, align 4
  %321 = call i32 @SSLfatal(%struct.TYPE_20__* %317, i32 %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %316, %312
  br label %336

323:                                              ; preds = %307, %294
  %324 = load i32*, i32** %5, align 8
  %325 = call i64 @PACKET_remaining(i32* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %329 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %330 = load i32, i32* @SSL_F_TLS_PROCESS_KEY_EXCHANGE, align 4
  %331 = load i32, i32* @SSL_R_EXTRA_DATA_IN_MESSAGE, align 4
  %332 = call i32 @SSLfatal(%struct.TYPE_20__* %328, i32 %329, i32 %330, i32 %331)
  br label %336

333:                                              ; preds = %323
  br label %334

334:                                              ; preds = %333, %291
  %335 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %335, i32* %3, align 4
  br label %340

336:                                              ; preds = %327, %322, %285, %273, %259, %239, %227, %217, %206, %195, %166, %151, %144, %132, %118, %98, %93, %79, %65, %45
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @EVP_MD_CTX_free(i32* %337)
  %339 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %336, %334
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @tls_process_ske_psk_preamble(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @tls_process_ske_srp(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @tls_process_ske_dhe(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @tls_process_ske_ecdhe(%struct.TYPE_20__*, i32*, i32**) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i64) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_20__*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @tls12_check_peer_sigalg(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @tls1_lookup_md(i32, i32**) #1

declare dso_local i32 @OSSL_TRACE1(i32, i8*, i8*) #1

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestVerifyInit(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i64 @SSL_USE_PSS(%struct.TYPE_20__*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #1

declare dso_local i64 @construct_key_exchange_tbs(%struct.TYPE_20__*, i8**, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @EVP_DigestVerify(i32*, i32, i64, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i64 @ssl3_check_cert_and_algorithm(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
