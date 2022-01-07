; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_bind_helper.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_openssl.c_bind_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_openssl_id = common dso_local global i32 0, align 4
@engine_openssl_name = common dso_local global i32 0, align 4
@openssl_destroy = common dso_local global i32 0, align 4
@openssl_ciphers = common dso_local global i32 0, align 4
@openssl_digests = common dso_local global i32 0, align 4
@openssl_load_privkey = common dso_local global i32 0, align 4
@ossl_pkey_meths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bind_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_helper(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @engine_openssl_id, align 4
  %6 = call i32 @ENGINE_set_id(i32* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @engine_openssl_name, align 4
  %11 = call i32 @ENGINE_set_name(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @openssl_destroy, align 4
  %16 = call i32 @ENGINE_set_destroy_function(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (...) @RSA_get_default_method()
  %21 = call i32 @ENGINE_set_RSA(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (...) @DSA_get_default_method()
  %26 = call i32 @ENGINE_set_DSA(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (...) @EC_KEY_OpenSSL()
  %31 = call i32 @ENGINE_set_EC(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (...) @DH_get_default_method()
  %36 = call i32 @ENGINE_set_DH(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (...) @RAND_OpenSSL()
  %41 = call i32 @ENGINE_set_RAND(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33, %28, %23, %18, %13, %8, %1
  store i32 0, i32* %2, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ENGINE_set_id(i32*, i32) #1

declare dso_local i32 @ENGINE_set_name(i32*, i32) #1

declare dso_local i32 @ENGINE_set_destroy_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_RSA(i32*, i32) #1

declare dso_local i32 @RSA_get_default_method(...) #1

declare dso_local i32 @ENGINE_set_DSA(i32*, i32) #1

declare dso_local i32 @DSA_get_default_method(...) #1

declare dso_local i32 @ENGINE_set_EC(i32*, i32) #1

declare dso_local i32 @EC_KEY_OpenSSL(...) #1

declare dso_local i32 @ENGINE_set_DH(i32*, i32) #1

declare dso_local i32 @DH_get_default_method(...) #1

declare dso_local i32 @ENGINE_set_RAND(i32*, i32) #1

declare dso_local i32 @RAND_OpenSSL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
