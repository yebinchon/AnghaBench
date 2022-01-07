; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_BAD_KEY_SHARE = common dso_local global i32 0, align 4
@SSL_SECOP_CURVE_SUPPORTED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_ECPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_key_share(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26, %5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %35 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %36 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %37 = call i32 @SSLfatal(%struct.TYPE_11__* %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %6, align 4
  br label %195

38:                                               ; preds = %26
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @PACKET_get_net_2(i32* %39, i32* %12)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %45 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %46 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_11__* %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %6, align 4
  br label %195

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %126

53:                                               ; preds = %48
  store i32* null, i32** %16, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @PACKET_remaining(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %60 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %61 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %62 = call i32 @SSLfatal(%struct.TYPE_11__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %6, align 4
  br label %195

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %64, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %73 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %74 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_11__* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %6, align 4
  br label %195

76:                                               ; preds = %63
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = call i32 @tls1_get_supported_groups(%struct.TYPE_11__* %77, i32** %16, i64* %18)
  store i64 0, i64* %17, align 8
  br label %79

79:                                               ; preds = %92, %76
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %17, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %17, align 8
  br label %79

95:                                               ; preds = %90, %79
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %18, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @SSL_SECOP_CURVE_SUPPORTED, align 4
  %103 = call i32 @tls_group_allowed(%struct.TYPE_11__* %100, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99, %95
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %108 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %109 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %110 = call i32 @SSLfatal(%struct.TYPE_11__* %106, i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %6, align 4
  br label %195

111:                                              ; preds = %99
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @EVP_PKEY_free(i32* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  store i32 1, i32* %6, align 4
  br label %195

126:                                              ; preds = %48
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %127, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %136 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %137 = load i32, i32* @SSL_R_BAD_KEY_SHARE, align 4
  %138 = call i32 @SSLfatal(%struct.TYPE_11__* %134, i32 %135, i32 %136, i32 %137)
  store i32 0, i32* %6, align 4
  br label %195

139:                                              ; preds = %126
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @PACKET_as_length_prefixed_2(i32* %140, i32* %13)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = call i64 @PACKET_remaining(i32* %13)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143, %139
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %149 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %150 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %151 = call i32 @SSLfatal(%struct.TYPE_11__* %147, i32 %148, i32 %149, i32 %150)
  store i32 0, i32* %6, align 4
  br label %195

152:                                              ; preds = %143
  %153 = call i32* (...) @EVP_PKEY_new()
  store i32* %153, i32** %15, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = call i64 @EVP_PKEY_copy_parameters(i32* %157, i32* %158)
  %160 = icmp sle i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156, %152
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %164 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %165 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_11__* %162, i32 %163, i32 %164, i32 %165)
  store i32 0, i32* %6, align 4
  br label %195

167:                                              ; preds = %156
  %168 = load i32*, i32** %15, align 8
  %169 = call i32 @PACKET_data(i32* %13)
  %170 = call i64 @PACKET_remaining(i32* %13)
  %171 = call i32 @EVP_PKEY_set1_tls_encodedpoint(i32* %168, i32 %169, i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %175 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %176 = load i32, i32* @SSL_F_TLS_PARSE_STOC_KEY_SHARE, align 4
  %177 = load i32, i32* @SSL_R_BAD_ECPOINT, align 4
  %178 = call i32 @SSLfatal(%struct.TYPE_11__* %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @EVP_PKEY_free(i32* %179)
  store i32 0, i32* %6, align 4
  br label %195

181:                                              ; preds = %167
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = call i64 @ssl_derive(%struct.TYPE_11__* %182, i32* %183, i32* %184, i32 1)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32*, i32** %15, align 8
  %189 = call i32 @EVP_PKEY_free(i32* %188)
  store i32 0, i32* %6, align 4
  br label %195

190:                                              ; preds = %181
  %191 = load i32*, i32** %15, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32* %191, i32** %194, align 8
  store i32 1, i32* %6, align 4
  br label %195

195:                                              ; preds = %190, %187, %173, %161, %146, %133, %111, %105, %70, %57, %42, %32
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @tls1_get_supported_groups(%struct.TYPE_11__*, i32**, i64*) #1

declare dso_local i32 @tls_group_allowed(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_copy_parameters(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_set1_tls_encodedpoint(i32*, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_11__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
