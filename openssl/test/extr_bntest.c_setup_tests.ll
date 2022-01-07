; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_EOF = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@test_sub = common dso_local global i32 0, align 4
@test_div_recip = common dso_local global i32 0, align 4
@test_mod = common dso_local global i32 0, align 4
@test_modexp_mont5 = common dso_local global i32 0, align 4
@test_kronecker = common dso_local global i32 0, align 4
@test_rand = common dso_local global i32 0, align 4
@test_bn2padded = common dso_local global i32 0, align 4
@test_dec2bn = common dso_local global i32 0, align 4
@test_hex2bn = common dso_local global i32 0, align 4
@test_asc2bn = common dso_local global i32 0, align 4
@test_mpi = common dso_local global i32 0, align 4
@kMPITests = common dso_local global i32 0, align 4
@test_negzero = common dso_local global i32 0, align 4
@test_badmod = common dso_local global i32 0, align 4
@test_expmodzero = common dso_local global i32 0, align 4
@test_expmodone = common dso_local global i32 0, align 4
@test_smallprime = common dso_local global i32 0, align 4
@test_smallsafeprime = common dso_local global i32 0, align 4
@test_swap = common dso_local global i32 0, align 4
@test_ctx_consttime_flag = common dso_local global i32 0, align 4
@test_gf2m_add = common dso_local global i32 0, align 4
@test_gf2m_mod = common dso_local global i32 0, align 4
@test_gf2m_mul = common dso_local global i32 0, align 4
@test_gf2m_sqr = common dso_local global i32 0, align 4
@test_gf2m_modinv = common dso_local global i32 0, align 4
@test_gf2m_moddiv = common dso_local global i32 0, align 4
@test_gf2m_modexp = common dso_local global i32 0, align 4
@test_gf2m_modsqrt = common dso_local global i32 0, align 4
@test_gf2m_modsolvequad = common dso_local global i32 0, align 4
@test_is_prime = common dso_local global i32 0, align 4
@primes = common dso_local global i32 0, align 4
@test_not_prime = common dso_local global i32 0, align 4
@not_primes = common dso_local global i32 0, align 4
@test_gcd_prime = common dso_local global i32 0, align 4
@test_rand_range = common dso_local global i32 0, align 4
@run_file_tests = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = call i32 (...) @opt_next()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @OPT_EOF, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  switch i32 %10, label %13 [
    i32 129, label %11
    i32 128, label %12
    i32 130, label %14
  ]

11:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %15

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %9, %13
  store i32 0, i32* %1, align 4
  br label %108

15:                                               ; preds = %12, %11
  br label %5

16:                                               ; preds = %5
  %17 = call i32 (...) @test_get_argument_count()
  store i32 %17, i32* %3, align 4
  %18 = call i32 (...) @BN_CTX_new()
  store i32 %18, i32* @ctx, align 4
  %19 = call i32 @TEST_ptr(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %108

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %22
  %26 = load i32, i32* @test_sub, align 4
  %27 = call i32 @ADD_TEST(i32 %26)
  %28 = load i32, i32* @test_div_recip, align 4
  %29 = call i32 @ADD_TEST(i32 %28)
  %30 = load i32, i32* @test_mod, align 4
  %31 = call i32 @ADD_TEST(i32 %30)
  %32 = load i32, i32* @test_modexp_mont5, align 4
  %33 = call i32 @ADD_TEST(i32 %32)
  %34 = load i32, i32* @test_kronecker, align 4
  %35 = call i32 @ADD_TEST(i32 %34)
  %36 = load i32, i32* @test_rand, align 4
  %37 = call i32 @ADD_TEST(i32 %36)
  %38 = load i32, i32* @test_bn2padded, align 4
  %39 = call i32 @ADD_TEST(i32 %38)
  %40 = load i32, i32* @test_dec2bn, align 4
  %41 = call i32 @ADD_TEST(i32 %40)
  %42 = load i32, i32* @test_hex2bn, align 4
  %43 = call i32 @ADD_TEST(i32 %42)
  %44 = load i32, i32* @test_asc2bn, align 4
  %45 = call i32 @ADD_TEST(i32 %44)
  %46 = load i32, i32* @test_mpi, align 4
  %47 = load i32, i32* @kMPITests, align 4
  %48 = call i64 @OSSL_NELEM(i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ADD_ALL_TESTS(i32 %46, i32 %49)
  %51 = load i32, i32* @test_negzero, align 4
  %52 = call i32 @ADD_TEST(i32 %51)
  %53 = load i32, i32* @test_badmod, align 4
  %54 = call i32 @ADD_TEST(i32 %53)
  %55 = load i32, i32* @test_expmodzero, align 4
  %56 = call i32 @ADD_TEST(i32 %55)
  %57 = load i32, i32* @test_expmodone, align 4
  %58 = call i32 @ADD_TEST(i32 %57)
  %59 = load i32, i32* @test_smallprime, align 4
  %60 = call i32 @ADD_ALL_TESTS(i32 %59, i32 16)
  %61 = load i32, i32* @test_smallsafeprime, align 4
  %62 = call i32 @ADD_ALL_TESTS(i32 %61, i32 16)
  %63 = load i32, i32* @test_swap, align 4
  %64 = call i32 @ADD_TEST(i32 %63)
  %65 = load i32, i32* @test_ctx_consttime_flag, align 4
  %66 = call i32 @ADD_TEST(i32 %65)
  %67 = load i32, i32* @test_gf2m_add, align 4
  %68 = call i32 @ADD_TEST(i32 %67)
  %69 = load i32, i32* @test_gf2m_mod, align 4
  %70 = call i32 @ADD_TEST(i32 %69)
  %71 = load i32, i32* @test_gf2m_mul, align 4
  %72 = call i32 @ADD_TEST(i32 %71)
  %73 = load i32, i32* @test_gf2m_sqr, align 4
  %74 = call i32 @ADD_TEST(i32 %73)
  %75 = load i32, i32* @test_gf2m_modinv, align 4
  %76 = call i32 @ADD_TEST(i32 %75)
  %77 = load i32, i32* @test_gf2m_moddiv, align 4
  %78 = call i32 @ADD_TEST(i32 %77)
  %79 = load i32, i32* @test_gf2m_modexp, align 4
  %80 = call i32 @ADD_TEST(i32 %79)
  %81 = load i32, i32* @test_gf2m_modsqrt, align 4
  %82 = call i32 @ADD_TEST(i32 %81)
  %83 = load i32, i32* @test_gf2m_modsolvequad, align 4
  %84 = call i32 @ADD_TEST(i32 %83)
  %85 = load i32, i32* @test_is_prime, align 4
  %86 = load i32, i32* @primes, align 4
  %87 = call i64 @OSSL_NELEM(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ADD_ALL_TESTS(i32 %85, i32 %88)
  %90 = load i32, i32* @test_not_prime, align 4
  %91 = load i32, i32* @not_primes, align 4
  %92 = call i64 @OSSL_NELEM(i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @ADD_ALL_TESTS(i32 %90, i32 %93)
  %95 = load i32, i32* @test_gcd_prime, align 4
  %96 = call i32 @ADD_TEST(i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %25
  %100 = load i32, i32* @test_rand_range, align 4
  %101 = call i32 @ADD_TEST(i32 %100)
  br label %102

102:                                              ; preds = %99, %25
  br label %107

103:                                              ; preds = %22
  %104 = load i32, i32* @run_file_tests, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @ADD_ALL_TESTS(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %102
  store i32 1, i32* %1, align 4
  br label %108

108:                                              ; preds = %107, %21, %14
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @test_get_argument_count(...) #1

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @BN_CTX_new(...) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i64 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
