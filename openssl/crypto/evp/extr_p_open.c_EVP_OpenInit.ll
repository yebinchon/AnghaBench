; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_open.c_EVP_OpenInit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_open.c_EVP_OpenInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@EVP_F_EVP_OPENINIT = common dso_local global i32 0, align 4
@EVP_R_PUBLIC_KEY_NOT_RSA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_OpenInit(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @EVP_CIPHER_CTX_reset(i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @EVP_DecryptInit_ex(i32* %23, i32* %24, i32* null, i8* null, i8* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %80

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i32*, i32** %13, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %80

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @EVP_PKEY_id(i32* %34)
  %36 = load i64, i64* @EVP_PKEY_RSA, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @EVP_F_EVP_OPENINIT, align 4
  %40 = load i32, i32* @EVP_R_PUBLIC_KEY_NOT_RSA, align 4
  %41 = call i32 @EVPerr(i32 %39, i32 %40)
  br label %75

42:                                               ; preds = %33
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @EVP_PKEY_size(i32* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i8* @OPENSSL_malloc(i32 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @EVP_F_EVP_OPENINIT, align 4
  %51 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %52 = call i32 @EVPerr(i32 %50, i32 %51)
  br label %75

53:                                               ; preds = %42
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @EVP_PKEY_decrypt_old(i8* %54, i8* %55, i32 %56, i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %53
  br label %75

67:                                               ; preds = %61
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @EVP_DecryptInit_ex(i32* %68, i32* null, i32* null, i8* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %75

74:                                               ; preds = %67
  store i32 1, i32* %17, align 4
  br label %75

75:                                               ; preds = %74, %73, %66, %49, %38
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @OPENSSL_clear_free(i8* %76, i32 %77)
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %32, %27
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_PKEY_decrypt_old(i8*, i8*, i32, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
