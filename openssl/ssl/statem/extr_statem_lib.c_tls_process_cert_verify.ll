; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_process_cert_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_process_cert_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32* }

@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CERT_VERIFY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_PACKET = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USING TLSv1.2 HASH %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@NID_id_GostR3410_2001 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_256 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_512 = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_WRONG_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Using client verify alg %s\0A\00", align 1
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_cert_verify(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %21 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %21, i32* %8, align 4
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load i32, i32* @TLS13_TBS_PREAMBLE_SIZE, align 4
  %23 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %28, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %34 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @SSLfatal(%struct.TYPE_16__* %32, i32 %33, i32 %34, i32 %35)
  br label %361

37:                                               ; preds = %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @X509_get0_pubkey(i32* %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %51 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_16__* %48, i32 %49, i32 %50, i32 %51)
  br label %361

53:                                               ; preds = %37
  %54 = load i32*, i32** %5, align 8
  %55 = call i32* @ssl_cert_lookup_by_pkey(i32* %54, i32* null)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %60 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %61 = load i32, i32* @SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_16__* %58, i32 %59, i32 %60, i32 %61)
  br label %361

63:                                               ; preds = %53
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_16__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @PACKET_get_net_2(i32* %68, i32* %19)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %74 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %75 = load i32, i32* @SSL_R_BAD_PACKET, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_16__* %72, i32 %73, i32 %74, i32 %75)
  br label %361

77:                                               ; preds = %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @tls12_check_peer_sigalg(%struct.TYPE_16__* %78, i32 %79, i32* %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %361

84:                                               ; preds = %77
  br label %97

85:                                               ; preds = %63
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_16__* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %93 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %94 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %95 = call i32 @SSLfatal(%struct.TYPE_16__* %91, i32 %92, i32 %93, i32 %94)
  br label %361

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tls1_lookup_md(i32 %102, i32** %12)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %108 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %109 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %110 = call i32 @SSLfatal(%struct.TYPE_16__* %106, i32 %107, i32 %108, i32 %109)
  br label %361

111:                                              ; preds = %97
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_16__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i32, i32* @TLS, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %123

120:                                              ; preds = %115
  %121 = load i32*, i32** %12, align 8
  %122 = call i8* @EVP_MD_name(i32* %121)
  br label %123

123:                                              ; preds = %120, %119
  %124 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %119 ], [ %122, %120 ]
  %125 = call i32 @OSSL_TRACE1(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %111
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_16__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %126
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @PACKET_remaining(i32* %131)
  %133 = icmp eq i32 %132, 64
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @EVP_PKEY_id(i32* %135)
  %137 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %153, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @EVP_PKEY_id(i32* %140)
  %142 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %153, label %144

144:                                              ; preds = %139, %130
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @PACKET_remaining(i32* %145)
  %147 = icmp eq i32 %146, 128
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @EVP_PKEY_id(i32* %149)
  %151 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148, %139, %134
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @PACKET_remaining(i32* %154)
  store i32 %155, i32* %10, align 4
  br label %167

156:                                              ; preds = %148, %144, %126
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @PACKET_get_net_2(i32* %157, i32* %10)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %163 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %164 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %165 = call i32 @SSLfatal(%struct.TYPE_16__* %161, i32 %162, i32 %163, i32 %164)
  br label %361

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @EVP_PKEY_size(i32* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %182, label %173

173:                                              ; preds = %167
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @PACKET_remaining(i32* %174)
  %176 = load i32, i32* %9, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @PACKET_remaining(i32* %179)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178, %173, %167
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %185 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %186 = load i32, i32* @SSL_R_WRONG_SIGNATURE_SIZE, align 4
  %187 = call i32 @SSLfatal(%struct.TYPE_16__* %183, i32 %184, i32 %185, i32 %186)
  br label %361

188:                                              ; preds = %178
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @PACKET_get_bytes(i32* %189, i8** %6, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %195 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %196 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %197 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %198 = call i32 @SSLfatal(%struct.TYPE_16__* %194, i32 %195, i32 %196, i32 %197)
  br label %361

199:                                              ; preds = %188
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %201 = call i32 @get_cert_verify_tbs_data(%struct.TYPE_16__* %200, i8* %27, i8** %14, i64* %13)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  br label %361

204:                                              ; preds = %199
  %205 = load i32, i32* @TLS, align 4
  %206 = load i32*, i32** %12, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %212

209:                                              ; preds = %204
  %210 = load i32*, i32** %12, align 8
  %211 = call i8* @EVP_MD_name(i32* %210)
  br label %212

212:                                              ; preds = %209, %208
  %213 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %208 ], [ %211, %209 ]
  %214 = call i32 @OSSL_TRACE1(i32 %205, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %213)
  %215 = load i32*, i32** %17, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = load i32*, i32** %5, align 8
  %218 = call i64 @EVP_DigestVerifyInit(i32* %215, i32** %18, i32* %216, i32* null, i32* %217)
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %223 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %224 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %225 = call i32 @SSLfatal(%struct.TYPE_16__* %221, i32 %222, i32 %223, i32 %224)
  br label %361

226:                                              ; preds = %212
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @EVP_PKEY_id(i32* %227)
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %240, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %236, %232, %226
  %241 = load i32, i32* %10, align 4
  %242 = call i8* @OPENSSL_malloc(i32 %241)
  store i8* %242, i8** %7, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %246 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %247 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %248 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %249 = call i32 @SSLfatal(%struct.TYPE_16__* %245, i32 %246, i32 %247, i32 %248)
  br label %361

250:                                              ; preds = %240
  %251 = load i8*, i8** %7, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @BUF_reverse(i8* %251, i8* %252, i32 %253)
  %255 = load i8*, i8** %7, align 8
  store i8* %255, i8** %6, align 8
  br label %256

256:                                              ; preds = %250, %236
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %258 = call i64 @SSL_USE_PSS(%struct.TYPE_16__* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %256
  %261 = load i32*, i32** %18, align 8
  %262 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %263 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %261, i32 %262)
  %264 = icmp sle i64 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load i32*, i32** %18, align 8
  %267 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %268 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %266, i32 %267)
  %269 = icmp sle i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %265, %260
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %272 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %273 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %274 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %275 = call i32 @SSLfatal(%struct.TYPE_16__* %271, i32 %272, i32 %273, i32 %274)
  br label %361

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276, %256
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @SSL3_VERSION, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %324

283:                                              ; preds = %277
  %284 = load i32*, i32** %17, align 8
  %285 = load i8*, i8** %14, align 8
  %286 = load i64, i64* %13, align 8
  %287 = call i64 @EVP_DigestVerifyUpdate(i32* %284, i8* %285, i64 %286)
  %288 = icmp sle i64 %287, 0
  br i1 %288, label %305, label %289

289:                                              ; preds = %283
  %290 = load i32*, i32** %17, align 8
  %291 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @EVP_MD_CTX_ctrl(i32* %290, i32 %291, i32 %297, i32 %302)
  %304 = icmp sle i64 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %289, %283
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %307 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %308 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %309 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %310 = call i32 @SSLfatal(%struct.TYPE_16__* %306, i32 %307, i32 %308, i32 %309)
  br label %361

311:                                              ; preds = %289
  %312 = load i32*, i32** %17, align 8
  %313 = load i8*, i8** %6, align 8
  %314 = load i32, i32* %10, align 4
  %315 = call i64 @EVP_DigestVerifyFinal(i32* %312, i8* %313, i32 %314)
  %316 = icmp sle i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %319 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %320 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %321 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %322 = call i32 @SSLfatal(%struct.TYPE_16__* %318, i32 %319, i32 %320, i32 %321)
  br label %361

323:                                              ; preds = %311
  br label %340

324:                                              ; preds = %277
  %325 = load i32*, i32** %17, align 8
  %326 = load i8*, i8** %6, align 8
  %327 = load i32, i32* %10, align 4
  %328 = load i8*, i8** %14, align 8
  %329 = load i64, i64* %13, align 8
  %330 = call i32 @EVP_DigestVerify(i32* %325, i8* %326, i32 %327, i8* %328, i64 %329)
  store i32 %330, i32* %9, align 4
  %331 = load i32, i32* %9, align 4
  %332 = icmp sle i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %324
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %335 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %336 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_VERIFY, align 4
  %337 = load i32, i32* @SSL_R_BAD_SIGNATURE, align 4
  %338 = call i32 @SSLfatal(%struct.TYPE_16__* %334, i32 %335, i32 %336, i32 %337)
  br label %361

339:                                              ; preds = %324
  br label %340

340:                                              ; preds = %339, %323
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %358, label %345

345:                                              ; preds = %340
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %347 = call i64 @SSL_IS_TLS13(%struct.TYPE_16__* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %345
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %356, label %358

356:                                              ; preds = %349
  %357 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %357, i32* %8, align 4
  br label %360

358:                                              ; preds = %349, %345, %340
  %359 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %359, i32* %8, align 4
  br label %360

360:                                              ; preds = %358, %356
  br label %361

361:                                              ; preds = %360, %333, %317, %305, %270, %244, %220, %203, %193, %182, %160, %105, %90, %83, %71, %57, %47, %31
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @BIO_free(i32* %365)
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  store i32* null, i32** %369, align 8
  %370 = load i32*, i32** %17, align 8
  %371 = call i32 @EVP_MD_CTX_free(i32* %370)
  %372 = load i8*, i8** %7, align 8
  %373 = call i32 @OPENSSL_free(i8* %372)
  %374 = load i32, i32* %8, align 4
  %375 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %375)
  ret i32 %374
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i32* @X509_get0_pubkey(i32*) #2

declare dso_local i32* @ssl_cert_lookup_by_pkey(i32*, i32*) #2

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_16__*) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i64 @tls12_check_peer_sigalg(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @tls1_set_peer_legacy_sigalg(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @tls1_lookup_md(i32, i32**) #2

declare dso_local i32 @OSSL_TRACE1(i32, i8*, i8*) #2

declare dso_local i8* @EVP_MD_name(i32*) #2

declare dso_local i32 @PACKET_remaining(i32*) #2

declare dso_local i32 @EVP_PKEY_id(i32*) #2

declare dso_local i32 @EVP_PKEY_size(i32*) #2

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #2

declare dso_local i32 @get_cert_verify_tbs_data(%struct.TYPE_16__*, i8*, i8**, i64*) #2

declare dso_local i64 @EVP_DigestVerifyInit(i32*, i32**, i32*, i32*, i32*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @BUF_reverse(i8*, i8*, i32) #2

declare dso_local i64 @SSL_USE_PSS(%struct.TYPE_16__*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #2

declare dso_local i64 @EVP_DigestVerifyUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_MD_CTX_ctrl(i32*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestVerifyFinal(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestVerify(i32*, i8*, i32, i8*, i64) #2

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_16__*) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
