; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdh_kdf.c_ecdh_KDF_X9_63.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdh_kdf.c_ecdh_KDF_X9_63.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_KDF_NAME_X963KDF = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdh_KDF_X9_63(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i8* @EVP_MD_name(i32* %22)
  store i8* %23, i8** %19, align 8
  %24 = load i32, i32* @OSSL_KDF_NAME_X963KDF, align 4
  %25 = call i32* @EVP_KDF_fetch(i32* null, i32 %24, i32* null)
  store i32* %25, i32** %20, align 8
  %26 = load i32*, i32** %20, align 8
  %27 = call i32* @EVP_KDF_CTX_new(i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %7
  %30 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %31 = load i8*, i8** %19, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i32 @OSSL_PARAM_construct_utf8_string(i32 %30, i8* %31, i64 %34)
  %36 = load i32*, i32** %18, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %18, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i8* @OSSL_PARAM_construct_octet_string(i32 %38, i8* %39, i64 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %18, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %18, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i8* @OSSL_PARAM_construct_octet_string(i32 %45, i8* %46, i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %18, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %18, align 8
  store i32 %49, i32* %50, align 4
  %52 = call i32 (...) @OSSL_PARAM_construct_end()
  %53 = load i32*, i32** %18, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %56 = call i64 @EVP_KDF_CTX_set_params(i32* %54, i32* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %29
  %59 = load i32*, i32** %16, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @EVP_KDF_derive(i32* %59, i8* %60, i64 %61)
  %63 = icmp sgt i64 %62, 0
  br label %64

64:                                               ; preds = %58, %29
  %65 = phi i1 [ false, %29 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @EVP_KDF_CTX_free(i32* %67)
  br label %69

69:                                               ; preds = %64, %7
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @EVP_KDF_free(i32* %70)
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i64 @EVP_KDF_derive(i32*, i8*, i64) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
