; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_construct_cert_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_construct_cert_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32 }

@TLS13_TBS_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CERT_VERIFY = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@RSA_PSS_SALTLEN_DIGEST = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@EVP_CTRL_SSL3_MASTER_SECRET = common dso_local global i32 0, align 4
@NID_id_GostR3410_2001 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_256 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_cert_verify(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %13, align 8
  %19 = load i32, i32* @TLS13_TBS_PREAMBLE_SIZE, align 4
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %16, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32, %2
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %43 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %44 = call i32 @SSLfatal(%struct.TYPE_17__* %40, i32 %41, i32 %42, i32 %43)
  br label %240

45:                                               ; preds = %32
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %57 = call i32 @tls1_lookup_md(%struct.TYPE_18__* %56, i32** %7)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %62 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %63 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %64 = call i32 @SSLfatal(%struct.TYPE_17__* %60, i32 %61, i32 %62, i32 %63)
  br label %240

65:                                               ; preds = %55
  %66 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %72 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %73 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %74 = call i32 @SSLfatal(%struct.TYPE_17__* %70, i32 %71, i32 %72, i32 %73)
  br label %240

75:                                               ; preds = %65
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = call i32 @get_cert_verify_tbs_data(%struct.TYPE_17__* %76, i8* %24, i8** %12, i64* %10)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %240

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_17__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WPACKET_put_bytes_u16(i32* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %94 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %95 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %96 = call i32 @SSLfatal(%struct.TYPE_17__* %92, i32 %93, i32 %94, i32 %95)
  br label %240

97:                                               ; preds = %84, %80
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @EVP_PKEY_size(i32* %98)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i8* @OPENSSL_malloc(i64 %100)
  store i8* %101, i8** %13, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %107 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %108 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %109 = call i32 @SSLfatal(%struct.TYPE_17__* %105, i32 %106, i32 %107, i32 %108)
  br label %240

110:                                              ; preds = %97
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i64 @EVP_DigestSignInit(i32* %111, i32** %9, i32* %112, i32* null, i32* %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %119 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %120 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %121 = call i32 @SSLfatal(%struct.TYPE_17__* %117, i32 %118, i32 %119, i32 %120)
  br label %240

122:                                              ; preds = %110
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %122
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %131 = call i64 @EVP_PKEY_CTX_set_rsa_padding(i32* %129, i32 %130)
  %132 = icmp sle i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* @RSA_PSS_SALTLEN_DIGEST, align 4
  %136 = call i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %134, i32 %135)
  %137 = icmp sle i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %128
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %141 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %142 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %143 = call i32 @SSLfatal(%struct.TYPE_17__* %139, i32 %140, i32 %141, i32 %142)
  br label %240

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %122
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SSL3_VERSION, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %145
  %152 = load i32*, i32** %8, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load i64, i64* %10, align 8
  %155 = call i64 @EVP_DigestSignUpdate(i32* %152, i8* %153, i64 %154)
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %178, label %157

157:                                              ; preds = %151
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @EVP_CTRL_SSL3_MASTER_SECRET, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @EVP_MD_CTX_ctrl(i32* %158, i32 %159, i32 %165, i32 %170)
  %172 = icmp sle i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %157
  %174 = load i32*, i32** %8, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = call i64 @EVP_DigestSignFinal(i32* %174, i8* %175, i64* %11)
  %177 = icmp sle i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173, %157, %151
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %181 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %182 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %183 = call i32 @SSLfatal(%struct.TYPE_17__* %179, i32 %180, i32 %181, i32 %182)
  br label %240

184:                                              ; preds = %173
  br label %199

185:                                              ; preds = %145
  %186 = load i32*, i32** %8, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i64 @EVP_DigestSign(i32* %186, i8* %187, i64* %11, i8* %188, i64 %189)
  %191 = icmp sle i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %194 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %195 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %196 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %197 = call i32 @SSLfatal(%struct.TYPE_17__* %193, i32 %194, i32 %195, i32 %196)
  br label %240

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %184
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %214, label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210, %206, %199
  %215 = load i8*, i8** %13, align 8
  %216 = load i64, i64* %11, align 8
  %217 = call i32 @BUF_reverse(i8* %215, i32* null, i64 %216)
  br label %218

218:                                              ; preds = %214, %210
  %219 = load i32*, i32** %5, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i64, i64* %11, align 8
  %222 = call i32 @WPACKET_sub_memcpy_u16(i32* %219, i8* %220, i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %227 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERT_VERIFY, align 4
  %228 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %229 = call i32 @SSLfatal(%struct.TYPE_17__* %225, i32 %226, i32 %227, i32 %228)
  br label %240

230:                                              ; preds = %218
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %232 = call i32 @ssl3_digest_cached_records(%struct.TYPE_17__* %231, i32 0)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %240

235:                                              ; preds = %230
  %236 = load i8*, i8** %13, align 8
  %237 = call i32 @OPENSSL_free(i8* %236)
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @EVP_MD_CTX_free(i32* %238)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %245

240:                                              ; preds = %234, %224, %192, %178, %138, %116, %104, %91, %79, %69, %59, %39
  %241 = load i8*, i8** %13, align 8
  %242 = call i32 @OPENSSL_free(i8* %241)
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @EVP_MD_CTX_free(i32* %243)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %245

245:                                              ; preds = %240, %235
  %246 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @tls1_lookup_md(%struct.TYPE_18__*, i32**) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @get_cert_verify_tbs_data(%struct.TYPE_17__*, i8*, i8**, i64*) #2

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_17__*) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_size(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #2

declare dso_local i64 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #2

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #2

declare dso_local i64 @EVP_MD_CTX_ctrl(i32*, i32, i32, i32) #2

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #2

declare dso_local i64 @EVP_DigestSign(i32*, i8*, i64*, i8*, i64) #2

declare dso_local i32 @BUF_reverse(i8*, i32*, i64) #2

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #2

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
