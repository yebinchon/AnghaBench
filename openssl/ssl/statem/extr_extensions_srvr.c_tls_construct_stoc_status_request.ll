; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_status_request.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SSL_EXT_TLS1_3_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_status_request = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_status_request(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
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
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %16, i32* %6, align 4
  br label %74

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i64 @SSL_IS_TLS13(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %33, i32* %6, align 4
  br label %74

34:                                               ; preds = %29, %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @TLSEXT_TYPE_status_request, align 4
  %37 = call i32 @WPACKET_put_bytes_u16(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @WPACKET_start_sub_packet_u16(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %46 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST, align 4
  %47 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %48 = call i32 @SSLfatal(%struct.TYPE_8__* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = call i64 @SSL_IS_TLS13(%struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @tls_construct_cert_status_body(%struct.TYPE_8__* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %60, i32* %6, align 4
  br label %74

61:                                               ; preds = %54, %50
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @WPACKET_close(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %68 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_STATUS_REQUEST, align 4
  %69 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %70 = call i32 @SSLfatal(%struct.TYPE_8__* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %71, i32* %6, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %65, %59, %43, %32, %23, %15
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_8__*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @tls_construct_cert_status_body(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
