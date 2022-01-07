; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_srp.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32* }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SKE_SRP = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32**)* @tls_process_ske_srp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ske_srp(%struct.TYPE_15__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @PACKET_get_length_prefixed_2(i32* %12, i32* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @PACKET_get_length_prefixed_2(i32* %16, i32* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @PACKET_get_length_prefixed_1(i32* %20, i32* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @PACKET_get_length_prefixed_2(i32* %24, i32* %11)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %19, %15, %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %30 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_SRP, align 4
  %31 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %32 = call i32 @SSLfatal(%struct.TYPE_15__* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %106

33:                                               ; preds = %23
  %34 = call i32 @PACKET_data(i32* %8)
  %35 = call i64 @PACKET_remaining(i32* %8)
  %36 = trunc i64 %35 to i32
  %37 = call i8* @BN_bin2bn(i32 %34, i32 %36, i32* null)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  store i32* %38, i32** %41, align 8
  %42 = icmp eq i32* %38, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %33
  %44 = call i32 @PACKET_data(i32* %9)
  %45 = call i64 @PACKET_remaining(i32* %9)
  %46 = trunc i64 %45 to i32
  %47 = call i8* @BN_bin2bn(i32 %44, i32 %46, i32* null)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = icmp eq i32* %48, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %43
  %54 = call i32 @PACKET_data(i32* %10)
  %55 = call i64 @PACKET_remaining(i32* %10)
  %56 = trunc i64 %55 to i32
  %57 = call i8* @BN_bin2bn(i32 %54, i32 %56, i32* null)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32* %58, i32** %61, align 8
  %62 = icmp eq i32* %58, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %53
  %64 = call i32 @PACKET_data(i32* %11)
  %65 = call i64 @PACKET_remaining(i32* %11)
  %66 = trunc i64 %65 to i32
  %67 = call i8* @BN_bin2bn(i32 %64, i32 %66, i32* null)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32* %68, i32** %71, align 8
  %72 = icmp eq i32* %68, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %63, %53, %43, %33
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %76 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_SRP, align 4
  %77 = load i32, i32* @ERR_R_BN_LIB, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_15__* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %106

79:                                               ; preds = %63
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = call i32 @srp_verify_server_param(%struct.TYPE_15__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %106

84:                                               ; preds = %79
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SSL_aRSA, align 4
  %93 = load i32, i32* @SSL_aDSS, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %84
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @X509_get0_pubkey(i32 %102)
  %104 = load i32**, i32*** %7, align 8
  store i32* %103, i32** %104, align 8
  br label %105

105:                                              ; preds = %97, %84
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %83, %73, %27
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i8* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @srp_verify_server_param(%struct.TYPE_15__*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
