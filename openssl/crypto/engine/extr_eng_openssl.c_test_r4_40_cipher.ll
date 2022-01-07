; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_r4_40_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_test_r4_40_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r4_40_cipher = common dso_local global i32* null, align 8
@NID_rc4 = common dso_local global i32 0, align 4
@EVP_CIPH_VARIABLE_LENGTH = common dso_local global i32 0, align 4
@test_rc4_init_key = common dso_local global i32 0, align 4
@test_rc4_cipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @test_r4_40_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @test_r4_40_cipher() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @r4_40_cipher, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %36

4:                                                ; preds = %0
  %5 = load i32, i32* @NID_rc4, align 4
  %6 = call i32* @EVP_CIPHER_meth_new(i32 %5, i32 1, i32 5)
  store i32* %6, i32** %1, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @EVP_CIPH_VARIABLE_LENGTH, align 4
  %15 = call i32 @EVP_CIPHER_meth_set_flags(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @test_rc4_init_key, align 4
  %20 = call i32 @EVP_CIPHER_meth_set_init(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @test_rc4_cipher, align 4
  %25 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %22, %17, %12, %8, %4
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @EVP_CIPHER_meth_free(i32* %32)
  store i32* null, i32** %1, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32*, i32** %1, align 8
  store i32* %35, i32** @r4_40_cipher, align 8
  br label %36

36:                                               ; preds = %34, %0
  %37 = load i32*, i32** @r4_40_cipher, align 8
  ret i32* %37
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
