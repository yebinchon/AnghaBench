; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_psk_preamble.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_psk_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@PSK_MAX_IDENTITY_LEN = common dso_local global i64 0, align 8
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_R_DATA_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @tls_process_ske_psk_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ske_psk_preamble(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @PACKET_get_length_prefixed_2(i32* %7, i32* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %13 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE, align 4
  %14 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %15 = call i32 @SSLfatal(%struct.TYPE_6__* %11, i32 %12, i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = call i64 @PACKET_remaining(i32* %6)
  %18 = load i64, i64* @PSK_MAX_IDENTITY_LEN, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %23 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE, align 4
  %24 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  %25 = call i32 @SSLfatal(%struct.TYPE_6__* %21, i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %55

26:                                               ; preds = %16
  %27 = call i64 @PACKET_remaining(i32* %6)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @OPENSSL_free(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %54

40:                                               ; preds = %26
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @PACKET_strndup(i32* %6, i32** %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_PSK_PREAMBLE, align 4
  %51 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_6__* %48, i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %29
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %47, %20, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @PACKET_strndup(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
