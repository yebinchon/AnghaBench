; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_ecdhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_ecdhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_ECDHE = common dso_local global i32 0, align 4
@SSL_R_MISSING_TMP_ECDH_KEY = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @tls_process_cke_ecdhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_ecdhe(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @PACKET_remaining(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %21 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %22 = load i32, i32* @SSL_R_MISSING_TMP_ECDH_KEY, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_9__* %19, i32 %20, i32 %21, i32 %22)
  br label %98

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @PACKET_get_1(i32* %25, i32* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PACKET_get_bytes(i32* %29, i8** %9, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @PACKET_remaining(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %28, %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %40 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %41 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_9__* %38, i32 %39, i32 %40, i32 %41)
  br label %98

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %50 = load i32, i32* @SSL_R_MISSING_TMP_ECDH_KEY, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_9__* %47, i32 %48, i32 %49, i32 %50)
  br label %98

52:                                               ; preds = %43
  %53 = call i32* (...) @EVP_PKEY_new()
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @EVP_PKEY_copy_parameters(i32* %57, i32* %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %52
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %64 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %65 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_9__* %62, i32 %63, i32 %64, i32 %65)
  br label %98

67:                                               ; preds = %56
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @EVP_PKEY_set1_tls_encodedpoint(i32* %68, i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %76 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_ECDHE, align 4
  %77 = load i32, i32* @ERR_R_EC_LIB, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_9__* %74, i32 %75, i32 %76, i32 %77)
  br label %98

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @ssl_derive(%struct.TYPE_9__* %81, i32* %82, i32* %83, i32 1)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %98

87:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @EVP_PKEY_free(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %87, %86, %73, %61, %46, %37, %18
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @EVP_PKEY_free(i32* %99)
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_set1_tls_encodedpoint(i32*, i8*, i32) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
