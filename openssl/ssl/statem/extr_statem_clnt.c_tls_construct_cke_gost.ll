; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_gost.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_cke_gost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@NID_id_GostR3411_94 = common dso_local global i32 0, align 4
@SSL_aGOST12 = common dso_local global i32 0, align 4
@NID_id_GostR3411_2012_256 = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CKE_GOST = common dso_local global i32 0, align 4
@SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_ENCRYPT = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_SET_IV = common dso_local global i32 0, align 4
@SSL_R_LIBRARY_BUG = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @tls_construct_cke_gost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_construct_cke_gost(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32, i32* @NID_id_GostR3411_94, align 4
  store i32 %16, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SSL_aGOST12, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @NID_id_GostR3411_2012_256, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %40 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %41 = load i32, i32* @SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_12__* %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %196

43:                                               ; preds = %29
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @X509_get0_pubkey(i32* %44)
  %46 = call i32* @EVP_PKEY_CTX_new(i32 %45, i32* null)
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @SSLfatal(%struct.TYPE_12__* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %196

55:                                               ; preds = %43
  store i64 32, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i8* @OPENSSL_malloc(i64 %56)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %63 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %64 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %65 = call i32 @SSLfatal(%struct.TYPE_12__* %61, i32 %62, i32 %63, i32 %64)
  br label %188

66:                                               ; preds = %55
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @EVP_PKEY_encrypt_init(i32* %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @RAND_bytes(i8* %71, i32 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %79 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %80 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %81 = call i32 @SSLfatal(%struct.TYPE_12__* %77, i32 %78, i32 %79, i32 %80)
  br label %188

82:                                               ; preds = %70
  %83 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %115, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @EVP_get_digestbynid(i32 %88)
  %90 = call i64 @EVP_DigestInit(i32* %87, i32 %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %86
  %93 = load i32*, i32** %12, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %99 = call i64 @EVP_DigestUpdate(i32* %93, i32 %97, i32 %98)
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %92
  %102 = load i32*, i32** %12, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %108 = call i64 @EVP_DigestUpdate(i32* %102, i32 %106, i32 %107)
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %113 = call i64 @EVP_DigestFinal_ex(i32* %111, i8* %112, i32* %9)
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110, %101, %92, %86, %82
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %118 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %119 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_12__* %116, i32 %117, i32 %118, i32 %119)
  br label %188

121:                                              ; preds = %110
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @EVP_MD_CTX_free(i32* %122)
  store i32* null, i32** %12, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* @EVP_PKEY_OP_ENCRYPT, align 4
  %126 = load i32, i32* @EVP_PKEY_CTRL_SET_IV, align 4
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %128 = call i64 @EVP_PKEY_CTX_ctrl(i32* %124, i32 -1, i32 %125, i32 %126, i32 8, i8* %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %133 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %134 = load i32, i32* @SSL_R_LIBRARY_BUG, align 4
  %135 = call i32 @SSLfatal(%struct.TYPE_12__* %131, i32 %132, i32 %133, i32 %134)
  br label %188

136:                                              ; preds = %121
  store i64 255, i64* %8, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %139 = load i8*, i8** %14, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i64 @EVP_PKEY_encrypt(i32* %137, i8* %138, i64* %8, i8* %139, i64 %140)
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %146 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %147 = load i32, i32* @SSL_R_LIBRARY_BUG, align 4
  %148 = call i32 @SSLfatal(%struct.TYPE_12__* %144, i32 %145, i32 %146, i32 %147)
  br label %188

149:                                              ; preds = %136
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %152 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @WPACKET_put_bytes_u8(i32* %150, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = load i64, i64* %8, align 8
  %158 = icmp uge i64 %157, 128
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @WPACKET_put_bytes_u8(i32* %160, i32 129)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159, %156
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @WPACKET_sub_memcpy_u8(i32* %164, i8* %165, i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %163, %159, %149
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %172 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CKE_GOST, align 4
  %173 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %174 = call i32 @SSLfatal(%struct.TYPE_12__* %170, i32 %171, i32 %172, i32 %173)
  br label %188

175:                                              ; preds = %163
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @EVP_PKEY_CTX_free(i32* %176)
  %178 = load i8*, i8** %14, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i8* %178, i8** %182, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store i64 %183, i64* %187, align 8
  store i32 1, i32* %3, align 4
  br label %196

188:                                              ; preds = %169, %143, %130, %115, %76, %60
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @EVP_PKEY_CTX_free(i32* %189)
  %191 = load i8*, i8** %14, align 8
  %192 = load i64, i64* %15, align 8
  %193 = call i32 @OPENSSL_clear_free(i8* %191, i64 %192)
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @EVP_MD_CTX_free(i32* %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %188, %175, %49, %37
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32, i32*) #1

declare dso_local i32 @X509_get0_pubkey(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestInit(i32*, i32) #1

declare dso_local i32 @EVP_get_digestbynid(i32) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @EVP_PKEY_encrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
