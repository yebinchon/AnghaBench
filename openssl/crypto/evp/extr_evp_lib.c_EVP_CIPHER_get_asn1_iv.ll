; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_get_asn1_iv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_get_asn1_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_get_asn1_iv(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ule i64 %21, %15
  %23 = zext i1 %22 to i32
  %24 = call i32 @ossl_assert(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %41

27:                                               ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ASN1_TYPE_get_octetstring(i32* %28, i8* %17, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %41

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @EVP_CipherInit_ex(i32* %36, i32* null, i32* null, i32* null, i8* %17, i32 -1)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %41

40:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %39, %34, %26
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %49 [
    i32 0, label %44
    i32 1, label %47
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48

49:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @ASN1_TYPE_get_octetstring(i32*, i8*, i32) #2

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
