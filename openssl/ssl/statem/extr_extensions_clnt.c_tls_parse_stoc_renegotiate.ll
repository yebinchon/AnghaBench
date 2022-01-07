; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_renegotiate.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_RENEGOTIATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_ENCODING_ERR = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_RENEGOTIATION_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_renegotiate(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %18, %22
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %5
  %33 = phi i1 [ true, %5 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ossl_assert(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ true, %37 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ossl_assert(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46, %32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %55 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_6__* %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %6, align 4
  br label %144

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @PACKET_get_1_len(i32* %58, i64* %13)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %64 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %65 = load i32, i32* @SSL_R_RENEGOTIATION_ENCODING_ERR, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_6__* %62, i32 %63, i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %144

67:                                               ; preds = %57
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @PACKET_remaining(i32* %68)
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %75 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %76 = load i32, i32* @SSL_R_RENEGOTIATION_ENCODING_ERR, align 4
  %77 = call i32 @SSLfatal(%struct.TYPE_6__* %73, i32 %74, i32 %75, i32 %76)
  store i32 0, i32* %6, align 4
  br label %144

78:                                               ; preds = %67
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %85 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %86 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_6__* %83, i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %6, align 4
  br label %144

88:                                               ; preds = %78
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @PACKET_get_bytes(i32* %89, i8** %14, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load i8*, i8** %14, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @memcmp(i8* %97, i32 %101, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %96, %88
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %111 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %112 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_6__* %109, i32 %110, i32 %111, i32 %112)
  store i32 0, i32* %6, align 4
  br label %144

114:                                              ; preds = %96
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @PACKET_get_bytes(i32* %115, i8** %14, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @memcmp(i8* %123, i32 %127, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %122, %114
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %137 = load i32, i32* @SSL_F_TLS_PARSE_STOC_RENEGOTIATE, align 4
  %138 = load i32, i32* @SSL_R_RENEGOTIATION_MISMATCH, align 4
  %139 = call i32 @SSLfatal(%struct.TYPE_6__* %135, i32 %136, i32 %137, i32 %138)
  store i32 0, i32* %6, align 4
  br label %144

140:                                              ; preds = %122
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  store i32 1, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %134, %108, %82, %72, %61, %51
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_1_len(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_bytes(i32*, i8**, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
