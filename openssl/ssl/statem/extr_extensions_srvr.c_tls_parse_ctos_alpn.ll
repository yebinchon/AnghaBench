; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_ALPN = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_alpn(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_7__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %77

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @PACKET_as_length_prefixed_2(i32* %20, i32* %12)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 @PACKET_remaining(i32* %12)
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %29 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_ALPN, align 4
  %30 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %31 = call i32 @SSLfatal(%struct.TYPE_7__* %27, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %77

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %47, %32
  %35 = call i32 @PACKET_get_length_prefixed_1(i32* %12, i32* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @PACKET_remaining(i32* %14)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %43 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_ALPN, align 4
  %44 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %45 = call i32 @SSLfatal(%struct.TYPE_7__* %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %77

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = call i32 @PACKET_remaining(i32* %12)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %34, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @OPENSSL_free(i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @PACKET_memdup(i32* %13, i32** %64, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %50
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %73 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_ALPN, align 4
  %74 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_7__* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %6, align 4
  br label %77

76:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %70, %40, %26, %18
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_7__*) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @PACKET_memdup(i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
