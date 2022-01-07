; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_dhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_dhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SKE_DHE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_DH_VALUE = common dso_local global i32 0, align 4
@SSL_SECOP_TMP_DH = common dso_local global i32 0, align 4
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_DH_KEY_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32**)* @tls_process_ske_dhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ske_dhe(%struct.TYPE_13__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @PACKET_get_length_prefixed_2(i32* %17, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @PACKET_get_length_prefixed_2(i32* %21, i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @PACKET_get_length_prefixed_2(i32* %25, i32* %10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %20, %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %31 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %32 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_13__* %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %183

34:                                               ; preds = %24
  %35 = call i32* (...) @EVP_PKEY_new()
  store i32* %35, i32** %11, align 8
  %36 = call i32* (...) @DH_new()
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %12, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %45 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_13__* %43, i32 %44, i32 %45, i32 %46)
  br label %172

48:                                               ; preds = %39
  %49 = call i32 @PACKET_data(i32* %8)
  %50 = call i64 @PACKET_remaining(i32* %8)
  %51 = trunc i64 %50 to i32
  %52 = call i32* @BN_bin2bn(i32 %49, i32 %51, i32* null)
  store i32* %52, i32** %13, align 8
  %53 = call i32 @PACKET_data(i32* %9)
  %54 = call i64 @PACKET_remaining(i32* %9)
  %55 = trunc i64 %54 to i32
  %56 = call i32* @BN_bin2bn(i32 %53, i32 %55, i32* null)
  store i32* %56, i32** %14, align 8
  %57 = call i32 @PACKET_data(i32* %10)
  %58 = call i64 @PACKET_remaining(i32* %10)
  %59 = trunc i64 %58 to i32
  %60 = call i32* @BN_bin2bn(i32 %57, i32 %59, i32* null)
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %48
  %64 = load i32*, i32** %14, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %15, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66, %63, %48
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %72 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %73 = load i32, i32* @ERR_R_BN_LIB, align 4
  %74 = call i32 @SSLfatal(%struct.TYPE_13__* %70, i32 %71, i32 %72, i32 %73)
  br label %172

75:                                               ; preds = %66
  %76 = load i32*, i32** %15, align 8
  %77 = call i64 @BN_is_zero(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %82 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %83 = load i32, i32* @SSL_R_BAD_DH_VALUE, align 4
  %84 = call i32 @SSLfatal(%struct.TYPE_13__* %80, i32 %81, i32 %82, i32 %83)
  br label %172

85:                                               ; preds = %75
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @DH_set0_pqg(i32* %86, i32* %87, i32* null, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %94 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %95 = load i32, i32* @ERR_R_BN_LIB, align 4
  %96 = call i32 @SSLfatal(%struct.TYPE_13__* %92, i32 %93, i32 %94, i32 %95)
  br label %172

97:                                               ; preds = %85
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i64 @DH_check_params(i32* %98, i32* %16)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101, %97
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %107 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %108 = load i32, i32* @SSL_R_BAD_DH_VALUE, align 4
  %109 = call i32 @SSLfatal(%struct.TYPE_13__* %105, i32 %106, i32 %107, i32 %108)
  br label %172

110:                                              ; preds = %101
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @DH_set0_key(i32* %111, i32* %112, i32* null)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %118 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %119 = load i32, i32* @ERR_R_BN_LIB, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_13__* %116, i32 %117, i32 %118, i32 %119)
  br label %172

121:                                              ; preds = %110
  store i32* null, i32** %15, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = load i32, i32* @SSL_SECOP_TMP_DH, align 4
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @DH_security_bits(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @ssl_security(%struct.TYPE_13__* %122, i32 %123, i32 %125, i32 0, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %132 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %133 = load i32, i32* @SSL_R_DH_KEY_TOO_SMALL, align 4
  %134 = call i32 @SSLfatal(%struct.TYPE_13__* %130, i32 %131, i32 %132, i32 %133)
  br label %172

135:                                              ; preds = %121
  %136 = load i32*, i32** %11, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = call i64 @EVP_PKEY_assign_DH(i32* %136, i32* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %143 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_DHE, align 4
  %144 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %145 = call i32 @SSLfatal(%struct.TYPE_13__* %141, i32 %142, i32 %143, i32 %144)
  br label %172

146:                                              ; preds = %135
  %147 = load i32*, i32** %11, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i32* %147, i32** %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SSL_aRSA, align 4
  %159 = load i32, i32* @SSL_aDSS, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %146
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32* @X509_get0_pubkey(i32 %168)
  %170 = load i32**, i32*** %7, align 8
  store i32* %169, i32** %170, align 8
  br label %171

171:                                              ; preds = %163, %146
  store i32 1, i32* %4, align 4
  br label %183

172:                                              ; preds = %140, %129, %115, %104, %91, %79, %69, %42
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @BN_free(i32* %173)
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @BN_free(i32* %175)
  %177 = load i32*, i32** %15, align 8
  %178 = call i32 @BN_free(i32* %177)
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @DH_free(i32* %179)
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @EVP_PKEY_free(i32* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %172, %171, %28
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @DH_check_params(i32*, i32*) #1

declare dso_local i32 @DH_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @ssl_security(%struct.TYPE_13__*, i32, i32, i32, i32*) #1

declare dso_local i32 @DH_security_bits(i32*) #1

declare dso_local i64 @EVP_PKEY_assign_DH(i32*, i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
