; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede_ofb_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_des3.c_des_ede_ofb_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@EVP_MAXCHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @des_ede_ofb_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_ede_ofb_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %11

11:                                               ; preds = %15, %4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @EVP_MAXCHUNK, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @EVP_CIPHER_CTX_num(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @EVP_MAXCHUNK, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call %struct.TYPE_2__* @data(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_2__* @data(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_2__* @data(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %30)
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @DES_ede3_ofb64_encrypt(i8* %18, i8* %19, i64 %20, i32* %23, i32* %26, i32* %29, i32* %32, i32* %9)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @EVP_CIPHER_CTX_set_num(i32* %34, i32 %35)
  %37 = load i64, i64* @EVP_MAXCHUNK, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* @EVP_MAXCHUNK, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %7, align 8
  %43 = load i64, i64* @EVP_MAXCHUNK, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %6, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @EVP_CIPHER_CTX_num(i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call %struct.TYPE_2__* @data(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %5, align 8
  %59 = call %struct.TYPE_2__* @data(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.TYPE_2__* @data(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @EVP_CIPHER_CTX_iv_noconst(i32* %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @DES_ede3_ofb64_encrypt(i8* %52, i8* %53, i64 %54, i32* %57, i32* %60, i32* %63, i32* %66, i32* %10)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @EVP_CIPHER_CTX_set_num(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %49, %46
  ret i32 1
}

declare dso_local i32 @EVP_CIPHER_CTX_num(i32*) #1

declare dso_local i32 @DES_ede3_ofb64_encrypt(i8*, i8*, i64, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @data(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_noconst(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_num(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
