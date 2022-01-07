; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_test_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_test_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_int = common dso_local global i32 0, align 4
@test_uint = common dso_local global i32 0, align 4
@test_char = common dso_local global i32 0, align 4
@test_uchar = common dso_local global i32 0, align 4
@test_long = common dso_local global i32 0, align 4
@test_ulong = common dso_local global i32 0, align 4
@test_size_t = common dso_local global i32 0, align 4
@test_time_t = common dso_local global i32 0, align 4
@test_pointer = common dso_local global i32 0, align 4
@test_bool = common dso_local global i32 0, align 4
@test_string = common dso_local global i32 0, align 4
@test_memory = common dso_local global i32 0, align 4
@test_memory_overflow = common dso_local global i32 0, align 4
@test_bignum = common dso_local global i32 0, align 4
@test_long_bignum = common dso_local global i32 0, align 4
@test_long_output = common dso_local global i32 0, align 4
@test_messages = common dso_local global i32 0, align 4
@test_single_eval = common dso_local global i32 0, align 4
@test_output = common dso_local global i32 0, align 4
@test_bn_output = common dso_local global i32 0, align 4
@bn_output_tests = common dso_local global i32 0, align 4
@test_skip_one = common dso_local global i32 0, align 4
@test_skip_null = common dso_local global i32 0, align 4
@test_skip_many = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_int, align 4
  %2 = call i32 @ADD_TEST(i32 %1)
  %3 = load i32, i32* @test_uint, align 4
  %4 = call i32 @ADD_TEST(i32 %3)
  %5 = load i32, i32* @test_char, align 4
  %6 = call i32 @ADD_TEST(i32 %5)
  %7 = load i32, i32* @test_uchar, align 4
  %8 = call i32 @ADD_TEST(i32 %7)
  %9 = load i32, i32* @test_long, align 4
  %10 = call i32 @ADD_TEST(i32 %9)
  %11 = load i32, i32* @test_ulong, align 4
  %12 = call i32 @ADD_TEST(i32 %11)
  %13 = load i32, i32* @test_size_t, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_time_t, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_pointer, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_bool, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_string, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
  %23 = load i32, i32* @test_memory, align 4
  %24 = call i32 @ADD_TEST(i32 %23)
  %25 = load i32, i32* @test_memory_overflow, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  %27 = load i32, i32* @test_bignum, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  %29 = load i32, i32* @test_long_bignum, align 4
  %30 = call i32 @ADD_TEST(i32 %29)
  %31 = load i32, i32* @test_long_output, align 4
  %32 = call i32 @ADD_TEST(i32 %31)
  %33 = load i32, i32* @test_messages, align 4
  %34 = call i32 @ADD_TEST(i32 %33)
  %35 = load i32, i32* @test_single_eval, align 4
  %36 = call i32 @ADD_TEST(i32 %35)
  %37 = load i32, i32* @test_output, align 4
  %38 = call i32 @ADD_TEST(i32 %37)
  %39 = load i32, i32* @test_bn_output, align 4
  %40 = load i32, i32* @bn_output_tests, align 4
  %41 = call i32 @OSSL_NELEM(i32 %40)
  %42 = call i32 @ADD_ALL_TESTS(i32 %39, i32 %41)
  %43 = load i32, i32* @test_skip_one, align 4
  %44 = call i32 @ADD_TEST(i32 %43)
  %45 = load i32, i32* @test_skip_null, align 4
  %46 = call i32 @ADD_TEST(i32 %45)
  %47 = load i32, i32* @test_skip_many, align 4
  %48 = call i32 @ADD_ALL_TESTS(i32 %47, i32 3)
  ret i32 1
}

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
