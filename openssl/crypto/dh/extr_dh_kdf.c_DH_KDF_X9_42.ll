; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_kdf.c_DH_KDF_X9_42.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_kdf.c_DH_KDF_X9_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_X942KDF = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_DIGEST = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_UKM = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_CEK_ALG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_KDF_X9_42(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [5 x i32], align 16
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  store i32* %28, i32** %24, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = call i8* @EVP_MD_name(i32* %29)
  store i8* %30, i8** %25, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32* @EVP_MD_provider(i32* %31)
  store i32* %32, i32** %26, align 8
  %33 = load i32*, i32** %26, align 8
  %34 = call i32* @ossl_provider_library_context(i32* %33)
  store i32* %34, i32** %27, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @OBJ_obj2nid(i32* %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @NID_undef, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %113

41:                                               ; preds = %8
  %42 = load i32, i32* %19, align 4
  %43 = call i8* @OBJ_nid2sn(i32 %42)
  store i8* %43, i8** %22, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %113

47:                                               ; preds = %41
  %48 = load i32*, i32** %27, align 8
  %49 = load i32, i32* @OSSL_KDF_NAME_X942KDF, align 4
  %50 = call i32* @EVP_KDF_fetch(i32* %48, i32 %49, i32* null)
  store i32* %50, i32** %21, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i32* @EVP_KDF_CTX_new(i32* %51)
  store i32* %52, i32** %20, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %107

55:                                               ; preds = %47
  %56 = load i32, i32* @OSSL_KDF_PARAM_DIGEST, align 4
  %57 = load i8*, i8** %25, align 8
  %58 = load i8*, i8** %25, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = add nsw i64 %59, 1
  %61 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %56, i8* %57, i64 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %24, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %24, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i8* @OSSL_PARAM_construct_octet_string(i32 %65, i8* %66, i64 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32*, i32** %24, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %24, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %55
  %75 = load i32, i32* @OSSL_KDF_PARAM_UKM, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call i8* @OSSL_PARAM_construct_octet_string(i32 %75, i8* %76, i64 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %24, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %24, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %74, %55
  %83 = load i32, i32* @OSSL_KDF_PARAM_CEK_ALG, align 4
  %84 = load i8*, i8** %22, align 8
  %85 = load i8*, i8** %22, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = add nsw i64 %86, 1
  %88 = call i8* @OSSL_PARAM_construct_utf8_string(i32 %83, i8* %84, i64 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %24, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %24, align 8
  store i32 %89, i32* %90, align 4
  %92 = call i32 (...) @OSSL_PARAM_construct_end()
  %93 = load i32*, i32** %24, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %20, align 8
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %23, i64 0, i64 0
  %96 = call i64 @EVP_KDF_CTX_set_params(i32* %94, i32* %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load i32*, i32** %20, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @EVP_KDF_derive(i32* %99, i8* %100, i64 %101)
  %103 = icmp sgt i64 %102, 0
  br label %104

104:                                              ; preds = %98, %82
  %105 = phi i1 [ false, %82 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %104, %54
  %108 = load i32*, i32** %20, align 8
  %109 = call i32 @EVP_KDF_CTX_free(i32* %108)
  %110 = load i32*, i32** %21, align 8
  %111 = call i32 @EVP_KDF_free(i32* %110)
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %107, %46, %40
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i8* @EVP_MD_name(i32*) #1

declare dso_local i32* @EVP_MD_provider(i32*) #1

declare dso_local i32* @ossl_provider_library_context(i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32* @EVP_KDF_CTX_new(i32*) #1

declare dso_local i8* @OSSL_PARAM_construct_utf8_string(i32, i8*, i64) #1

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
