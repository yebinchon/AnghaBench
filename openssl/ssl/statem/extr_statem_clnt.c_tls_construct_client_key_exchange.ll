; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32, i32*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_client_key_exchange(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SSL_PSK, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @tls_construct_cke_psk_preamble(%struct.TYPE_16__* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %107

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SSL_kRSA, align 8
  %27 = load i64, i64* @SSL_kRSAPSK, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %25, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @tls_construct_cke_rsa(%struct.TYPE_16__* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %107

37:                                               ; preds = %31
  br label %106

38:                                               ; preds = %24
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @SSL_kDHE, align 8
  %41 = load i64, i64* @SSL_kDHEPSK, align 8
  %42 = or i64 %40, %41
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @tls_construct_cke_dhe(%struct.TYPE_16__* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %107

51:                                               ; preds = %45
  br label %105

52:                                               ; preds = %38
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @SSL_kECDHE, align 8
  %55 = load i64, i64* @SSL_kECDHEPSK, align 8
  %56 = or i64 %54, %55
  %57 = and i64 %53, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @tls_construct_cke_ecdhe(%struct.TYPE_16__* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %107

65:                                               ; preds = %59
  br label %104

66:                                               ; preds = %52
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @SSL_kGOST, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @tls_construct_cke_gost(%struct.TYPE_16__* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %107

77:                                               ; preds = %71
  br label %103

78:                                               ; preds = %66
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @SSL_kSRP, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @tls_construct_cke_srp(%struct.TYPE_16__* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %107

89:                                               ; preds = %83
  br label %102

90:                                               ; preds = %78
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @SSL_kPSK, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %98 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_KEY_EXCHANGE, align 4
  %99 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %100 = call i32 @SSLfatal(%struct.TYPE_16__* %96, i32 %97, i32 %98, i32 %99)
  br label %107

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %51
  br label %106

106:                                              ; preds = %105, %37
  store i32 1, i32* %3, align 4
  br label %138

107:                                              ; preds = %95, %88, %76, %64, %50, %36, %23
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @OPENSSL_clear_free(i32* %112, i32 %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @OPENSSL_clear_free(i32* %127, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %107, %106
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @tls_construct_cke_psk_preamble(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tls_construct_cke_rsa(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tls_construct_cke_dhe(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tls_construct_cke_ecdhe(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tls_construct_cke_gost(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @tls_construct_cke_srp(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
