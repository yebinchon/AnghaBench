; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getCertificate.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getCertificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 83, i32 105, i32 103, i32 110, i32 65, i32 110, i32 100, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 32, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 0], align 4
@.str.1 = private unnamed_addr constant [37 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 83, i32 105, i32 103, i32 110, i32 65, i32 110, i32 100, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 32, i32 40, i32 105, i32 110, i32 105, i32 116, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getCertificate(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @X509_ASN_ENCODING, align 4
  %20 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = call i64 @CryptSignAndEncodeCertificate(i32 %17, i32 %18, i32 %21, i32 %22, i8* %23, i32 %24, i32* null, i32* null, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %7
  %29 = load i32, i32* @LPTR, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @LocalAlloc(i32 %29, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32**, i32*** %13, align 8
  store i32* %33, i32** %34, align 8
  %35 = icmp ne i32* %33, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @X509_ASN_ENCODING, align 4
  %40 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32**, i32*** %13, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @CryptSignAndEncodeCertificate(i32 %37, i32 %38, i32 %41, i32 %42, i8* %43, i32 %44, i32* null, i32* %46, i32* %47)
  store i64 %48, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %36
  %51 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([37 x i32]* @.str to i8*))
  %52 = load i32**, i32*** %13, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @LocalFree(i32* %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32**, i32*** %13, align 8
  store i32* %55, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %36
  br label %58

58:                                               ; preds = %57, %28
  br label %61

59:                                               ; preds = %7
  %60 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([37 x i32]* @.str.1 to i8*))
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i64, i64* %15, align 8
  ret i64 %62
}

declare dso_local i64 @CryptSignAndEncodeCertificate(i32, i32, i32, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
