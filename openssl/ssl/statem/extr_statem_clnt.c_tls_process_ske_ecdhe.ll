; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_ecdhe.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_process_ske_ecdhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_SKE_ECDHE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@NAMED_CURVE_TYPE = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_WRONG_CURVE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32**)* @tls_process_ske_ecdhe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_ske_ecdhe(%struct.TYPE_13__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @PACKET_get_1(i32* %11, i32* %9)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @PACKET_get_net_2(i32* %15, i32* %10)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %22 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_13__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %117

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NAMED_CURVE_TYPE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @tls1_check_group_id(%struct.TYPE_13__* %29, i32 %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %36 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %37 = load i32, i32* @SSL_R_WRONG_CURVE, align 4
  %38 = call i32 @SSLfatal(%struct.TYPE_13__* %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %117

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @ssl_generate_param_group(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = icmp eq i32* %41, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %49 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %50 = load i32, i32* @SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS, align 4
  %51 = call i32 @SSLfatal(%struct.TYPE_13__* %47, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %117

52:                                               ; preds = %39
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PACKET_get_length_prefixed_1(i32* %53, i32* %8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %59 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %60 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %61 = call i32 @SSLfatal(%struct.TYPE_13__* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %117

62:                                               ; preds = %52
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PACKET_data(i32* %8)
  %68 = call i32 @PACKET_remaining(i32* %8)
  %69 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %74 = load i32, i32* @SSL_F_TLS_PROCESS_SKE_ECDHE, align 4
  %75 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %76 = call i32 @SSLfatal(%struct.TYPE_13__* %72, i32 %73, i32 %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %117

77:                                               ; preds = %62
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SSL_aECDSA, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @X509_get0_pubkey(i32 %93)
  %95 = load i32**, i32*** %7, align 8
  store i32* %94, i32** %95, align 8
  br label %116

96:                                               ; preds = %77
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SSL_aRSA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %96
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32* @X509_get0_pubkey(i32 %112)
  %114 = load i32**, i32*** %7, align 8
  store i32* %113, i32** %114, align 8
  br label %115

115:                                              ; preds = %107, %96
  br label %116

116:                                              ; preds = %115, %88
  store i32 1, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %71, %56, %46, %33, %18
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @tls1_check_group_id(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @ssl_generate_param_group(i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i32) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
