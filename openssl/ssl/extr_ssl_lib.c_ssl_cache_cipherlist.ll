; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_cache_cipherlist.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_ssl_cache_cipherlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64 }

@SSLV2_CIPHER_LEN = common dso_local global i64 0, align 8
@TLS_CIPHER_LEN = common dso_local global i64 0, align 8
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_SSL_CACHE_CIPHERLIST = common dso_local global i32 0, align 4
@SSL_R_NO_CIPHERS_SPECIFIED = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_PACKET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_cache_cipherlist(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @SSLV2_CIPHER_LEN, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @TLS_CIPHER_LEN, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @PACKET_remaining(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %28 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %29 = load i32, i32* @SSL_R_NO_CIPHERS_SPECIFIED, align 4
  %30 = call i32 @SSLfatal(%struct.TYPE_8__* %26, i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %169

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @PACKET_remaining(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = srem i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %41 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %42 = load i32, i32* @SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_8__* %39, i32 %40, i32 %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %169

44:                                               ; preds = %31
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @OPENSSL_free(i8* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* null, i8** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %149

61:                                               ; preds = %44
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @PACKET_remaining(i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %63, %65
  store i64 %66, i64* %9, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %71 = mul i64 %69, %70
  %72 = call i8* @OPENSSL_malloc(i64 %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %61
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %83 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %84 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %85 = call i32 @SSLfatal(%struct.TYPE_8__* %81, i32 %82, i32 %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %169

86:                                               ; preds = %61
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %144, %86
  %92 = call i64 @PACKET_remaining(i32* %10)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %148

94:                                               ; preds = %91
  %95 = call i32 @PACKET_get_1(i32* %10, i32* %11)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %103 = call i32 @PACKET_copy_bytes(i32* %10, i8* %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %110 = call i32 @PACKET_forward(i32* %10, i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %108, %100, %94
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %115 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %116 = load i32, i32* @SSL_R_BAD_PACKET, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_8__* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @OPENSSL_free(i8* %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i8* null, i8** %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  store i32 0, i32* %4, align 4
  br label %169

132:                                              ; preds = %108, %105
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %136
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %135, %132
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* @TLS_CIPHER_LEN, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 %145
  store i8* %147, i8** %12, align 8
  br label %91

148:                                              ; preds = %91
  br label %168

149:                                              ; preds = %44
  %150 = load i32*, i32** %6, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = call i32 @PACKET_memdup(i32* %150, i8** %154, i64* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %149
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %164 = load i32, i32* @SSL_F_SSL_CACHE_CIPHERLIST, align 4
  %165 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_8__* %162, i32 %163, i32 %164, i32 %165)
  store i32 0, i32* %4, align 4
  br label %169

167:                                              ; preds = %149
  br label %168

168:                                              ; preds = %167, %148
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %161, %112, %80, %38, %25
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_forward(i32*, i64) #1

declare dso_local i32 @PACKET_memdup(i32*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
