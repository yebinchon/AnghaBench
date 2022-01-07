; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pbe_scrypt.c_EVP_PBE_scrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pbe_scrypt.c_EVP_PBE_scrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@EVP_F_EVP_PBE_SCRYPT = common dso_local global i32 0, align 4
@EVP_R_PARAMETER_TOO_LARGE = common dso_local global i32 0, align 4
@SCRYPT_MAX_MEM = common dso_local global i64 0, align 8
@OSSL_KDF_NAME_SCRYPT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_PASSWORD = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_N = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_R = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_P = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SCRYPT_MAXMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PBE_scrypt(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca [7 x i32], align 16
  %27 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store i32 1, i32* %23, align 4
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %26, i64 0, i64 0
  store i32* %28, i32** %27, align 8
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* @UINT32_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* @UINT32_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %10
  %37 = load i32, i32* @EVP_F_EVP_PBE_SCRYPT, align 4
  %38 = load i32, i32* @EVP_R_PARAMETER_TOO_LARGE, align 4
  %39 = call i32 @EVPerr(i32 %37, i32 %38)
  store i32 0, i32* %11, align 4
  br label %117

40:                                               ; preds = %32
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %22, align 8
  store i8* %44, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** %14, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** %22, align 8
  store i8* %49, i8** %14, align 8
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i64, i64* %19, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* @SCRYPT_MAX_MEM, align 8
  store i64 %54, i64* %19, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @OSSL_KDF_NAME_SCRYPT, align 4
  %57 = call i32* @EVP_KDF_fetch(i32* null, i32 %56, i32* null)
  store i32* %57, i32** %24, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = call i32* @EVP_KDF_CTX_new(i32* %58)
  store i32* %59, i32** %25, align 8
  %60 = load i32*, i32** %24, align 8
  %61 = call i32 @EVP_KDF_free(i32* %60)
  %62 = load i32*, i32** %25, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %117

65:                                               ; preds = %55
  %66 = load i32, i32* @OSSL_KDF_PARAM_PASSWORD, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i8* @OSSL_PARAM_construct_octet_string(i32 %66, i8* %67, i64 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %27, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %27, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i8* @OSSL_PARAM_construct_octet_string(i32 %73, i8* %74, i64 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %27, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %27, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_N, align 4
  %81 = call i8* @OSSL_PARAM_construct_uint64(i32 %80, i64* %16)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %27, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %27, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_R, align 4
  %86 = call i8* @OSSL_PARAM_construct_uint64(i32 %85, i64* %17)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %27, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %27, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_P, align 4
  %91 = call i8* @OSSL_PARAM_construct_uint64(i32 %90, i64* %18)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %27, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %27, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32, i32* @OSSL_KDF_PARAM_SCRYPT_MAXMEM, align 4
  %96 = call i8* @OSSL_PARAM_construct_uint64(i32 %95, i64* %19)
  %97 = ptrtoint i8* %96 to i32
  %98 = load i32*, i32** %27, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %27, align 8
  store i32 %97, i32* %98, align 4
  %100 = call i32 (...) @OSSL_PARAM_construct_end()
  %101 = load i32*, i32** %27, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %25, align 8
  %103 = getelementptr inbounds [7 x i32], [7 x i32]* %26, i64 0, i64 0
  %104 = call i32 @EVP_KDF_CTX_set_params(i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %112, label %106

106:                                              ; preds = %65
  %107 = load i32*, i32** %25, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = load i64, i64* %21, align 8
  %110 = call i32 @EVP_KDF_derive(i32* %107, i8* %108, i64 %109)
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %106, %65
  store i32 0, i32* %23, align 4
  br label %113

113:                                              ; preds = %112, %106
  %114 = load i32*, i32** %25, align 8
  %115 = call i32 @EVP_KDF_CTX_free(i32* %114)
  %116 = load i32, i32* %23, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %64, %36
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

declare dso_local i8* @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i8* @OSSL_PARAM_construct_uint64(i32, i64*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_KDF_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @EVP_KDF_derive(i32*, i8*, i64) #1

declare dso_local i32 @EVP_KDF_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
