; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_parse_ctos_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@TLSEXT_KEX_MODE_FLAG_KE_DHE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_CTOS_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_AD_MISSING_EXTENSION = common dso_local global i32 0, align 4
@SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_ctos_key_share(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TLSEXT_KEX_MODE_FLAG_KE_DHE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %183

33:                                               ; preds = %24, %5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %43 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %44 = call i32 @SSLfatal(%struct.TYPE_11__* %40, i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %183

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @PACKET_as_length_prefixed_2(i32* %46, i32* %13)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %52 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %53 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %54 = call i32 @SSLfatal(%struct.TYPE_11__* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %183

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = call i32 @tls1_get_supported_groups(%struct.TYPE_11__* %56, i32** %16, i64* %18)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = call i32 @tls1_get_peer_groups(%struct.TYPE_11__* %58, i32** %15, i64* %17)
  %60 = load i64, i64* %17, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = load i32, i32* @SSL_AD_MISSING_EXTENSION, align 4
  %65 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %66 = load i32, i32* @SSL_R_MISSING_SUPPORTED_GROUPS_EXTENSION, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_11__* %63, i32 %64, i32 %65, i32 %66)
  store i32 0, i32* %6, align 4
  br label %183

68:                                               ; preds = %55
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = call i64 @PACKET_remaining(i32* %13)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %80 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %81 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %82 = call i32 @SSLfatal(%struct.TYPE_11__* %78, i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %6, align 4
  br label %183

83:                                               ; preds = %74, %68
  br label %84

84:                                               ; preds = %181, %148, %105, %83
  %85 = call i64 @PACKET_remaining(i32* %13)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %182

87:                                               ; preds = %84
  %88 = call i32 @PACKET_get_net_2(i32* %13, i32* %12)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = call i32 @PACKET_get_length_prefixed_2(i32* %13, i32* %14)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call i64 @PACKET_remaining(i32* %14)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93, %90, %87
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %99 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %100 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %101 = call i32 @SSLfatal(%struct.TYPE_11__* %97, i32 %98, i32 %99, i32 %100)
  store i32 0, i32* %6, align 4
  br label %183

102:                                              ; preds = %93
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %84

106:                                              ; preds = %102
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %113, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = call i64 @PACKET_remaining(i32* %13)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %112
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %125 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %126 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %127 = call i32 @SSLfatal(%struct.TYPE_11__* %123, i32 %124, i32 %125, i32 %126)
  store i32 0, i32* %6, align 4
  br label %183

128:                                              ; preds = %119, %106
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = load i64, i64* %17, align 8
  %133 = call i32 @check_in_list(%struct.TYPE_11__* %129, i32 %130, i32* %131, i64 %132, i32 0)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %138 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %139 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %140 = call i32 @SSLfatal(%struct.TYPE_11__* %136, i32 %137, i32 %138, i32 %139)
  store i32 0, i32* %6, align 4
  br label %183

141:                                              ; preds = %128
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %16, align 8
  %145 = load i64, i64* %18, align 8
  %146 = call i32 @check_in_list(%struct.TYPE_11__* %142, i32 %143, i32* %144, i64 %145, i32 1)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  br label %84

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = call i32* @ssl_generate_param_group(i32 %150)
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32* %151, i32** %154, align 8
  %155 = icmp eq i32* %151, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %159 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %160 = load i32, i32* @SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS, align 4
  %161 = call i32 @SSLfatal(%struct.TYPE_11__* %157, i32 %158, i32 %159, i32 %160)
  store i32 0, i32* %6, align 4
  br label %183

162:                                              ; preds = %149
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @PACKET_data(i32* %14)
  %172 = call i64 @PACKET_remaining(i32* %14)
  %173 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %170, i32 %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %162
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %178 = load i32, i32* @SSL_F_TLS_PARSE_CTOS_KEY_SHARE, align 4
  %179 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %180 = call i32 @SSLfatal(%struct.TYPE_11__* %176, i32 %177, i32 %178, i32 %179)
  store i32 0, i32* %6, align 4
  br label %183

181:                                              ; preds = %162
  store i32 1, i32* %19, align 4
  br label %84

182:                                              ; preds = %84
  store i32 1, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %175, %156, %135, %122, %96, %77, %62, %49, %39, %32
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i32 @tls1_get_peer_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @check_in_list(%struct.TYPE_11__*, i32, i32*, i64, i32) #1

declare dso_local i32* @ssl_generate_param_group(i32) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
