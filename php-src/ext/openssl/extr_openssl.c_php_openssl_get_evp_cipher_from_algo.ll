; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_get_evp_cipher_from_algo.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_get_evp_cipher_from_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @php_openssl_get_evp_cipher_from_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_get_evp_cipher_from_algo(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 129, label %5
    i32 128, label %7
    i32 130, label %9
    i32 131, label %11
    i32 135, label %13
    i32 134, label %15
    i32 133, label %17
    i32 132, label %19
  ]

5:                                                ; preds = %1
  %6 = call i32* (...) @EVP_rc2_40_cbc()
  store i32* %6, i32** %2, align 8
  br label %22

7:                                                ; preds = %1
  %8 = call i32* (...) @EVP_rc2_64_cbc()
  store i32* %8, i32** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = call i32* (...) @EVP_rc2_cbc()
  store i32* %10, i32** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = call i32* (...) @EVP_des_cbc()
  store i32* %12, i32** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = call i32* (...) @EVP_des_ede3_cbc()
  store i32* %14, i32** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = call i32* (...) @EVP_aes_128_cbc()
  store i32* %16, i32** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = call i32* (...) @EVP_aes_192_cbc()
  store i32* %18, i32** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %20, i32** %2, align 8
  br label %22

21:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @EVP_rc2_40_cbc(...) #1

declare dso_local i32* @EVP_rc2_64_cbc(...) #1

declare dso_local i32* @EVP_rc2_cbc(...) #1

declare dso_local i32* @EVP_des_cbc(...) #1

declare dso_local i32* @EVP_des_ede3_cbc(...) #1

declare dso_local i32* @EVP_aes_128_cbc(...) #1

declare dso_local i32* @EVP_aes_192_cbc(...) #1

declare dso_local i32* @EVP_aes_256_cbc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
