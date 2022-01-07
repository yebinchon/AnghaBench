; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_dec.c_EVP_PKEY_decrypt_old.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_dec.c_EVP_PKEY_decrypt_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@EVP_F_EVP_PKEY_DECRYPT_OLD = common dso_local global i32 0, align 4
@EVP_R_PUBLIC_KEY_NOT_RSA = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_decrypt_old(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32*, i32** %8, align 8
  %11 = call i64 @EVP_PKEY_id(i32* %10)
  %12 = load i64, i64* @EVP_PKEY_RSA, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @EVP_F_EVP_PKEY_DECRYPT_OLD, align 4
  %16 = load i32, i32* @EVP_R_PUBLIC_KEY_NOT_RSA, align 4
  %17 = call i32 @EVPerr(i32 %15, i32 %16)
  br label %26

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @EVP_PKEY_get0_RSA(i32* %22)
  %24 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %25 = call i32 @RSA_private_decrypt(i32 %19, i8* %20, i8* %21, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %18, %14
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @RSA_private_decrypt(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_get0_RSA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
