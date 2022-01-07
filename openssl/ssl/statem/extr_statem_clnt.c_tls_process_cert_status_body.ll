; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_cert_status_body.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_cert_status_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32* }

@TLSEXT_STATUSTYPE_ocsp = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CERT_STATUS_BODY = common dso_local global i32 0, align 4
@SSL_R_UNSUPPORTED_STATUS_TYPE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_cert_status_body(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @PACKET_get_1(i32* %8, i32* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @TLSEXT_STATUSTYPE_ocsp, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %18 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_STATUS_BODY, align 4
  %19 = load i32, i32* @SSL_R_UNSUPPORTED_STATUS_TYPE, align 4
  %20 = call i32 @SSLfatal(%struct.TYPE_8__* %16, i32 %17, i32 %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %77

21:                                               ; preds = %11
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @PACKET_get_net_3_len(i32* %22, i64* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @PACKET_remaining(i32* %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %33 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_STATUS_BODY, align 4
  %34 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_8__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %77

36:                                               ; preds = %25
  %37 = load i64, i64* %6, align 8
  %38 = call i32* @OPENSSL_malloc(i64 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %38, i32** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_STATUS_BODY, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @SSLfatal(%struct.TYPE_8__* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %77

55:                                               ; preds = %36
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @PACKET_copy_bytes(i32* %56, i32* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS_PROCESS_CERT_STATUS_BODY, align 4
  %69 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_8__* %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %55
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %65, %49, %30, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_net_3_len(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
