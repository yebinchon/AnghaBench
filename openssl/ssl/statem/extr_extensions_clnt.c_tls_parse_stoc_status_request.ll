; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_status_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@TLSEXT_STATUSTYPE_ocsp = common dso_local global i64 0, align 8
@SSL_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_STATUS_REQUEST = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_status_request(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE_REQUEST, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %59

16:                                               ; preds = %5
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TLSEXT_STATUSTYPE_ocsp, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = load i32, i32* @SSL_AD_UNSUPPORTED_EXTENSION, align 4
  %26 = load i32, i32* @SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, align 4
  %27 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %28 = call i32 @SSLfatal(%struct.TYPE_8__* %24, i32 %25, i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %59

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call i64 @SSL_IS_TLS13(%struct.TYPE_8__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @PACKET_remaining(i32* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %40 = load i32, i32* @SSL_F_TLS_PARSE_STOC_STATUS_REQUEST, align 4
  %41 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_8__* %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %6, align 4
  br label %59

43:                                               ; preds = %33, %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = call i64 @SSL_IS_TLS13(%struct.TYPE_8__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @tls_process_cert_status_body(%struct.TYPE_8__* %52, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %51, %50, %37, %23, %15
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_8__*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @tls_process_cert_status_body(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
