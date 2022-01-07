; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_check_public_exponent = common dso_local global i32 0, align 4
@test_check_prime_factor_range = common dso_local global i32 0, align 4
@test_check_prime_factor = common dso_local global i32 0, align 4
@test_check_private_exponent = common dso_local global i32 0, align 4
@test_check_crt_components = common dso_local global i32 0, align 4
@test_check_private_key = common dso_local global i32 0, align 4
@test_check_public_key = common dso_local global i32 0, align 4
@test_invalid_keypair = common dso_local global i32 0, align 4
@test_pq_diff = common dso_local global i32 0, align 4
@test_fips1864_keygen_kat = common dso_local global i32 0, align 4
@test_sp80056b_keygen = common dso_local global i32 0, align 4
@keygen_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_check_public_exponent, align 4
  %2 = call i32 @ADD_TEST(i32 %1)
  %3 = load i32, i32* @test_check_prime_factor_range, align 4
  %4 = call i32 @ADD_TEST(i32 %3)
  %5 = load i32, i32* @test_check_prime_factor, align 4
  %6 = call i32 @ADD_TEST(i32 %5)
  %7 = load i32, i32* @test_check_private_exponent, align 4
  %8 = call i32 @ADD_TEST(i32 %7)
  %9 = load i32, i32* @test_check_crt_components, align 4
  %10 = call i32 @ADD_TEST(i32 %9)
  %11 = load i32, i32* @test_check_private_key, align 4
  %12 = call i32 @ADD_TEST(i32 %11)
  %13 = load i32, i32* @test_check_public_key, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_invalid_keypair, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_pq_diff, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_fips1864_keygen_kat, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_sp80056b_keygen, align 4
  %22 = load i32, i32* @keygen_size, align 4
  %23 = call i64 @OSSL_NELEM(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ADD_ALL_TESTS(i32 %21, i32 %24)
  ret i32 1
}

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i64 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
