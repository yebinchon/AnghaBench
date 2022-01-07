; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_r4_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_r4_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r4_cipher = common dso_local global i32* null, align 8
@NID_rc4 = common dso_local global i32 0, align 4
@TEST_RC4_KEY_SIZE = common dso_local global i32 0, align 4
@EVP_CIPH_VARIABLE_LENGTH = common dso_local global i32 0, align 4
@test_rc4_init_key = common dso_local global i32 0, align 4
@test_rc4_cipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @test_r4_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @test_r4_cipher() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @r4_cipher, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load i32, i32* @NID_rc4, align 4
  %6 = load i32, i32* @TEST_RC4_KEY_SIZE, align 4
  %7 = call i32* @EVP_CIPHER_meth_new(i32 %5, i32 1, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @EVP_CIPH_VARIABLE_LENGTH, align 4
  %16 = call i32 @EVP_CIPHER_meth_set_flags(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @test_rc4_init_key, align 4
  %21 = call i32 @EVP_CIPHER_meth_set_init(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @test_rc4_cipher, align 4
  %26 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %23, %18, %13, %9, %4
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @EVP_CIPHER_meth_free(i32* %33)
  store i32* null, i32** %1, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %1, align 8
  store i32* %36, i32** @r4_cipher, align 8
  br label %37

37:                                               ; preds = %35, %0
  %38 = load i32*, i32** @r4_cipher, align 8
  ret i32* %38
}

declare dso_local i32* @EVP_CIPHER_meth_new(i32, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_iv_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_do_cipher(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
