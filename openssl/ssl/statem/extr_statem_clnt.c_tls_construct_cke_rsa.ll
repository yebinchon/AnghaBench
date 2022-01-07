; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_rsa.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_RSA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_MAX_MASTER_KEY_LENGTH = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL3_VERSION = common dso_local global i64 0, align 8
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@SSL_R_BAD_RSA_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @tls_construct_cke_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_rsa(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %22 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_11__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  br label %179

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @X509_get0_pubkey(i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @EVP_PKEY_get0_RSA(i32* %31)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %37 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %38 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_11__* %35, i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %179

40:                                               ; preds = %24
  %41 = load i64, i64* @SSL_MAX_MASTER_KEY_LENGTH, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i8* @OPENSSL_malloc(i64 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_11__* %47, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %179

52:                                               ; preds = %40
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %66, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %69, 2
  %71 = trunc i64 %70 to i32
  %72 = call i64 @RAND_bytes(i8* %68, i32 %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %52
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_11__* %75, i32 %76, i32 %77, i32 %78)
  br label %173

80:                                               ; preds = %52
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SSL3_VERSION, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @WPACKET_start_sub_packet_u16(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %93 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %94 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %95 = call i32 @SSLfatal(%struct.TYPE_11__* %91, i32 %92, i32 %93, i32 %94)
  br label %173

96:                                               ; preds = %86, %80
  %97 = load i32*, i32** %7, align 8
  %98 = call i32* @EVP_PKEY_CTX_new(i32* %97, i32* null)
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %8, align 8
  %103 = call i64 @EVP_PKEY_encrypt_init(i32* %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %8, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i64 @EVP_PKEY_encrypt(i32* %106, i8* null, i64* %9, i8* %107, i64 %108)
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105, %101, %96
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %114 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %115 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %116 = call i32 @SSLfatal(%struct.TYPE_11__* %112, i32 %113, i32 %114, i32 %115)
  br label %173

117:                                              ; preds = %105
  %118 = load i32*, i32** %5, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @WPACKET_allocate_bytes(i32* %118, i64 %119, i8** %6)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32*, i32** %8, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i64 @EVP_PKEY_encrypt(i32* %123, i8* %124, i64* %9, i8* %125, i64 %126)
  %128 = icmp sle i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %122, %117
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %132 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %133 = load i32, i32* @SSL_R_BAD_RSA_ENCRYPT, align 4
  %134 = call i32 @SSLfatal(%struct.TYPE_11__* %130, i32 %131, i32 %132, i32 %133)
  br label %173

135:                                              ; preds = %122
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @EVP_PKEY_CTX_free(i32* %136)
  store i32* null, i32** %8, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SSL3_VERSION, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %135
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @WPACKET_close(i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %150 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_RSA, align 4
  %151 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %152 = call i32 @SSLfatal(%struct.TYPE_11__* %148, i32 %149, i32 %150, i32 %151)
  br label %173

153:                                              ; preds = %143, %135
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @ssl_log_rsa_client_key_exchange(%struct.TYPE_11__* %154, i8* %155, i64 %156, i8* %157, i64 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  br label %173

162:                                              ; preds = %153
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store i8* %163, i8** %167, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i64 %168, i64* %172, align 8
  store i32 1, i32* %3, align 4
  br label %179

173:                                              ; preds = %161, %147, %129, %111, %90, %74
  %174 = load i8*, i8** %10, align 8
  %175 = load i64, i64* %11, align 8
  %176 = call i32 @OPENSSL_clear_free(i8* %174, i64 %175)
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @EVP_PKEY_CTX_free(i32* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %173, %162, %46, %34, %18
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_RSA(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i64 @EVP_PKEY_encrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @ssl_log_rsa_client_key_exchange(%struct.TYPE_11__*, i8*, i64, i8*, i64) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
