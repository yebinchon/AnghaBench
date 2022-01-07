; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ssl3_check_cert_and_algorithm.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ssl3_check_cert_and_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@SSL_aCERT = common dso_local global i64 0, align 8
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM = common dso_local global i32 0, align 4
@SSL_R_MISSING_SIGNING_CERT = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_R_BAD_ECC_CERT = common dso_local global i32 0, align 4
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_PKEY_RSA = common dso_local global i64 0, align 8
@SSL_R_MISSING_RSA_ENCRYPTING_CERT = common dso_local global i32 0, align 4
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_check_cert_and_algorithm(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @SSL_aCERT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %109

27:                                               ; preds = %1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @X509_get0_pubkey(i32 %32)
  %34 = call %struct.TYPE_15__* @ssl_cert_lookup_by_pkey(i32 %33, i64* %5)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = icmp eq %struct.TYPE_15__* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %38, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %27
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %47 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %48 = load i32, i32* @SSL_R_MISSING_SIGNING_CERT, align 4
  %49 = call i32 @SSLfatal(%struct.TYPE_16__* %45, i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %109

50:                                               ; preds = %37
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @SSL_aECDSA, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i64 @ssl_check_srvr_ecc_cert_and_alg(i32 %63, %struct.TYPE_16__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %109

68:                                               ; preds = %58
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %71 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %72 = load i32, i32* @SSL_R_BAD_ECC_CERT, align 4
  %73 = call i32 @SSLfatal(%struct.TYPE_16__* %69, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %109

74:                                               ; preds = %50
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @SSL_kRSA, align 8
  %77 = load i64, i64* @SSL_kRSAPSK, align 8
  %78 = or i64 %76, %77
  %79 = and i64 %75, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @SSL_PKEY_RSA, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %88 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %89 = load i32, i32* @SSL_R_MISSING_RSA_ENCRYPTING_CERT, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_16__* %86, i32 %87, i32 %88, i32 %89)
  store i32 0, i32* %2, align 4
  br label %109

91:                                               ; preds = %81, %74
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @SSL_kDHE, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %105 = load i32, i32* @SSL_F_SSL3_CHECK_CERT_AND_ALGORITHM, align 4
  %106 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %107 = call i32 @SSLfatal(%struct.TYPE_16__* %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %2, align 4
  br label %109

108:                                              ; preds = %96, %91
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %102, %85, %68, %67, %44, %26
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_15__* @ssl_cert_lookup_by_pkey(i32, i64*) #1

declare dso_local i32 @X509_get0_pubkey(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @ssl_check_srvr_ecc_cert_and_alg(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
