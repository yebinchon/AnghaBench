; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_final_finish_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls13_enc.c_tls13_final_finish_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@EVP_PKEY_HMAC = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_FINAL_FINISH_MAC = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tls13_final_finish_mac(%struct.TYPE_12__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call i32* @ssl_handshake_md(%struct.TYPE_12__* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  store i64 0, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %26 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %26, i32** %16, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = trunc i64 %23 to i32
  %29 = call i32 @ssl_handshake_hash(%struct.TYPE_12__* %27, i8* %25, i32 %28, i64* %13)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %116

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %33, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32* @EVP_PKEY_new_raw_private_key(i32 %43, i32* null, i8* %46, i64 %47)
  store i32* %48, i32** %15, align 8
  br label %86

49:                                               ; preds = %32
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_12__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32* @EVP_PKEY_new_raw_private_key(i32 %54, i32* null, i8* %57, i64 %58)
  store i32* %59, i32** %15, align 8
  br label %85

60:                                               ; preds = %49
  %61 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %17, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %18, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = call i32* @ssl_handshake_md(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @tls13_derive_finishedkey(%struct.TYPE_12__* %65, i32* %67, i32 %70, i8* %64, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  store i32 2, i32* %19, align 4
  br label %81

75:                                               ; preds = %60
  %76 = load i32, i32* @EVP_PKEY_HMAC, align 4
  %77 = load i64, i64* %13, align 8
  %78 = call i32* @EVP_PKEY_new_raw_private_key(i32 %76, i32* null, i8* %64, i64 %77)
  store i32* %78, i32** %15, align 8
  %79 = trunc i64 %62 to i32
  %80 = call i32 @OPENSSL_cleanse(i8* %64, i32 %79)
  store i32 0, i32* %19, align 4
  br label %81

81:                                               ; preds = %74, %75
  %82 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %19, align 4
  switch i32 %83, label %122 [
    i32 0, label %84
    i32 2, label %116
  ]

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i32*, i32** %15, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %108, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i64 @EVP_DigestSignInit(i32* %93, i32* null, i32* %94, i32* null, i32* %95)
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = load i32*, i32** %16, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @EVP_DigestSignUpdate(i32* %99, i8* %25, i64 %100)
  %102 = icmp sle i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %16, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i64 @EVP_DigestSignFinal(i32* %104, i8* %105, i64* %13)
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103, %98, %92, %89, %86
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %111 = load i32, i32* @SSL_F_TLS13_FINAL_FINISH_MAC, align 4
  %112 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_12__* %109, i32 %110, i32 %111, i32 %112)
  br label %116

114:                                              ; preds = %103
  %115 = load i64, i64* %13, align 8
  store i64 %115, i64* %14, align 8
  br label %116

116:                                              ; preds = %114, %81, %108, %31
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @EVP_PKEY_free(i32* %117)
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @EVP_MD_CTX_free(i32* %119)
  %121 = load i64, i64* %14, align 8
  store i64 %121, i64* %5, align 8
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %116, %81
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_12__*, i8*, i32, i64*) #1

declare dso_local i32* @EVP_PKEY_new_raw_private_key(i32, i32*, i8*, i64) #1

declare dso_local i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_12__*) #1

declare dso_local i32 @tls13_derive_finishedkey(%struct.TYPE_12__*, i32*, i32, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
