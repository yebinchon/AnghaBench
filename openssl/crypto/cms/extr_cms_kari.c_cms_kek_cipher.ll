; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_cms_kek_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_cms_kek_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@EVP_MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i64, %struct.TYPE_3__*, i32)* @cms_kek_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_kek_cipher(i8** %0, i64* %1, i8* %2, i64 %3, %struct.TYPE_3__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @EVP_CIPHER_CTX_key_length(i32 %27)
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i32, i32* @EVP_MAX_KEY_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %100

34:                                               ; preds = %6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @EVP_PKEY_derive(i32* %37, i8* %24, i64* %16)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %80

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @EVP_CipherInit_ex(i32 %44, i32* null, i32* null, i8* %24, i32* null, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %80

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @EVP_CipherUpdate(i32 %52, i8* null, i32* %19, i8* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %80

58:                                               ; preds = %49
  %59 = load i32, i32* %19, align 4
  %60 = call i8* @OPENSSL_malloc(i32 %59)
  store i8* %60, i8** %18, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %80

64:                                               ; preds = %58
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @EVP_CipherUpdate(i32 %67, i8* %68, i32* %19, i8* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %80

74:                                               ; preds = %64
  %75 = load i8*, i8** %18, align 8
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %74, %73, %63, %57, %48, %40
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @OPENSSL_cleanse(i8* %24, i64 %81)
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @OPENSSL_free(i8* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @EVP_CIPHER_CTX_reset(i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @EVP_PKEY_CTX_free(i32* %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %100

100:                                              ; preds = %88, %33
  %101 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_CIPHER_CTX_key_length(i32) #2

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #2

declare dso_local i32 @EVP_CipherInit_ex(i32, i32*, i32*, i8*, i32*, i32) #2

declare dso_local i32 @EVP_CipherUpdate(i32, i8*, i32*, i8*, i64) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32) #2

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
