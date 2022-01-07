; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_npn.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_parse_stoc_npn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)*, i32 }

@SSL_AD_UNSUPPORTED_EXTENSION = common dso_local global i32 0, align 4
@SSL_F_TLS_PARSE_STOC_NPN = common dso_local global i32 0, align 4
@SSL_R_BAD_EXTENSION = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_OK = common dso_local global i64 0, align 8
@SSL_AD_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_parse_stoc_npn(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_15__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %104

19:                                               ; preds = %5
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)*, i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)** %24, align 8
  %26 = icmp eq i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = load i32, i32* @SSL_AD_UNSUPPORTED_EXTENSION, align 4
  %30 = load i32, i32* @SSL_F_TLS_PARSE_STOC_NPN, align 4
  %31 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %32 = call i32 @SSLfatal(%struct.TYPE_15__* %28, i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %104

33:                                               ; preds = %19
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = call i32 @ssl_next_proto_validate(%struct.TYPE_15__* %36, i32* %14)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %104

40:                                               ; preds = %33
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)*, i64 (%struct.TYPE_15__*, i8**, i8*, i32, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @PACKET_data(i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @PACKET_remaining(i32* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 %46(%struct.TYPE_15__* %47, i8** %12, i8* %13, i32 %49, i32 %51, i32 %57)
  %59 = load i64, i64* @SSL_TLSEXT_ERR_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = load i32, i32* @SSL_AD_HANDSHAKE_FAILURE, align 4
  %64 = load i32, i32* @SSL_F_TLS_PARSE_STOC_NPN, align 4
  %65 = load i32, i32* @SSL_R_BAD_EXTENSION, align 4
  %66 = call i32 @SSLfatal(%struct.TYPE_15__* %62, i32 %63, i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %104

67:                                               ; preds = %40
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @OPENSSL_free(i32* %71)
  %73 = load i8, i8* %13, align 1
  %74 = call i32* @OPENSSL_malloc(i8 zeroext %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32* %74, i32** %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %67
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %86 = load i32, i32* @SSL_F_TLS_PARSE_STOC_NPN, align 4
  %87 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %88 = call i32 @SSLfatal(%struct.TYPE_15__* %84, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %6, align 4
  br label %104

89:                                               ; preds = %67
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %13, align 1
  %96 = call i32 @memcpy(i32* %93, i8* %94, i8 zeroext %95)
  %97 = load i8, i8* %13, align 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i8 %97, i8* %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %89, %83, %61, %39, %27, %18
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_15__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ssl_next_proto_validate(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i8 zeroext) #1

declare dso_local i32 @memcpy(i32*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
