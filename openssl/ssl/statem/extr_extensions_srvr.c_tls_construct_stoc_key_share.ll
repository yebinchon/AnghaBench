; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_key_share.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_srvr.c_tls_construct_stoc_key_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32* }

@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_TYPE_key_share = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_stoc_key_share(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSL_HRR_PENDING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %5
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %29, i32* %6, align 4
  br label %169

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %33 = call i32 @WPACKET_put_bytes_u16(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @WPACKET_start_sub_packet_u16(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @WPACKET_put_bytes_u16(i32* %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @WPACKET_close(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47, %39, %35, %30
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %55 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_10__* %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %57, i32* %6, align 4
  br label %169

58:                                               ; preds = %47
  %59 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %59, i32* %6, align 4
  br label %169

60:                                               ; preds = %5
  %61 = load i32*, i32** %14, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = call i32 @tls13_generate_handshake_secret(%struct.TYPE_10__* %69, i32* null, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %75 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %76 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %77 = call i32 @SSLfatal(%struct.TYPE_10__* %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %78, i32* %6, align 4
  br label %169

79:                                               ; preds = %68
  %80 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %80, i32* %6, align 4
  br label %169

81:                                               ; preds = %60
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @TLSEXT_TYPE_key_share, align 4
  %84 = call i32 @WPACKET_put_bytes_u16(i32* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @WPACKET_start_sub_packet_u16(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WPACKET_put_bytes_u16(i32* %91, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %90, %86, %81
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %101 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %102 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %103 = call i32 @SSLfatal(%struct.TYPE_10__* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %104, i32* %6, align 4
  br label %169

105:                                              ; preds = %90
  %106 = load i32*, i32** %14, align 8
  %107 = call i32* @ssl_generate_pkey(i32* %106)
  store i32* %107, i32** %15, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %113 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %114 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %115 = call i32 @SSLfatal(%struct.TYPE_10__* %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %116, i32* %6, align 4
  br label %169

117:                                              ; preds = %105
  %118 = load i32*, i32** %15, align 8
  %119 = call i64 @EVP_PKEY_get1_tls_encodedpoint(i32* %118, i8** %12)
  store i64 %119, i64* %13, align 8
  %120 = load i64, i64* %13, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %125 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %126 = load i32, i32* @ERR_R_EC_LIB, align 4
  %127 = call i32 @SSLfatal(%struct.TYPE_10__* %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @EVP_PKEY_free(i32* %128)
  %130 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %130, i32* %6, align 4
  br label %169

131:                                              ; preds = %117
  %132 = load i32*, i32** %8, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @WPACKET_sub_memcpy_u16(i32* %132, i8* %133, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @WPACKET_close(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %137, %131
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %144 = load i32, i32* @SSL_F_TLS_CONSTRUCT_STOC_KEY_SHARE, align 4
  %145 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %146 = call i32 @SSLfatal(%struct.TYPE_10__* %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @EVP_PKEY_free(i32* %147)
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @OPENSSL_free(i8* %149)
  %151 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %151, i32* %6, align 4
  br label %169

152:                                              ; preds = %137
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 @OPENSSL_free(i8* %153)
  %155 = load i32*, i32** %15, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32* %155, i32** %159, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = call i64 @ssl_derive(%struct.TYPE_10__* %160, i32* %161, i32* %162, i32 1)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %152
  %166 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %166, i32* %6, align 4
  br label %169

167:                                              ; preds = %152
  %168 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %165, %141, %122, %110, %98, %79, %72, %58, %51, %28
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @tls13_generate_handshake_secret(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @ssl_generate_pkey(i32*) #1

declare dso_local i64 @EVP_PKEY_get1_tls_encodedpoint(i32*, i8**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @ssl_derive(%struct.TYPE_10__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
