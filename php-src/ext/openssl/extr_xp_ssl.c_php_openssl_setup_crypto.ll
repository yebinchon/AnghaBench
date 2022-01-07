; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_13__, %struct.TYPE_12__, i32* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i8*, i16 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32* }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SSL/TLS already set-up for this stream\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@STREAM_CRYPTO_IS_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"min_proto_version\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"max_proto_version\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SSL context creation failure\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"no_ticket\00", align 1
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"disable_compression\00", align 1
@SSL_OP_NO_COMPRESSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"verify_peer\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"passphrase\00", align 1
@php_openssl_passwd_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"ciphers\00", align 1
@OPENSSL_DEFAULT_STREAM_CIPHERS = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"security_level\00", align 1
@.str.10 = private unnamed_addr constant [99 x i8] c"security_level is not supported by the linked OpenSSL library - it is supported from version 1.1.0\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"alpn_protocols\00", align 1
@.str.12 = private unnamed_addr constant [92 x i8] c"alpn_protocols support is not compiled into the OpenSSL library against which PHP is linked\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"SSL handle creation failure\00", align 1
@php_openssl_socket_ops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"supplied session stream must be an SSL enabled stream\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"supplied SSL session stream is not initialized\00", align 1
@SSL_MODE_RELEASE_BUFFERS = common dso_local global i32 0, align 4
@SSL_OP_ALL = common dso_local global i32 0, align 4
@php_openssl_server_alpn_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_openssl_setup_crypto(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @E_WARNING, align 4
  %28 = call i32 @php_error_docref(i32* null, i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @FAILURE, align 4
  store i32 %29, i32* %4, align 4
  br label %311

30:                                               ; preds = %20
  %31 = load i32, i32* @SUCCESS, align 4
  store i32 %31, i32* %4, align 4
  br label %311

32:                                               ; preds = %3
  %33 = call i32 (...) @ERR_clear_error()
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STREAM_CRYPTO_IS_CLIENT, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 1
  %47 = shl i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32* (...) @SSLv23_client_method()
  br label %56

54:                                               ; preds = %32
  %55 = call i32* (...) @SSLv23_server_method()
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @SSL_CTX_new(i32* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @GET_VER_OPT_LONG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @GET_VER_OPT_LONG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @php_openssl_get_proto_version_flags(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @php_openssl_get_crypto_method_ctx_flags(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %56
  %77 = load i32, i32* @E_WARNING, align 4
  %78 = call i32 @php_error_docref(i32* null, i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @FAILURE, align 4
  store i32 %79, i32* %4, align 4
  br label %311

80:                                               ; preds = %56
  %81 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32*, i32** %15, align 8
  %85 = call i64 @zend_is_true(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %83, %80
  %92 = load i32, i32* @SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32*, i32** %15, align 8
  %100 = call i64 @zend_is_true(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %91
  %103 = load i32, i32* @SSL_OP_NO_COMPRESSION, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32*, i32** %15, align 8
  %111 = call i64 @zend_is_true(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @php_openssl_disable_peer_verification(i32* %116, i32* %117)
  br label %130

119:                                              ; preds = %109, %106
  %120 = load i32, i32* @FAILURE, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @php_openssl_enable_peer_verification(i32* %123, i32* %124)
  %126 = icmp eq i32 %120, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @FAILURE, align 4
  store i32 %128, i32* %4, align 4
  br label %311

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %113
  %131 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @SSL_CTX_set_default_passwd_cb_userdata(i32* %136, i32* %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @php_openssl_passwd_callback, align 4
  %143 = call i32 @SSL_CTX_set_default_passwd_cb(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %133, %130
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  %147 = load i8*, i8** %13, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** @OPENSSL_DEFAULT_STREAM_CIPHERS, align 8
  store i8* %150, i8** %13, align 8
  br label %151

151:                                              ; preds = %149, %144
  %152 = load i8*, i8** %13, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @SSL_CTX_set_cipher_list(i32* %157, i8* %158)
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @FAILURE, align 4
  store i32 %162, i32* %4, align 4
  br label %311

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %151
  %165 = call i64 @GET_VER_OPT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* @E_WARNING, align 4
  %169 = call i32 @php_error_docref(i32* null, i32 %168, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.10, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @GET_VER_OPT_STRING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %171)
  %173 = load i8*, i8** %14, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32, i32* @E_WARNING, align 4
  %177 = call i32 @php_error_docref(i32* null, i32 %176, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.12, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %170
  %179 = load i32, i32* @FAILURE, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @php_openssl_set_local_cert(i32* %182, i32* %183)
  %185 = icmp eq i32 %179, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @FAILURE, align 4
  store i32 %187, i32* %4, align 4
  br label %311

188:                                              ; preds = %178
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @SSL_CTX_set_options(i32* %191, i32 %192)
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %188
  %199 = load i32*, i32** %5, align 8
  %200 = call i64 @PHP_STREAM_CONTEXT(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load i32, i32* @FAILURE, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @php_openssl_set_server_specific_opts(i32* %204, i32* %207)
  %209 = icmp eq i32 %203, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i32, i32* @FAILURE, align 4
  store i32 %211, i32* %4, align 4
  br label %311

212:                                              ; preds = %202, %198, %188
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = call i32* @SSL_new(i32* %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i32* %216, i32** %218, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %212
  %224 = load i32, i32* @E_WARNING, align 4
  %225 = call i32 @php_error_docref(i32* null, i32 %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @SSL_CTX_free(i32* %228)
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 4
  store i32* null, i32** %231, align 8
  %232 = load i32, i32* @FAILURE, align 4
  store i32 %232, i32* %4, align 4
  br label %311

233:                                              ; preds = %212
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 (...) @php_openssl_get_ssl_stream_data_index()
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 @SSL_set_ex_data(i32* %236, i32 %237, i32* %238)
  br label %240

240:                                              ; preds = %233
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @SSL_set_fd(i32* %243, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %240
  %251 = load i32*, i32** %5, align 8
  %252 = call i32 @php_openssl_handle_ssl_error(i32* %251, i32 0, i32 1)
  br label %253

253:                                              ; preds = %250, %240
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = load i32*, i32** %5, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %261 = call i32 @php_openssl_init_server_reneg_limit(i32* %259, %struct.TYPE_17__* %260)
  br label %262

262:                                              ; preds = %258, %253
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = icmp ne %struct.TYPE_15__* %266, null
  br i1 %267, label %268, label %309

268:                                              ; preds = %262
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ne i32* %274, @php_openssl_socket_ops
  br i1 %275, label %276, label %279

276:                                              ; preds = %268
  %277 = load i32, i32* @E_WARNING, align 4
  %278 = call i32 @php_error_docref(i32* null, i32 %277, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %308

279:                                              ; preds = %268
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = inttoptr i64 %285 to %struct.TYPE_17__*
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = load i32, i32* @E_WARNING, align 4
  %292 = call i32 @php_error_docref(i32* null, i32 %291, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  br label %307

293:                                              ; preds = %279
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to %struct.TYPE_17__*
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = call i32 @SSL_copy_session_id(i32* %296, i32* %305)
  br label %307

307:                                              ; preds = %293, %290
  br label %308

308:                                              ; preds = %307, %276
  br label %309

309:                                              ; preds = %308, %262
  %310 = load i32, i32* @SUCCESS, align 4
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %309, %223, %210, %186, %161, %127, %76, %30, %26
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @SSLv23_client_method(...) #1

declare dso_local i32* @SSLv23_server_method(...) #1

declare dso_local i32* @SSL_CTX_new(i32*) #1

declare dso_local i32 @GET_VER_OPT_LONG(i8*, i32) #1

declare dso_local i32 @php_openssl_get_proto_version_flags(i32, i32, i32) #1

declare dso_local i32 @php_openssl_get_crypto_method_ctx_flags(i32) #1

declare dso_local i64 @GET_VER_OPT(i8*) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @php_openssl_disable_peer_verification(i32*, i32*) #1

declare dso_local i32 @php_openssl_enable_peer_verification(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_default_passwd_cb_userdata(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_default_passwd_cb(i32*, i32) #1

declare dso_local i32 @GET_VER_OPT_STRING(i8*, i8*) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @php_openssl_set_local_cert(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i64 @PHP_STREAM_CONTEXT(i32*) #1

declare dso_local i32 @php_openssl_set_server_specific_opts(i32*, i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @SSL_set_ex_data(i32*, i32, i32*) #1

declare dso_local i32 @php_openssl_get_ssl_stream_data_index(...) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @php_openssl_handle_ssl_error(i32*, i32, i32) #1

declare dso_local i32 @php_openssl_init_server_reneg_limit(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @SSL_copy_session_id(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
