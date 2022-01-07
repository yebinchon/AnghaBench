; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_param_int = common dso_local global i32 0, align 4
@raw_values = common dso_local global i32 0, align 4
@test_param_long = common dso_local global i32 0, align 4
@test_param_uint = common dso_local global i32 0, align 4
@test_param_ulong = common dso_local global i32 0, align 4
@test_param_int32 = common dso_local global i32 0, align 4
@test_param_uint32 = common dso_local global i32 0, align 4
@test_param_size_t = common dso_local global i32 0, align 4
@test_param_int64 = common dso_local global i32 0, align 4
@test_param_uint64 = common dso_local global i32 0, align 4
@test_param_bignum = common dso_local global i32 0, align 4
@test_param_real = common dso_local global i32 0, align 4
@test_param_construct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_param_int, align 4
  %2 = load i32, i32* @raw_values, align 4
  %3 = call i32 @OSSL_NELEM(i32 %2)
  %4 = call i32 @ADD_ALL_TESTS(i32 %1, i32 %3)
  %5 = load i32, i32* @test_param_long, align 4
  %6 = load i32, i32* @raw_values, align 4
  %7 = call i32 @OSSL_NELEM(i32 %6)
  %8 = call i32 @ADD_ALL_TESTS(i32 %5, i32 %7)
  %9 = load i32, i32* @test_param_uint, align 4
  %10 = load i32, i32* @raw_values, align 4
  %11 = call i32 @OSSL_NELEM(i32 %10)
  %12 = call i32 @ADD_ALL_TESTS(i32 %9, i32 %11)
  %13 = load i32, i32* @test_param_ulong, align 4
  %14 = load i32, i32* @raw_values, align 4
  %15 = call i32 @OSSL_NELEM(i32 %14)
  %16 = call i32 @ADD_ALL_TESTS(i32 %13, i32 %15)
  %17 = load i32, i32* @test_param_int32, align 4
  %18 = load i32, i32* @raw_values, align 4
  %19 = call i32 @OSSL_NELEM(i32 %18)
  %20 = call i32 @ADD_ALL_TESTS(i32 %17, i32 %19)
  %21 = load i32, i32* @test_param_uint32, align 4
  %22 = load i32, i32* @raw_values, align 4
  %23 = call i32 @OSSL_NELEM(i32 %22)
  %24 = call i32 @ADD_ALL_TESTS(i32 %21, i32 %23)
  %25 = load i32, i32* @test_param_size_t, align 4
  %26 = load i32, i32* @raw_values, align 4
  %27 = call i32 @OSSL_NELEM(i32 %26)
  %28 = call i32 @ADD_ALL_TESTS(i32 %25, i32 %27)
  %29 = load i32, i32* @test_param_int64, align 4
  %30 = load i32, i32* @raw_values, align 4
  %31 = call i32 @OSSL_NELEM(i32 %30)
  %32 = call i32 @ADD_ALL_TESTS(i32 %29, i32 %31)
  %33 = load i32, i32* @test_param_uint64, align 4
  %34 = load i32, i32* @raw_values, align 4
  %35 = call i32 @OSSL_NELEM(i32 %34)
  %36 = call i32 @ADD_ALL_TESTS(i32 %33, i32 %35)
  %37 = load i32, i32* @test_param_bignum, align 4
  %38 = load i32, i32* @raw_values, align 4
  %39 = call i32 @OSSL_NELEM(i32 %38)
  %40 = call i32 @ADD_ALL_TESTS(i32 %37, i32 %39)
  %41 = load i32, i32* @test_param_real, align 4
  %42 = call i32 @ADD_TEST(i32 %41)
  %43 = load i32, i32* @test_param_construct, align 4
  %44 = call i32 @ADD_TEST(i32 %43)
  ret i32 1
}

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
