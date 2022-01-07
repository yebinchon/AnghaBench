; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_xcbc_d.c_desx_cbc_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_xcbc_d.c_desx_cbc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @desx_cbc_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desx_cbc_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %9

9:                                                ; preds = %13, %4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @EVP_MAXCHUNK, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* @EVP_MAXCHUNK, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_2__* @data(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_2__* @data(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_2__* @data(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %29)
  %31 = call i32 @DES_xcbc_encrypt(i8* %14, i8* %15, i64 %16, i32* %19, i32* %22, i32* %25, i32* %28, i32 %30)
  %32 = load i64, i64* @EVP_MAXCHUNK, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @EVP_MAXCHUNK, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %7, align 8
  %38 = load i64, i64* @EVP_MAXCHUNK, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %6, align 8
  br label %9

41:                                               ; preds = %9
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call %struct.TYPE_2__* @data(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %51)
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.TYPE_2__* @data(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %5, align 8
  %58 = call %struct.TYPE_2__* @data(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %60)
  %62 = call i32 @DES_xcbc_encrypt(i8* %45, i8* %46, i64 %47, i32* %50, i32* %53, i32* %56, i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %44, %41
  ret i32 1
}

declare dso_local i32 @DES_xcbc_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
