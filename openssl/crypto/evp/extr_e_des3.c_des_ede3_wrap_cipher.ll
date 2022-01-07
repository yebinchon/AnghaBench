; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_wrap_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede3_wrap_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@EVP_F_DES_EDE3_WRAP_CIPHER = common dso_local global i32 0, align 4
@EVP_R_PARTIALLY_OVERLAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede3_wrap_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede3_wrap_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EVP_MAXCHUNK, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %9, align 8
  %15 = urem i64 %14, 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %44

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @is_partially_overlapping(i8* %19, i8* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @EVP_F_DES_EDE3_WRAP_CIPHER, align 4
  %26 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %27 = call i32 @EVPerr(i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %44

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @EVP_CIPHER_CTX_encrypting(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @des_ede3_wrap(i32* %33, i8* %34, i8* %35, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @des_ede3_unwrap(i32* %39, i8* %40, i8* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %32, %24, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @is_partially_overlapping(i8*, i8*, i64) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_CIPHER_CTX_encrypting(i32*) #1

declare dso_local i32 @des_ede3_wrap(i32*, i8*, i8*, i64) #1

declare dso_local i32 @des_ede3_unwrap(i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
