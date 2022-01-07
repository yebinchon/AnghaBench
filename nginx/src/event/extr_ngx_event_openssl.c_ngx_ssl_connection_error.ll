; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_connection_error.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_connection_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@NGX_ECONNRESET = common dso_local global i32 0, align 4
@NGX_EPIPE = common dso_local global i32 0, align 4
@NGX_ENOTCONN = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@NGX_ECONNREFUSED = common dso_local global i32 0, align 4
@NGX_ENETDOWN = common dso_local global i32 0, align 4
@NGX_ENETUNREACH = common dso_local global i32 0, align 4
@NGX_EHOSTDOWN = common dso_local global i32 0, align 4
@NGX_EHOSTUNREACH = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_BLOCK_CIPHER_PAD_IS_WRONG = common dso_local global i32 0, align 4
@SSL_R_DIGEST_CHECK_FAILED = common dso_local global i32 0, align 4
@SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST = common dso_local global i32 0, align 4
@SSL_R_EXCESSIVE_MESSAGE_SIZE = common dso_local global i32 0, align 4
@SSL_R_HTTPS_PROXY_REQUEST = common dso_local global i32 0, align 4
@SSL_R_HTTP_REQUEST = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_NO_CIPHERS_SPECIFIED = common dso_local global i32 0, align 4
@SSL_R_NO_COMPRESSION_SPECIFIED = common dso_local global i32 0, align 4
@SSL_R_NO_SHARED_CIPHER = common dso_local global i32 0, align 4
@SSL_R_RECORD_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_RECORD = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_ALERT_TYPE = common dso_local global i32 0, align 4
@SSL_R_UNKNOWN_PROTOCOL = common dso_local global i32 0, align 4
@SSL_R_UNSUPPORTED_PROTOCOL = common dso_local global i32 0, align 4
@SSL_R_WRONG_VERSION_NUMBER = common dso_local global i32 0, align 4
@SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@NGX_ECONNABORTED = common dso_local global i32 0, align 4
@SSL_R_CALLBACK_FAILED = common dso_local global i32 0, align 4
@SSL_R_CERT_CB_ERROR = common dso_local global i32 0, align 4
@SSL_R_CLIENTHELLO_TLSEXT = common dso_local global i32 0, align 4
@SSL_R_INAPPROPRIATE_FALLBACK = common dso_local global i32 0, align 4
@SSL_R_NO_CIPHERS_PASSED = common dso_local global i32 0, align 4
@SSL_R_NO_COMMON_SIGNATURE_ALGORITHMS = common dso_local global i32 0, align 4
@SSL_R_NO_SHARED_GROUP = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@SSL_R_PARSE_TLSEXT = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATE_EXT_TOO_LONG = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_ENCODING_ERR = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_SCSV_RECEIVED_WHEN_RENEGOTIATING = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_DECOMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_NO_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_SSLV3_ALERT_UNSUPPORTED_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_ACCESS_DENIED = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_EXPORT_RESTRICTION = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_INSUFFICIENT_SECURITY = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_UNKNOWN_CA = common dso_local global i32 0, align 4
@SSL_R_TLSV1_ALERT_USER_CANCELLED = common dso_local global i32 0, align 4
@SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED = common dso_local global i32 0, align 4
@SSL_R_VERSION_TOO_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*)* @ngx_ssl_connection_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_ssl_connection_error(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @NGX_LOG_CRIT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NGX_ECONNRESET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NGX_EPIPE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NGX_ENOTCONN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NGX_ECONNREFUSED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NGX_ENETDOWN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NGX_ENETUNREACH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NGX_EHOSTDOWN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NGX_EHOSTUNREACH, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47, %43, %39, %35, %31, %27, %23, %19, %15
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %59 [
    i32 129, label %55
    i32 128, label %55
    i32 130, label %57
  ]

55:                                               ; preds = %51, %51
  %56 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %56, i32* %10, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %58, i32* %10, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57, %55
  br label %61

61:                                               ; preds = %60, %47
  br label %159

62:                                               ; preds = %4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SSL_ERROR_SSL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %158

66:                                               ; preds = %62
  %67 = call i32 (...) @ERR_peek_error()
  %68 = call i32 @ERR_GET_REASON(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %147, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SSL_R_BLOCK_CIPHER_PAD_IS_WRONG, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %147, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SSL_R_DIGEST_CHECK_FAILED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %147, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %147, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %147, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @SSL_R_HTTPS_PROXY_REQUEST, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %147, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SSL_R_HTTP_REQUEST, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %147, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %147, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @SSL_R_NO_CIPHERS_SPECIFIED, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %147, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SSL_R_NO_COMPRESSION_SPECIFIED, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %147, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @SSL_R_NO_SHARED_CIPHER, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %147, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SSL_R_RECORD_LENGTH_MISMATCH, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %147, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %147, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SSL_R_UNEXPECTED_RECORD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %147, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @SSL_R_UNKNOWN_ALERT_TYPE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %147, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @SSL_R_UNKNOWN_PROTOCOL, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %147, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @SSL_R_UNSUPPORTED_PROTOCOL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, 1000
  br i1 %146, label %147, label %157

147:                                              ; preds = %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %66
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %155 [
    i32 129, label %151
    i32 128, label %151
    i32 130, label %153
  ]

151:                                              ; preds = %147, %147
  %152 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %152, i32* %10, align 4
  br label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %154, i32* %10, align 4
  br label %156

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %153, %151
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %62
  br label %159

159:                                              ; preds = %158, %61
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @ngx_ssl_error(i32 %160, i32 %163, i32 %164, i8* %165)
  ret void
}

declare dso_local i32 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
