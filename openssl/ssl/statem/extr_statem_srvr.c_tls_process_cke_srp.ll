; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_srp.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_SRP = common dso_local global i32 0, align 4
@SSL_R_BAD_SRP_A_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_SRP_PARAMETERS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @tls_process_cke_srp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_srp(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @PACKET_get_net_2(i32* %8, i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PACKET_get_bytes(i32* %12, i8** %7, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %19 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_SRP, align 4
  %20 = load i32, i32* @SSL_R_BAD_SRP_A_LENGTH, align 4
  %21 = call i32 @SSLfatal(%struct.TYPE_9__* %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %94

22:                                               ; preds = %11
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @BN_bin2bn(i8* %23, i32 %24, i32* null)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = icmp eq i32* %25, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %33 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_SRP, align 4
  %34 = load i32, i32* @ERR_R_BN_LIB, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %94

36:                                               ; preds = %22
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @BN_ucmp(i32* %40, i32 %44)
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @BN_is_zero(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47, %36
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %57 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_SRP, align 4
  %58 = load i32, i32* @SSL_R_BAD_SRP_PARAMETERS, align 4
  %59 = call i32 @SSLfatal(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %94

60:                                               ; preds = %47
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @OPENSSL_free(i32* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @OPENSSL_strdup(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32* %71, i32** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %60
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %85 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_SRP, align 4
  %86 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_9__* %83, i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %94

88:                                               ; preds = %60
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = call i32 @srp_generate_server_master_secret(%struct.TYPE_9__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %94

93:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %92, %82, %54, %30, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_strdup(i32) #1

declare dso_local i32 @srp_generate_server_master_secret(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
