; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getPublicKeyInfo.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_pki.c_getPublicKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 73, i32 110, i32 102, i32 111, i32 32, i32 40, i32 100, i32 97, i32 116, i32 97, i32 41, i32 0], align 4
@.str.1 = private unnamed_addr constant [32 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 75, i32 101, i32 121, i32 73, i32 110, i32 102, i32 111, i32 32, i32 40, i32 105, i32 110, i32 105, i32 116, i32 41, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getPublicKeyInfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @X509_ASN_ENCODING, align 4
  %10 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @CryptExportPublicKeyInfo(i32 %7, i32 %8, i32 %11, i32* null, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @LPTR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @LocalAlloc(i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @X509_ASN_ENCODING, align 4
  %24 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @CryptExportPublicKeyInfo(i32 %21, i32 %22, i32 %25, i32* %26, i32* %6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str to i8*))
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @LocalFree(i32* %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %5, align 8
  br label %34

34:                                               ; preds = %29, %20
  br label %35

35:                                               ; preds = %34, %14
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.1 to i8*))
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i64 @CryptExportPublicKeyInfo(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
