; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_enc.c_tls1_PRF.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_enc.c_tls1_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS1_PRF = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_TLS1_PRF = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SECRET = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32)* @tls1_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_PRF(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i8* %9, i64 %10, i8* %11, i64 %12, i8* %13, i64 %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca [8 x i32], align 16
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  store i32* %0, i32** %18, align 8
  store i8* %1, i8** %19, align 8
  store i64 %2, i64* %20, align 8
  store i8* %3, i8** %21, align 8
  store i64 %4, i64* %22, align 8
  store i8* %5, i8** %23, align 8
  store i64 %6, i64* %24, align 8
  store i8* %7, i8** %25, align 8
  store i64 %8, i64* %26, align 8
  store i8* %9, i8** %27, align 8
  store i64 %10, i64* %28, align 8
  store i8* %11, i8** %29, align 8
  store i64 %12, i64* %30, align 8
  store i8* %13, i8** %31, align 8
  store i64 %14, i64* %32, align 8
  store i32 %15, i32* %33, align 4
  %40 = load i32*, i32** %18, align 8
  %41 = call i32* @ssl_prf_md(i32* %40)
  store i32* %41, i32** %34, align 8
  store i32* null, i32** %36, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %37, i64 0, i64 0
  store i32* %42, i32** %38, align 8
  %43 = load i32*, i32** %34, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %16
  %46 = load i32, i32* %33, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %18, align 8
  %50 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %51 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %52 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %53 = call i32 @SSLfatal(i32* %49, i32 %50, i32 %51, i32 %52)
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %56 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %57 = call i32 @SSLerr(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  store i32 0, i32* %17, align 4
  br label %158

59:                                               ; preds = %16
  %60 = load i32, i32* @OSSL_KDF_NAME_TLS1_PRF, align 4
  %61 = call i32* @EVP_KDF_fetch(i32* null, i32 %60, i32* null)
  store i32* %61, i32** %35, align 8
  %62 = load i32*, i32** %35, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %142

65:                                               ; preds = %59
  %66 = load i32*, i32** %35, align 8
  %67 = call i32* @EVP_KDF_CTX_new(i32* %66)
  store i32* %67, i32** %36, align 8
  %68 = load i32*, i32** %35, align 8
  %69 = call i32 @EVP_KDF_free(i32* %68)
  %70 = load i32*, i32** %36, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %142

73:                                               ; preds = %65
  %74 = load i32*, i32** %34, align 8
  %75 = call i8* @EVP_MD_name(i32* %74)
  store i8* %75, i8** %39, align 8
  %76 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %77 = load i8*, i8** %39, align 8
  %78 = load i8*, i8** %39, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = add nsw i64 %79, 1
  %81 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %76, i8* %77, i64 %80)
  %82 = load i32*, i32** %38, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %38, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* @OSSL_KDF_PARAM_SECRET, align 4
  %85 = load i8*, i8** %29, align 8
  %86 = load i64, i64* %30, align 8
  %87 = call i8* @OSSL_PARAM_construct_octet_string(i32 %84, i8* %85, i64 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %38, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %38, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %92 = load i8*, i8** %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = call i8* @OSSL_PARAM_construct_octet_string(i32 %91, i8* %92, i64 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %38, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %38, align 8
  store i32 %95, i32* %96, align 4
  %98 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %99 = load i8*, i8** %21, align 8
  %100 = load i64, i64* %22, align 8
  %101 = call i8* @OSSL_PARAM_construct_octet_string(i32 %98, i8* %99, i64 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %38, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %38, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %106 = load i8*, i8** %23, align 8
  %107 = load i64, i64* %24, align 8
  %108 = call i8* @OSSL_PARAM_construct_octet_string(i32 %105, i8* %106, i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %38, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %38, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %113 = load i8*, i8** %25, align 8
  %114 = load i64, i64* %26, align 8
  %115 = call i8* @OSSL_PARAM_construct_octet_string(i32 %112, i8* %113, i64 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load i32*, i32** %38, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %38, align 8
  store i32 %116, i32* %117, align 4
  %119 = load i32, i32* @OSSL_KDF_PARAM_SEED, align 4
  %120 = load i8*, i8** %27, align 8
  %121 = load i64, i64* %28, align 8
  %122 = call i8* @OSSL_PARAM_construct_octet_string(i32 %119, i8* %120, i64 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %38, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %38, align 8
  store i32 %123, i32* %124, align 4
  %126 = call i32 (...) @OSSL_PARAM_construct_end()
  %127 = load i32*, i32** %38, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %36, align 8
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %37, i64 0, i64 0
  %130 = call i64 @EVP_KDF_CTX_set_params(i32* %128, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %73
  %133 = load i32*, i32** %36, align 8
  %134 = load i8*, i8** %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = call i64 @EVP_KDF_derive(i32* %133, i8* %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32*, i32** %36, align 8
  %140 = call i32 @EVP_KDF_CTX_free(i32* %139)
  store i32 1, i32* %17, align 4
  br label %158

141:                                              ; preds = %132, %73
  br label %142

142:                                              ; preds = %141, %72, %64
  %143 = load i32, i32* %33, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %148 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %149 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %150 = call i32 @SSLfatal(i32* %146, i32 %147, i32 %148, i32 %149)
  br label %155

151:                                              ; preds = %142
  %152 = load i32, i32* @SSL_F_TLS1_PRF, align 4
  %153 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %154 = call i32 @SSLerr(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %145
  %156 = load i32*, i32** %36, align 8
  %157 = call i32 @EVP_KDF_CTX_free(i32* %156)
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %155, %138, %58
  %159 = load i32, i32* %17, align 4
  ret i32 %159
}

declare dso_local i32* @ssl_prf_md(i32*) #1

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @EVP_KDF_derive(i32*, i8*, i64) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
