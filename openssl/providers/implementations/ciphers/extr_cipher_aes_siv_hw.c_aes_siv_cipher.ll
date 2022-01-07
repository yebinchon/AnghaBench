; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_siv_hw.c_aes_siv_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_siv_hw.c_aes_siv_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64)* @aes_siv_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_siv_cipher(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %11, align 8
  %20 = call i64 @CRYPTO_siv128_finish(i32* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @CRYPTO_siv128_aad(i32* %27, i8* %28, i64 %29)
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @CRYPTO_siv128_encrypt(i32* %39, i8* %40, i8* %41, i64 %42)
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %33
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @CRYPTO_siv128_decrypt(i32* %47, i8* %48, i8* %49, i64 %50)
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %38, %26, %18
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @CRYPTO_siv128_finish(i32*) #1

declare dso_local i32 @CRYPTO_siv128_aad(i32*, i8*, i64) #1

declare dso_local i64 @CRYPTO_siv128_encrypt(i32*, i8*, i8*, i64) #1

declare dso_local i64 @CRYPTO_siv128_decrypt(i32*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
