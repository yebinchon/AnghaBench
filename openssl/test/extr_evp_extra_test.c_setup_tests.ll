; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_extra_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_EVP_DigestSignInit = common dso_local global i32 0, align 4
@test_EVP_DigestVerifyInit = common dso_local global i32 0, align 4
@test_EVP_Enveloped = common dso_local global i32 0, align 4
@test_d2i_AutoPrivateKey = common dso_local global i32 0, align 4
@keydata = common dso_local global i32 0, align 4
@test_EVP_PKCS82PKEY = common dso_local global i32 0, align 4
@test_EVP_SM2 = common dso_local global i32 0, align 4
@test_EVP_SM2_verify = common dso_local global i32 0, align 4
@test_set_get_raw_keys = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@custom_pmeth = common dso_local global i32 0, align 4
@pkey_custom_check = common dso_local global i32 0, align 4
@pkey_custom_pub_check = common dso_local global i32 0, align 4
@pkey_custom_param_check = common dso_local global i32 0, align 4
@test_EVP_PKEY_check = common dso_local global i32 0, align 4
@keycheckdata = common dso_local global i32 0, align 4
@test_HKDF = common dso_local global i32 0, align 4
@test_X509_PUBKEY_inplace = common dso_local global i32 0, align 4
@test_invalide_ec_char2_pub_range_decode = common dso_local global i32 0, align 4
@ec_der_pub_keys = common dso_local global i32 0, align 4
@test_EVP_PKEY_CTX_get_set_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @test_EVP_DigestSignInit, align 4
  %3 = call i32 @ADD_ALL_TESTS(i32 %2, i32 4)
  %4 = load i32, i32* @test_EVP_DigestVerifyInit, align 4
  %5 = call i32 @ADD_TEST(i32 %4)
  %6 = load i32, i32* @test_EVP_Enveloped, align 4
  %7 = call i32 @ADD_TEST(i32 %6)
  %8 = load i32, i32* @test_d2i_AutoPrivateKey, align 4
  %9 = load i32, i32* @keydata, align 4
  %10 = call i32 @OSSL_NELEM(i32 %9)
  %11 = call i32 @ADD_ALL_TESTS(i32 %8, i32 %10)
  %12 = load i32, i32* @test_EVP_PKCS82PKEY, align 4
  %13 = call i32 @ADD_TEST(i32 %12)
  %14 = load i32, i32* @test_EVP_SM2, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_EVP_SM2_verify, align 4
  %17 = call i32 @ADD_TEST(i32 %16)
  %18 = load i32, i32* @test_set_get_raw_keys, align 4
  %19 = load i32, i32* @keys, align 4
  %20 = call i32 @OSSL_NELEM(i32 %19)
  %21 = call i32 @ADD_ALL_TESTS(i32 %18, i32 %20)
  %22 = call i32 @EVP_PKEY_meth_new(i32 233811181, i32 0)
  store i32 %22, i32* @custom_pmeth, align 4
  %23 = load i32, i32* @custom_pmeth, align 4
  %24 = call i32 @TEST_ptr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %57

27:                                               ; preds = %0
  %28 = load i32, i32* @custom_pmeth, align 4
  %29 = load i32, i32* @pkey_custom_check, align 4
  %30 = call i32 @EVP_PKEY_meth_set_check(i32 %28, i32 %29)
  %31 = load i32, i32* @custom_pmeth, align 4
  %32 = load i32, i32* @pkey_custom_pub_check, align 4
  %33 = call i32 @EVP_PKEY_meth_set_public_check(i32 %31, i32 %32)
  %34 = load i32, i32* @custom_pmeth, align 4
  %35 = load i32, i32* @pkey_custom_param_check, align 4
  %36 = call i32 @EVP_PKEY_meth_set_param_check(i32 %34, i32 %35)
  %37 = load i32, i32* @custom_pmeth, align 4
  %38 = call i32 @EVP_PKEY_meth_add0(i32 %37)
  %39 = call i32 @TEST_int_eq(i32 %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %57

42:                                               ; preds = %27
  %43 = load i32, i32* @test_EVP_PKEY_check, align 4
  %44 = load i32, i32* @keycheckdata, align 4
  %45 = call i32 @OSSL_NELEM(i32 %44)
  %46 = call i32 @ADD_ALL_TESTS(i32 %43, i32 %45)
  %47 = load i32, i32* @test_HKDF, align 4
  %48 = call i32 @ADD_TEST(i32 %47)
  %49 = load i32, i32* @test_X509_PUBKEY_inplace, align 4
  %50 = call i32 @ADD_TEST(i32 %49)
  %51 = load i32, i32* @test_invalide_ec_char2_pub_range_decode, align 4
  %52 = load i32, i32* @ec_der_pub_keys, align 4
  %53 = call i32 @OSSL_NELEM(i32 %52)
  %54 = call i32 @ADD_ALL_TESTS(i32 %51, i32 %53)
  %55 = load i32, i32* @test_EVP_PKEY_CTX_get_set_params, align 4
  %56 = call i32 @ADD_TEST(i32 %55)
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %42, %41, %26
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @EVP_PKEY_meth_new(i32, i32) #1

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @EVP_PKEY_meth_set_check(i32, i32) #1

declare dso_local i32 @EVP_PKEY_meth_set_public_check(i32, i32) #1

declare dso_local i32 @EVP_PKEY_meth_set_param_check(i32, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @EVP_PKEY_meth_add0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
