; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_construct_message.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_ossl_statem_server_construct_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_SERVER_CONSTRUCT_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_BAD_HANDSHAKE_STATE = common dso_local global i32 0, align 4
@dtls_construct_change_cipher_spec = common dso_local global i32* null, align 8
@tls_construct_change_cipher_spec = common dso_local global i32* null, align 8
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@dtls_construct_hello_verify_request = common dso_local global i32* null, align 8
@DTLS1_MT_HELLO_VERIFY_REQUEST = common dso_local global i32 0, align 4
@SSL3_MT_HELLO_REQUEST = common dso_local global i32 0, align 4
@tls_construct_server_hello = common dso_local global i32* null, align 8
@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@tls_construct_server_certificate = common dso_local global i32* null, align 8
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@tls_construct_cert_verify = common dso_local global i32* null, align 8
@SSL3_MT_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@tls_construct_server_key_exchange = common dso_local global i32* null, align 8
@SSL3_MT_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@tls_construct_certificate_request = common dso_local global i32* null, align 8
@SSL3_MT_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@tls_construct_server_done = common dso_local global i32* null, align 8
@SSL3_MT_SERVER_DONE = common dso_local global i32 0, align 4
@tls_construct_new_session_ticket = common dso_local global i32* null, align 8
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i32 0, align 4
@tls_construct_cert_status = common dso_local global i32* null, align 8
@SSL3_MT_CERTIFICATE_STATUS = common dso_local global i32 0, align 4
@tls_construct_finished = common dso_local global i32* null, align 8
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@SSL3_MT_DUMMY = common dso_local global i32 0, align 4
@tls_construct_encrypted_extensions = common dso_local global i32* null, align 8
@SSL3_MT_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@tls_construct_key_update = common dso_local global i32* null, align 8
@SSL3_MT_KEY_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_server_construct_message(%struct.TYPE_6__* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 136, label %22
    i32 142, label %35
    i32 133, label %40
    i32 128, label %44
    i32 140, label %49
    i32 137, label %54
    i32 132, label %59
    i32 139, label %64
    i32 129, label %69
    i32 130, label %74
    i32 138, label %79
    i32 134, label %84
    i32 141, label %89
    i32 135, label %93
    i32 131, label %98
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %19 = load i32, i32* @SSL_F_OSSL_STATEM_SERVER_CONSTRUCT_MESSAGE, align 4
  %20 = load i32, i32* @SSL_R_BAD_HANDSHAKE_STATE, align 4
  %21 = call i32 @SSLfatal(%struct.TYPE_6__* %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = call i32 @SSL_IS_DTLS(%struct.TYPE_6__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** @dtls_construct_change_cipher_spec, align 8
  %28 = load i32**, i32*** %8, align 8
  store i32* %27, i32** %28, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** @tls_construct_change_cipher_spec, align 8
  %31 = load i32**, i32*** %8, align 8
  store i32* %30, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %103

35:                                               ; preds = %4
  %36 = load i32*, i32** @dtls_construct_hello_verify_request, align 8
  %37 = load i32**, i32*** %8, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %103

40:                                               ; preds = %4
  %41 = load i32**, i32*** %8, align 8
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @SSL3_MT_HELLO_REQUEST, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %103

44:                                               ; preds = %4
  %45 = load i32*, i32** @tls_construct_server_hello, align 8
  %46 = load i32**, i32*** %8, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %103

49:                                               ; preds = %4
  %50 = load i32*, i32** @tls_construct_server_certificate, align 8
  %51 = load i32**, i32*** %8, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %103

54:                                               ; preds = %4
  %55 = load i32*, i32** @tls_construct_cert_verify, align 8
  %56 = load i32**, i32*** %8, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* @SSL3_MT_CERTIFICATE_VERIFY, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %103

59:                                               ; preds = %4
  %60 = load i32*, i32** @tls_construct_server_key_exchange, align 8
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %103

64:                                               ; preds = %4
  %65 = load i32*, i32** @tls_construct_certificate_request, align 8
  %66 = load i32**, i32*** %8, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %103

69:                                               ; preds = %4
  %70 = load i32*, i32** @tls_construct_server_done, align 8
  %71 = load i32**, i32*** %8, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @SSL3_MT_SERVER_DONE, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %103

74:                                               ; preds = %4
  %75 = load i32*, i32** @tls_construct_new_session_ticket, align 8
  %76 = load i32**, i32*** %8, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %103

79:                                               ; preds = %4
  %80 = load i32*, i32** @tls_construct_cert_status, align 8
  %81 = load i32**, i32*** %8, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32, i32* @SSL3_MT_CERTIFICATE_STATUS, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %103

84:                                               ; preds = %4
  %85 = load i32*, i32** @tls_construct_finished, align 8
  %86 = load i32**, i32*** %8, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %103

89:                                               ; preds = %4
  %90 = load i32**, i32*** %8, align 8
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @SSL3_MT_DUMMY, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %103

93:                                               ; preds = %4
  %94 = load i32*, i32** @tls_construct_encrypted_extensions, align 8
  %95 = load i32**, i32*** %8, align 8
  store i32* %94, i32** %95, align 8
  %96 = load i32, i32* @SSL3_MT_ENCRYPTED_EXTENSIONS, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %103

98:                                               ; preds = %4
  %99 = load i32*, i32** @tls_construct_key_update, align 8
  %100 = load i32**, i32*** %8, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* @SSL3_MT_KEY_UPDATE, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %93, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %40, %35, %32
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %16
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
