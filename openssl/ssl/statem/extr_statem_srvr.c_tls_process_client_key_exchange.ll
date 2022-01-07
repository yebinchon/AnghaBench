; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@SSL_PSK = common dso_local global i64 0, align 8
@SSL_kPSK = common dso_local global i64 0, align 8
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_kRSA = common dso_local global i64 0, align 8
@SSL_kRSAPSK = common dso_local global i64 0, align 8
@SSL_kDHE = common dso_local global i64 0, align 8
@SSL_kDHEPSK = common dso_local global i64 0, align 8
@SSL_kECDHE = common dso_local global i64 0, align 8
@SSL_kECDHEPSK = common dso_local global i64 0, align 8
@SSL_kSRP = common dso_local global i64 0, align 8
@SSL_kGOST = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_CIPHER_TYPE = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_client_key_exchange(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SSL_PSK, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @tls_process_cke_psk_preamble(%struct.TYPE_17__* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %124

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SSL_kPSK, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @PACKET_remaining(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %36 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE, align 4
  %37 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %38 = call i32 @SSLfatal(%struct.TYPE_17__* %34, i32 %35, i32 %36, i32 %37)
  br label %124

39:                                               ; preds = %29
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = call i32 @ssl_generate_master_secret(%struct.TYPE_17__* %40, i32* null, i32 0, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %124

44:                                               ; preds = %39
  br label %122

45:                                               ; preds = %24
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @SSL_kRSA, align 8
  %48 = load i64, i64* @SSL_kRSAPSK, align 8
  %49 = or i64 %47, %48
  %50 = and i64 %46, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @tls_process_cke_rsa(%struct.TYPE_17__* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %124

58:                                               ; preds = %52
  br label %121

59:                                               ; preds = %45
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @SSL_kDHE, align 8
  %62 = load i64, i64* @SSL_kDHEPSK, align 8
  %63 = or i64 %61, %62
  %64 = and i64 %60, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @tls_process_cke_dhe(%struct.TYPE_17__* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %124

72:                                               ; preds = %66
  br label %120

73:                                               ; preds = %59
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @SSL_kECDHE, align 8
  %76 = load i64, i64* @SSL_kECDHEPSK, align 8
  %77 = or i64 %75, %76
  %78 = and i64 %74, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @tls_process_cke_ecdhe(%struct.TYPE_17__* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %124

86:                                               ; preds = %80
  br label %119

87:                                               ; preds = %73
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @SSL_kSRP, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @tls_process_cke_srp(%struct.TYPE_17__* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %124

98:                                               ; preds = %92
  br label %118

99:                                               ; preds = %87
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @SSL_kGOST, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @tls_process_cke_gost(%struct.TYPE_17__* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  br label %124

110:                                              ; preds = %104
  br label %117

111:                                              ; preds = %99
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %114 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_KEY_EXCHANGE, align 4
  %115 = load i32, i32* @SSL_R_UNKNOWN_CIPHER_TYPE, align 4
  %116 = call i32 @SSLfatal(%struct.TYPE_17__* %112, i32 %113, i32 %114, i32 %115)
  br label %124

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %86
  br label %120

120:                                              ; preds = %119, %72
  br label %121

121:                                              ; preds = %120, %58
  br label %122

122:                                              ; preds = %121, %44
  %123 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %123, i32* %3, align 4
  br label %141

124:                                              ; preds = %111, %109, %97, %85, %71, %57, %43, %33, %23
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @OPENSSL_clear_free(i32* %129, i32 %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %124, %122
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @tls_process_cke_psk_preamble(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ssl_generate_master_secret(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @tls_process_cke_rsa(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_dhe(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_ecdhe(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_srp(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @tls_process_cke_gost(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
