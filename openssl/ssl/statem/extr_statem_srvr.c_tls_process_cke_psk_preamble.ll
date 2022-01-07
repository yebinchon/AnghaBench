; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_psk_preamble.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_cke_psk_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__*, i32, i8*, i32)*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }

@PSK_MAX_PSK_LEN = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@PSK_MAX_IDENTITY_LEN = common dso_local global i64 0, align 8
@SSL_R_DATA_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_PSK_NO_SERVER_CB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_UNKNOWN_PSK_IDENTITY = common dso_local global i32 0, align 4
@SSL_R_PSK_IDENTITY_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @tls_process_cke_psk_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_cke_psk_preamble(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @PSK_MAX_PSK_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PACKET_get_length_prefixed_2(i32* %15, i32* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %21 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %22 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %23 = call i32 @SSLfatal(%struct.TYPE_11__* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

24:                                               ; preds = %2
  %25 = call i64 @PACKET_remaining(i32* %9)
  %26 = load i64, i64* @PSK_MAX_IDENTITY_LEN, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %31 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %32 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_11__* %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_11__*, i32, i8*, i32)*, i64 (%struct.TYPE_11__*, i32, i8*, i32)** %36, align 8
  %38 = icmp eq i64 (%struct.TYPE_11__*, i32, i8*, i32)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %42 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %43 = load i32, i32* @SSL_R_PSK_NO_SERVER_CB, align 4
  %44 = call i32 @SSLfatal(%struct.TYPE_11__* %40, i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

45:                                               ; preds = %34
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @PACKET_strndup(i32* %9, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %55 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %56 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %57 = call i32 @SSLfatal(%struct.TYPE_11__* %53, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

58:                                               ; preds = %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_11__*, i32, i8*, i32)*, i64 (%struct.TYPE_11__*, i32, i8*, i32)** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = trunc i64 %12 to i32
  %69 = call i64 %61(%struct.TYPE_11__* %62, i32 %67, i8* %14, i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @PSK_MAX_PSK_LEN, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %58
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %78 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_11__* %75, i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

80:                                               ; preds = %58
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = load i32, i32* @SSL_AD_UNKNOWN_PSK_IDENTITY, align 4
  %86 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %87 = load i32, i32* @SSL_R_PSK_IDENTITY_NOT_FOUND, align 4
  %88 = call i32 @SSLfatal(%struct.TYPE_11__* %84, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @OPENSSL_free(i32* %95)
  %97 = load i64, i64* %8, align 8
  %98 = call i32* @OPENSSL_memdup(i8* %14, i64 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32* %98, i32** %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @OPENSSL_cleanse(i8* %14, i64 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %90
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %114 = load i32, i32* @SSL_F_TLS_PROCESS_CKE_PSK_PREAMBLE, align 4
  %115 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %116 = call i32 @SSLfatal(%struct.TYPE_11__* %112, i32 %113, i32 %114, i32 %115)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

117:                                              ; preds = %90
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i64 %118, i64* %122, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %117, %111, %83, %74, %52, %39, %28, %18
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i64 @PACKET_remaining(i32*) #2

declare dso_local i32 @PACKET_strndup(i32*, i32*) #2

declare dso_local i32 @OPENSSL_free(i32*) #2

declare dso_local i32* @OPENSSL_memdup(i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
