; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_decr.c_PKCS12_pbe_crypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_decr.c_PKCS12_pbe_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PKCS12_F_PKCS12_PBE_CRYPT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@PKCS12_R_PKCS12_CIPHERFINAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PKCS12_pbe_crypt(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8** %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %21 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %21, i32** %20, align 8
  %22 = load i32*, i32** %20, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @PKCS12_F_PKCS12_PBE_CRYPT, align 4
  %26 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %27 = call i32 @PKCS12err(i32 %25, i32 %26)
  br label %101

28:                                               ; preds = %8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %20, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @EVP_PBE_CipherInit(i32 %31, i8* %32, i32 %33, i32 %36, i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @PKCS12_F_PKCS12_PBE_CRYPT, align 4
  %43 = load i32, i32* @PKCS12_R_PKCS12_ALGOR_CIPHERINIT_ERROR, align 4
  %44 = call i32 @PKCS12err(i32 %42, i32 %43)
  br label %101

45:                                               ; preds = %28
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %20, align 8
  %49 = call i64 @EVP_CIPHER_CTX_block_size(i32* %48)
  %50 = add nsw i64 %47, %49
  %51 = call i8* @OPENSSL_malloc(i64 %50)
  store i8* %51, i8** %17, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @PKCS12_F_PKCS12_PBE_CRYPT, align 4
  %55 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %56 = call i32 @PKCS12err(i32 %54, i32 %55)
  br label %101

57:                                               ; preds = %45
  %58 = load i32*, i32** %20, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @EVP_CipherUpdate(i32* %58, i8* %59, i32* %19, i8* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 @OPENSSL_free(i8* %65)
  store i8* null, i8** %17, align 8
  %67 = load i32, i32* @PKCS12_F_PKCS12_PBE_CRYPT, align 4
  %68 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %69 = call i32 @PKCS12err(i32 %67, i32 %68)
  br label %101

70:                                               ; preds = %57
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %18, align 4
  %72 = load i32*, i32** %20, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 @EVP_CipherFinal_ex(i32* %72, i8* %76, i32* %19)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 @OPENSSL_free(i8* %80)
  store i8* null, i8** %17, align 8
  %82 = load i32, i32* @PKCS12_F_PKCS12_PBE_CRYPT, align 4
  %83 = load i32, i32* @PKCS12_R_PKCS12_CIPHERFINAL_ERROR, align 4
  %84 = call i32 @PKCS12err(i32 %82, i32 %83)
  br label %101

85:                                               ; preds = %70
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %18, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %18, align 4
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i8**, i8*** %14, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %17, align 8
  %99 = load i8**, i8*** %14, align 8
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %79, %64, %53, %41, %24
  %102 = load i32*, i32** %20, align 8
  %103 = call i32 @EVP_CIPHER_CTX_free(i32* %102)
  %104 = load i8*, i8** %17, align 8
  ret i8* %104
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @EVP_PBE_CipherInit(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #1

declare dso_local i32 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_CipherFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
