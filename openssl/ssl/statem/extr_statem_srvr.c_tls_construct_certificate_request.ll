; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_certificate_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@SSL_PHA_REQUEST_PENDING = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@WPACKET_FLAGS_NON_ZERO_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_certificate_request(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = call i64 @SSL_IS_TLS13(%struct.TYPE_17__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %81

11:                                               ; preds = %2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSL_PHA_REQUEST_PENDING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %11
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @OPENSSL_free(i32* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  store i32 32, i32* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @OPENSSL_malloc(i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = icmp eq i32* %27, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %17
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @RAND_bytes(i32* %34, i32 %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @WPACKET_sub_memcpy_u8(i32* %41, i32* %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %40, %31, %17
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %53 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, align 4
  %54 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %55 = call i32 @SSLfatal(%struct.TYPE_17__* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %151

56:                                               ; preds = %40
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i32 @tls13_restore_handshake_digest_for_pha(%struct.TYPE_17__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %151

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %11
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @WPACKET_put_bytes_u8(i32* %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %69 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, align 4
  %70 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %71 = call i32 @SSLfatal(%struct.TYPE_17__* %67, i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %151

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %77 = call i32 @tls_construct_extensions(%struct.TYPE_17__* %74, i32* %75, i32 %76, i32* null, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %151

80:                                               ; preds = %73
  br label %142

81:                                               ; preds = %2
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @WPACKET_start_sub_packet_u8(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @ssl3_get_req_cert_type(%struct.TYPE_17__* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @WPACKET_close(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90, %85, %81
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %97 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SSLfatal(%struct.TYPE_17__* %95, i32 %96, i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %151

100:                                              ; preds = %90
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = call i64 @SSL_USE_SIGALGS(%struct.TYPE_17__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = call i64 @tls12_get_psigalgs(%struct.TYPE_17__* %105, i32 1, i32** %6)
  store i64 %106, i64* %7, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @WPACKET_start_sub_packet_u16(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @WPACKET_FLAGS_NON_ZERO_LENGTH, align 4
  %113 = call i32 @WPACKET_set_flags(i32* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @tls12_copy_sigalgs(%struct.TYPE_17__* %116, i32* %117, i32* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @WPACKET_close(i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %122, %115, %110, %104
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %129 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CERTIFICATE_REQUEST, align 4
  %130 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %131 = call i32 @SSLfatal(%struct.TYPE_17__* %127, i32 %128, i32 %129, i32 %130)
  store i32 0, i32* %3, align 4
  br label %151

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %100
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = call i32 @get_ca_names(%struct.TYPE_17__* %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @construct_ca_names(%struct.TYPE_17__* %134, i32 %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %151

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %80
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %142, %140, %126, %94, %79, %66, %60, %50
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_17__*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i64 @RAND_bytes(i32*, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32*, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @tls13_restore_handshake_digest_for_pha(%struct.TYPE_17__*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_17__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @ssl3_get_req_cert_type(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i64 @SSL_USE_SIGALGS(%struct.TYPE_17__*) #1

declare dso_local i64 @tls12_get_psigalgs(%struct.TYPE_17__*, i32, i32**) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_set_flags(i32*, i32) #1

declare dso_local i32 @tls12_copy_sigalgs(%struct.TYPE_17__*, i32*, i32*, i64) #1

declare dso_local i32 @construct_ca_names(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @get_ca_names(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
