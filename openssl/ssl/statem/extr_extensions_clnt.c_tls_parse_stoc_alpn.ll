; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_alpn.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_alpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64 }

@SSL_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_ALPN = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_alpn(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = load i32, i32* @SSL_AD_UNSUPPORTED_EXTENSION, align 4
  %21 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %22 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_12__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %185

24:                                               ; preds = %5
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @PACKET_get_net_2_len(i32* %25, i64* %12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @PACKET_remaining(i32* %29)
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PACKET_get_1_len(i32* %34, i64* %12)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @PACKET_remaining(i32* %38)
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %33, %28, %24
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %45 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %46 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %47 = call i32 @SSLfatal(%struct.TYPE_12__* %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %6, align 4
  br label %185

48:                                               ; preds = %37
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @OPENSSL_free(i32* %52)
  %54 = load i64, i64* %12, align 8
  %55 = call i32* @OPENSSL_malloc(i64 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32* %55, i32** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %48
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %67 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %68 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %69 = call i32 @SSLfatal(%struct.TYPE_12__* %65, i32 %66, i32 %67, i32 %68)
  store i32 0, i32* %6, align 4
  br label %185

70:                                               ; preds = %48
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @PACKET_copy_bytes(i32* %71, i32* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %82 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %83 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %84 = call i32 @SSLfatal(%struct.TYPE_12__* %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %6, align 4
  br label %185

85:                                               ; preds = %70
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %120, label %97

97:                                               ; preds = %85
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i64 @memcmp(i32* %112, i32* %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %106, %97, %85
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %106
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %184, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @ossl_assert(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %129
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %143 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %144 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %145 = call i32 @SSLfatal(%struct.TYPE_12__* %141, i32 %142, i32 %143, i32 %144)
  store i32 0, i32* %6, align 4
  br label %185

146:                                              ; preds = %129
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32* @OPENSSL_memdup(i32* %150, i64 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i32* %155, i32** %160, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %146
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %171 = load i32, i32* @SSL_F_TLS_PARSE_STOC_ALPN, align 4
  %172 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %173 = call i32 @SSLfatal(%struct.TYPE_12__* %169, i32 %170, i32 %171, i32 %172)
  store i32 0, i32* %6, align 4
  br label %185

174:                                              ; preds = %146
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i64 %178, i64* %183, align 8
  br label %184

184:                                              ; preds = %174, %124
  store i32 1, i32* %6, align 4
  br label %185

185:                                              ; preds = %184, %168, %140, %79, %64, %42, %18
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @PACKET_get_net_2_len(i32*, i64*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_1_len(i32*, i64*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i64) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32*, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32* @OPENSSL_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
