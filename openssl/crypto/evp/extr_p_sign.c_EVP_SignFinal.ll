; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_sign.c_EVP_SignFinal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_sign.c_EVP_SignFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_FINALISE = common dso_local global i32 0, align 4
@EVP_F_EVP_SIGNFINAL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_SignFinal(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %15, align 8
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @EVP_MD_CTX_FLAG_FINALISE, align 4
  %26 = call i64 @EVP_MD_CTX_test_flags(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @EVP_DigestFinal_ex(i32* %29, i8* %22, i32* %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %89

33:                                               ; preds = %28
  br label %58

34:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %35 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EVP_F_EVP_SIGNFINAL, align 4
  %40 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %41 = call i32 @EVPerr(i32 %39, i32 %40)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

42:                                               ; preds = %34
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @EVP_MD_CTX_copy_ex(i32* %43, i32* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @EVP_DigestFinal_ex(i32* %49, i8* %22, i32* %12)
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @EVP_MD_CTX_free(i32* %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @EVP_PKEY_size(i32* %59)
  store i64 %60, i64* %14, align 8
  store i32 0, i32* %13, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32* @EVP_PKEY_CTX_new(i32* %61, i32* null)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %89

66:                                               ; preds = %58
  %67 = load i32*, i32** %15, align 8
  %68 = call i64 @EVP_PKEY_sign_init(i32* %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %89

71:                                               ; preds = %66
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @EVP_MD_CTX_md(i32* %73)
  %75 = call i64 @EVP_PKEY_CTX_set_signature_md(i32* %72, i32 %74)
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %89

78:                                               ; preds = %71
  %79 = load i32*, i32** %15, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @EVP_PKEY_sign(i32* %79, i8* %80, i64* %14, i8* %22, i32 %81)
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  %86 = load i64, i64* %14, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  store i32 1, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %84, %77, %70, %65, %32
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @EVP_PKEY_CTX_free(i32* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %93

93:                                               ; preds = %89, %56, %38
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_MD_CTX_test_flags(i32*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVPerr(i32, i32) #2

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i64 @EVP_PKEY_size(i32*) #2

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #2

declare dso_local i64 @EVP_PKEY_sign_init(i32*) #2

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(i32*, i32) #2

declare dso_local i32 @EVP_MD_CTX_md(i32*) #2

declare dso_local i64 @EVP_PKEY_sign(i32*, i8*, i64*, i8*, i32) #2

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
