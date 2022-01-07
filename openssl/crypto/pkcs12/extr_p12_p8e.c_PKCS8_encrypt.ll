; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_p8e.c_PKCS8_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_p8e.c_PKCS8_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PBE_TYPE_PRF = common dso_local global i32 0, align 4
@PKCS12_F_PKCS8_ENCRYPT = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PKCS8_encrypt(i32 %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %16, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32* @PKCS5_pbe2_set(i32* %23, i32 %24, i8* %25, i32 %26)
  store i32* %27, i32** %19, align 8
  br label %48

28:                                               ; preds = %8
  %29 = load i32, i32* @EVP_PBE_TYPE_PRF, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @EVP_PBE_find(i32 %29, i32 %30, i32* null, i32* null, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32* @PKCS5_pbe2_set_iv(i32* %34, i32 %35, i8* %36, i32 %37, i32* null, i32 %38)
  store i32* %39, i32** %19, align 8
  br label %47

40:                                               ; preds = %28
  %41 = call i32 (...) @ERR_clear_error()
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32* @PKCS5_pbe_set(i32 %42, i32 %43, i8* %44, i32 %45)
  store i32* %46, i32** %19, align 8
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32*, i32** %19, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @PKCS12_F_PKCS8_ENCRYPT, align 4
  %53 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %54 = call i32 @PKCS12err(i32 %52, i32 %53)
  store i32* null, i32** %9, align 8
  br label %68

55:                                               ; preds = %48
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = call i32* @PKCS8_set0_pbe(i8* %56, i32 %57, i32* %58, i32* %59)
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @X509_ALGOR_free(i32* %64)
  store i32* null, i32** %9, align 8
  br label %68

66:                                               ; preds = %55
  %67 = load i32*, i32** %18, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %66, %63, %51
  %69 = load i32*, i32** %9, align 8
  ret i32* %69
}

declare dso_local i32* @PKCS5_pbe2_set(i32*, i32, i8*, i32) #1

declare dso_local i64 @EVP_PBE_find(i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @PKCS5_pbe2_set_iv(i32*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @PKCS5_pbe_set(i32, i32, i8*, i32) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32* @PKCS8_set0_pbe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @X509_ALGOR_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
