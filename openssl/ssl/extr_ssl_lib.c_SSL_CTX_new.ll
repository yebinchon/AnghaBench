; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_CTX_new.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_CTX_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i8*, i64, %struct.TYPE_19__, i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, %struct.TYPE_20__*, i32*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32 (...)* }
%struct.TYPE_18__ = type { i32 }

@SSL_F_SSL_CTX_NEW = common dso_local global i32 0, align 4
@SSL_R_NULL_SSL_METHOD_PASSED = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@SSL_R_X509_VERIFICATION_SETUP_PROBLEMS = common dso_local global i32 0, align 4
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@SSL_SESSION_CACHE_MAX_SIZE_DEFAULT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_MAX_CERT_LIST_DEFAULT = common dso_local global i32 0, align 4
@SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@ssl_session_hash = common dso_local global i32 0, align 4
@ssl_session_cmp = common dso_local global i32 0, align 4
@SSL_R_LIBRARY_HAS_NO_CIPHERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ssl3-md5\00", align 1
@SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ssl3-sha1\00", align 1
@SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_SSL_CTX = common dso_local global i32 0, align 4
@SSL_ENC_FLAG_DTLS = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i8* null, align 8
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_OP_LEGACY_SERVER_CONNECT = common dso_local global i32 0, align 4
@SSL_OP_NO_COMPRESSION = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@TLSEXT_STATUSTYPE_nothing = common dso_local global i32 0, align 4
@OPENSSL_SSL_CLIENT_ENGINE_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @SSL_CTX_new(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %6 = icmp eq %struct.TYPE_20__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %9 = load i32, i32* @SSL_R_NULL_SSL_METHOD_PASSED, align 4
  %10 = call i32 @SSLerr(i32 %8, i32 %9)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %295

11:                                               ; preds = %1
  %12 = load i32, i32* @OPENSSL_INIT_LOAD_SSL_STRINGS, align 4
  %13 = call i32 @OPENSSL_init_ssl(i32 %12, i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %295

16:                                               ; preds = %11
  %17 = call i64 (...) @SSL_get_ex_data_X509_STORE_CTX_idx()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %21 = load i32, i32* @SSL_R_X509_VERIFICATION_SETUP_PROBLEMS, align 4
  %22 = call i32 @SSLerr(i32 %20, i32 %21)
  br label %288

23:                                               ; preds = %16
  %24 = call %struct.TYPE_21__* @OPENSSL_zalloc(i32 224)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %4, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %288

28:                                               ; preds = %23
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 19
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 31
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 30
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 29
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 28
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @SSL_SESSION_CACHE_MAX_SIZE_DEFAULT, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 27
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = call i32 (...) %47()
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 26
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 25
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 25
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %28
  %61 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %62 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %63 = call i32 @SSLerr(i32 %61, i32 %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = call i32 @OPENSSL_free(%struct.TYPE_21__* %64)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %295

66:                                               ; preds = %28
  %67 = load i32, i32* @SSL_MAX_CERT_LIST_DEFAULT, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 24
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 23
  store i32 %70, i32* %72, align 8
  %73 = call i32* (...) @ssl_cert_new()
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 16
  store i32* %73, i32** %75, align 8
  %76 = icmp eq i32* %73, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %288

78:                                               ; preds = %66
  %79 = load i32, i32* @ssl_session_hash, align 4
  %80 = load i32, i32* @ssl_session_cmp, align 4
  %81 = call i32* @lh_SSL_SESSION_new(i32 %79, i32 %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 22
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 22
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %288

89:                                               ; preds = %78
  %90 = call i32* (...) @X509_STORE_new()
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 21
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 21
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %288

98:                                               ; preds = %89
  %99 = call i32* (...) @CTLOG_STORE_new()
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 20
  store i32* %99, i32** %101, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 20
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %288

107:                                              ; preds = %98
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = call i32 (...) @OSSL_default_ciphersuites()
  %110 = call i32 @SSL_CTX_set_ciphersuites(%struct.TYPE_21__* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %288

113:                                              ; preds = %107
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 19
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 18
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 15
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 17
  %124 = call i32 (...) @OSSL_default_cipher_list()
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 16
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @ssl_create_cipher_list(%struct.TYPE_20__* %116, i32 %119, i32* %121, i32* %123, i32 %124, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %113
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 15
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @sk_SSL_CIPHER_num(i32 %133)
  %135 = icmp sle i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130, %113
  %137 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %138 = load i32, i32* @SSL_R_LIBRARY_HAS_NO_CIPHERS, align 4
  %139 = call i32 @SSLerr(i32 %137, i32 %138)
  br label %292

140:                                              ; preds = %130
  %141 = call i32* (...) @X509_VERIFY_PARAM_new()
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 14
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 14
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %288

149:                                              ; preds = %140
  %150 = call i8* @EVP_get_digestbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 13
  store i32* %151, i32** %153, align 8
  %154 = icmp eq i32* %151, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %157 = load i32, i32* @SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES, align 4
  %158 = call i32 @SSLerr(i32 %156, i32 %157)
  br label %292

159:                                              ; preds = %149
  %160 = call i8* @EVP_get_digestbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 12
  store i32* %161, i32** %163, align 8
  %164 = icmp eq i32* %161, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %167 = load i32, i32* @SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES, align 4
  %168 = call i32 @SSLerr(i32 %166, i32 %167)
  br label %292

169:                                              ; preds = %159
  %170 = call i8* (...) @sk_X509_NAME_new_null()
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 11
  store i32* %171, i32** %173, align 8
  %174 = icmp eq i32* %171, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %288

176:                                              ; preds = %169
  %177 = call i8* (...) @sk_X509_NAME_new_null()
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 10
  store i32* %178, i32** %180, align 8
  %181 = icmp eq i32* %178, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %288

183:                                              ; preds = %176
  %184 = load i32, i32* @CRYPTO_EX_INDEX_SSL_CTX, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 9
  %188 = call i32 @CRYPTO_new_ex_data(i32 %184, %struct.TYPE_21__* %185, i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  br label %288

191:                                              ; preds = %183
  %192 = call %struct.TYPE_17__* @OPENSSL_secure_zalloc(i32 8)
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 2
  store %struct.TYPE_17__* %192, %struct.TYPE_17__** %195, align 8
  %196 = icmp eq %struct.TYPE_17__* %192, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %288

198:                                              ; preds = %191
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SSL_ENC_FLAG_DTLS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %198
  %208 = call i32 (...) @SSL_COMP_get_compression_methods()
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %198
  %212 = load i8*, i8** @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 7
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 6
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @RAND_bytes(i32 %221, i32 4)
  %223 = icmp sle i64 %222, 0
  br i1 %223, label %242, label %224

224:                                              ; preds = %211
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @RAND_priv_bytes(i32 %230, i32 4)
  %232 = icmp sle i64 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %224
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @RAND_priv_bytes(i32 %239, i32 4)
  %241 = icmp sle i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %233, %224, %211
  %243 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %242, %233
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @RAND_priv_bytes(i32 %252, i32 4)
  %254 = icmp sle i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %288

256:                                              ; preds = %248
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = call i32 @SSL_CTX_SRP_CTX_init(%struct.TYPE_21__* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  br label %288

261:                                              ; preds = %256
  %262 = load i32, i32* @SSL_OP_LEGACY_SERVER_CONNECT, align 4
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* @SSL_OP_NO_COMPRESSION, align 4
  %268 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* @TLSEXT_STATUSTYPE_nothing, align 4
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 4
  store i64 0, i64* %279, align 8
  %280 = load i8*, i8** @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 3
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 2
  store i32 2, i32* %284, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %286 = call i32 @ssl_ctx_system_config(%struct.TYPE_21__* %285)
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %287, %struct.TYPE_21__** %2, align 8
  br label %295

288:                                              ; preds = %260, %255, %197, %190, %182, %175, %148, %112, %106, %97, %88, %77, %27, %19
  %289 = load i32, i32* @SSL_F_SSL_CTX_NEW, align 4
  %290 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %291 = call i32 @SSLerr(i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %165, %155, %136
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %294 = call i32 @SSL_CTX_free(%struct.TYPE_21__* %293)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %2, align 8
  br label %295

295:                                              ; preds = %292, %261, %60, %15, %7
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %296
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @OPENSSL_init_ssl(i32, i32*) #1

declare dso_local i64 @SSL_get_ex_data_X509_STORE_CTX_idx(...) #1

declare dso_local %struct.TYPE_21__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_21__*) #1

declare dso_local i32* @ssl_cert_new(...) #1

declare dso_local i32* @lh_SSL_SESSION_new(i32, i32) #1

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32* @CTLOG_STORE_new(...) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @OSSL_default_ciphersuites(...) #1

declare dso_local i32 @ssl_create_cipher_list(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @OSSL_default_cipher_list(...) #1

declare dso_local i64 @sk_SSL_CIPHER_num(i32) #1

declare dso_local i32* @X509_VERIFY_PARAM_new(...) #1

declare dso_local i8* @EVP_get_digestbyname(i8*) #1

declare dso_local i8* @sk_X509_NAME_new_null(...) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_17__* @OPENSSL_secure_zalloc(i32) #1

declare dso_local i32 @SSL_COMP_get_compression_methods(...) #1

declare dso_local i64 @RAND_bytes(i32, i32) #1

declare dso_local i64 @RAND_priv_bytes(i32, i32) #1

declare dso_local i32 @SSL_CTX_SRP_CTX_init(%struct.TYPE_21__*) #1

declare dso_local i32 @ssl_ctx_system_config(%struct.TYPE_21__*) #1

declare dso_local i32 @SSL_CTX_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
