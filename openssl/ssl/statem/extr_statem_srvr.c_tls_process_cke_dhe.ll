; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_dhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_dhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_DHE = common dso_local global i32 0, align 4
@SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_MISSING_TMP_DH_KEY = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @tls_process_cke_dhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_dhe(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @PACKET_get_net_2(i32* %12, i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @PACKET_remaining(i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %24 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %25 = load i32, i32* @SSL_R_DH_PUBLIC_VALUE_LENGTH_IS_WRONG, align 4
  %26 = call i32 @SSLfatal(%struct.TYPE_9__* %22, i32 %23, i32 %24, i32 %25)
  br label %119

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %38 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %39 = load i32, i32* @SSL_R_MISSING_TMP_DH_KEY, align 4
  %40 = call i32 @SSLfatal(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 %39)
  br label %119

41:                                               ; preds = %27
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @PACKET_remaining(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %48 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %49 = load i32, i32* @SSL_R_MISSING_TMP_DH_KEY, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_9__* %46, i32 %47, i32 %48, i32 %49)
  br label %119

51:                                               ; preds = %41
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @PACKET_get_bytes(i32* %52, i8** %9, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %59 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %60 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %61 = call i32 @SSLfatal(%struct.TYPE_9__* %57, i32 %58, i32 %59, i32 %60)
  br label %119

62:                                               ; preds = %51
  %63 = call i32* (...) @EVP_PKEY_new()
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @EVP_PKEY_copy_parameters(i32* %67, i32* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %74 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %75 = load i32, i32* @SSL_R_BN_LIB, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_9__* %72, i32 %73, i32 %74, i32 %75)
  br label %119

77:                                               ; preds = %66
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @EVP_PKEY_get0_DH(i32* %78)
  store i32* %79, i32** %6, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32* @BN_bin2bn(i8* %80, i32 %81, i32* null)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** %6, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @DH_set0_key(i32* %89, i32* %90, i32* null)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %88, %85, %77
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %96 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_DHE, align 4
  %97 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %98 = call i32 @SSLfatal(%struct.TYPE_9__* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @BN_free(i32* %99)
  br label %119

101:                                              ; preds = %88
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i64 @ssl_derive(%struct.TYPE_9__* %102, i32* %103, i32* %104, i32 1)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %119

108:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @EVP_PKEY_free(i32* %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %108, %107, %93, %71, %56, %45, %35, %21
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @EVP_PKEY_free(i32* %120)
  %122 = load i32, i32* %11, align 4
  ret i32 %122
}

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @DH_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
