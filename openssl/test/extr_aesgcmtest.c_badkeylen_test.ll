; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_aesgcmtest.c_badkeylen_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_aesgcmtest.c_badkeylen_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @badkeylen_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @badkeylen_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %4 = call i32* (...) @EVP_aes_192_gcm()
  store i32* %4, i32** %3, align 8
  %5 = call i64 @TEST_ptr(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %0
  %8 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %8, i32** %2, align 8
  %9 = call i64 @TEST_ptr(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @EVP_EncryptInit_ex(i32* %12, i32* %13, i32* null, i32* null, i32* null)
  %15 = call i64 @TEST_true(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %18, i32 2)
  %20 = call i64 @TEST_false(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11, %7, %0
  %23 = phi i1 [ false, %11 ], [ false, %7 ], [ false, %0 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %1, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @EVP_CIPHER_CTX_free(i32* %25)
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @EVP_aes_192_gcm(...) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
