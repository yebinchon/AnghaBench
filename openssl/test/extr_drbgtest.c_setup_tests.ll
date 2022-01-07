; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@app_data_index = common dso_local global i32 0, align 4
@test_kats = common dso_local global i32 0, align 4
@drbg_test = common dso_local global i32 0, align 4
@test_error_checks = common dso_local global i32 0, align 4
@test_rand_drbg_reseed = common dso_local global i32 0, align 4
@test_rand_seed = common dso_local global i32 0, align 4
@test_rand_add = common dso_local global i32 0, align 4
@test_rand_drbg_prediction_resistance = common dso_local global i32 0, align 4
@test_multi_set = common dso_local global i32 0, align 4
@test_set_defaults = common dso_local global i32 0, align 4
@test_crngt = common dso_local global i32 0, align 4
@crngt_num_cases = common dso_local global i32 0, align 4
@drgb_types = common dso_local global i32 0, align 4
@test_multi_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = call i32 @RAND_DRBG_get_ex_new_index(i64 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %1, i32* @app_data_index, align 4
  %2 = load i32, i32* @test_kats, align 4
  %3 = load i32, i32* @drbg_test, align 4
  %4 = call i32 @OSSL_NELEM(i32 %3)
  %5 = call i32 @ADD_ALL_TESTS(i32 %2, i32 %4)
  %6 = load i32, i32* @test_error_checks, align 4
  %7 = load i32, i32* @drbg_test, align 4
  %8 = call i32 @OSSL_NELEM(i32 %7)
  %9 = call i32 @ADD_ALL_TESTS(i32 %6, i32 %8)
  %10 = load i32, i32* @test_rand_drbg_reseed, align 4
  %11 = call i32 @ADD_TEST(i32 %10)
  %12 = load i32, i32* @test_rand_seed, align 4
  %13 = call i32 @ADD_TEST(i32 %12)
  %14 = load i32, i32* @test_rand_add, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_rand_drbg_prediction_resistance, align 4
  %17 = call i32 @ADD_TEST(i32 %16)
  %18 = load i32, i32* @test_multi_set, align 4
  %19 = call i32 @ADD_TEST(i32 %18)
  %20 = load i32, i32* @test_set_defaults, align 4
  %21 = call i32 @ADD_TEST(i32 %20)
  %22 = load i32, i32* @test_crngt, align 4
  %23 = load i32, i32* @crngt_num_cases, align 4
  %24 = load i32, i32* @drgb_types, align 4
  %25 = call i32 @OSSL_NELEM(i32 %24)
  %26 = mul nsw i32 %23, %25
  %27 = call i32 @ADD_ALL_TESTS(i32 %22, i32 %26)
  ret i32 1
}

declare dso_local i32 @RAND_DRBG_get_ex_new_index(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
