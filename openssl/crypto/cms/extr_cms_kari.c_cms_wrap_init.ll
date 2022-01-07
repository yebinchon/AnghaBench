; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_cms_wrap_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_kari.c_cms_wrap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@EVP_CIPH_WRAP_MODE = common dso_local global i64 0, align 8
@NID_des_ede3_cbc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @cms_wrap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cms_wrap_init(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @EVP_CIPHER_key_length(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @EVP_CIPHER_CTX_cipher(i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @EVP_CIPHER_CTX_mode(i32* %19)
  %21 = load i64, i64* @EVP_CIPH_WRAP_MODE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @EVP_CIPHER_type(i32* %26)
  %28 = load i64, i64* @NID_des_ede3_cbc, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32* (...) @EVP_des_ede3_wrap()
  store i32* %31, i32** %7, align 8
  br label %46

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 16
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32* (...) @EVP_aes_128_wrap()
  store i32* %36, i32** %7, align 8
  br label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 24
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32* (...) @EVP_aes_192_wrap()
  store i32* %41, i32** %7, align 8
  br label %44

42:                                               ; preds = %37
  %43 = call i32* (...) @EVP_aes_256_wrap()
  store i32* %43, i32** %7, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @EVP_EncryptInit_ex(i32* %47, i32* %48, i32* null, i32* null, i32* null)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %24, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i32* @EVP_CIPHER_CTX_cipher(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32*) #1

declare dso_local i64 @EVP_CIPHER_type(i32*) #1

declare dso_local i32* @EVP_des_ede3_wrap(...) #1

declare dso_local i32* @EVP_aes_128_wrap(...) #1

declare dso_local i32* @EVP_aes_192_wrap(...) #1

declare dso_local i32* @EVP_aes_256_wrap(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
