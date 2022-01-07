; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_free.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)* }

@.str = private unnamed_addr constant [4 x i8] c"SSL\00", align 1
@CRYPTO_EX_INDEX_SSL = common dso_local global i32 0, align 4
@X509_EXTENSION_free = common dso_local global i32 0, align 4
@OCSP_RESPID_free = common dso_local global i32 0, align 4
@X509_NAME_free = common dso_local global i32 0, align 4
@X509_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SSL_free(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = icmp eq %struct.TYPE_16__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %234

7:                                                ; preds = %1
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 30
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CRYPTO_DOWN_REF(i32* %9, i32* %3, i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %234

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @REF_ASSERT_ISNT(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 29
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @X509_VERIFY_PARAM_free(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 28
  %30 = call i32 @dane_final(i32* %29)
  %31 = load i32, i32* @CRYPTO_EX_INDEX_SSL, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 27
  %35 = call i32 @CRYPTO_free_ex_data(i32 %31, %struct.TYPE_16__* %32, i32* %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 26
  %38 = call i32 @RECORD_LAYER_release(i32* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = call i32 @ssl_free_wbio_buffer(%struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 25
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @BIO_free_all(i32* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 25
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 24
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @BIO_free_all(i32* %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 24
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 23
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @BUF_MEM_free(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 22
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sk_SSL_CIPHER_free(i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 21
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sk_SSL_CIPHER_free(i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 20
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sk_SSL_CIPHER_free(i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sk_SSL_CIPHER_free(i32 %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 18
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %19
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = call i32 @ssl_clear_bad_session(%struct.TYPE_16__* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 18
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @SSL_SESSION_free(i32* %82)
  br label %84

84:                                               ; preds = %77, %19
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 17
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @SSL_SESSION_free(i32* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 16
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = call i32 @OPENSSL_free(%struct.TYPE_16__* %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = call i32 @clear_ciphers(%struct.TYPE_16__* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ssl_cert_free(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 14
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = call i32 @OPENSSL_free(%struct.TYPE_16__* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 9
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = call i32 @OPENSSL_free(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SSL_CTX_free(i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = call i32 @OPENSSL_free(%struct.TYPE_16__* %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = call i32 @OPENSSL_free(%struct.TYPE_16__* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = call i32 @OPENSSL_free(%struct.TYPE_16__* %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = call i32 @OPENSSL_free(%struct.TYPE_16__* %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @X509_EXTENSION_free, align 4
  %138 = call i32 @sk_X509_EXTENSION_pop_free(i32 %136, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @OCSP_RESPID_free, align 4
  %145 = call i32 @sk_OCSP_RESPID_pop_free(i32 %143, i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SCT_LIST_free(i32 %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = call i32 @OPENSSL_free(%struct.TYPE_16__* %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = call i32 @OPENSSL_free(%struct.TYPE_16__* %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = call i32 @OPENSSL_free(%struct.TYPE_16__* %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = call i32 @OPENSSL_free(%struct.TYPE_16__* %169)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 11
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = call i32 @OPENSSL_free(%struct.TYPE_16__* %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 10
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = call i32 @OPENSSL_free(%struct.TYPE_16__* %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @EVP_MD_CTX_free(i32 %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @X509_NAME_free, align 4
  %187 = call i32 @sk_X509_NAME_pop_free(i32 %185, i32 %186)
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @X509_NAME_free, align 4
  %192 = call i32 @sk_X509_NAME_pop_free(i32 %190, i32 %191)
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @X509_free, align 4
  %197 = call i32 @sk_X509_pop_free(i32 %195, i32 %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = icmp ne %struct.TYPE_14__* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %84
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = call i32 %207(%struct.TYPE_16__* %208)
  br label %210

210:                                              ; preds = %202, %84
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @SSL_CTX_free(i32 %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ASYNC_WAIT_CTX_free(i32 %217)
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = call i32 @OPENSSL_free(%struct.TYPE_16__* %222)
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @sk_SRTP_PROTECTION_PROFILE_free(i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @CRYPTO_THREAD_lock_free(i32 %230)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %233 = call i32 @OPENSSL_free(%struct.TYPE_16__* %232)
  br label %234

234:                                              ; preds = %210, %18, %6
  ret void
}

declare dso_local i32 @CRYPTO_DOWN_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32) #1

declare dso_local i32 @dane_final(i32*) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @RECORD_LAYER_release(i32*) #1

declare dso_local i32 @ssl_free_wbio_buffer(%struct.TYPE_16__*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BUF_MEM_free(i32) #1

declare dso_local i32 @sk_SSL_CIPHER_free(i32) #1

declare dso_local i32 @ssl_clear_bad_session(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_16__*) #1

declare dso_local i32 @clear_ciphers(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl_cert_free(i32) #1

declare dso_local i32 @SSL_CTX_free(i32) #1

declare dso_local i32 @sk_X509_EXTENSION_pop_free(i32, i32) #1

declare dso_local i32 @sk_OCSP_RESPID_pop_free(i32, i32) #1

declare dso_local i32 @SCT_LIST_free(i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32) #1

declare dso_local i32 @sk_X509_NAME_pop_free(i32, i32) #1

declare dso_local i32 @sk_X509_pop_free(i32, i32) #1

declare dso_local i32 @ASYNC_WAIT_CTX_free(i32) #1

declare dso_local i32 @sk_SRTP_PROTECTION_PROFILE_free(i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
