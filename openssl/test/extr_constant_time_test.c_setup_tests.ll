; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_sizeofs = common dso_local global i32 0, align 4
@test_is_zero = common dso_local global i32 0, align 4
@test_values = common dso_local global i32 0, align 4
@test_is_zero_8 = common dso_local global i32 0, align 4
@test_values_8 = common dso_local global i32 0, align 4
@test_is_zero_32 = common dso_local global i32 0, align 4
@test_values_32 = common dso_local global i32 0, align 4
@test_is_zero_s = common dso_local global i32 0, align 4
@test_values_s = common dso_local global i32 0, align 4
@test_binops = common dso_local global i32 0, align 4
@test_binops_8 = common dso_local global i32 0, align 4
@test_binops_s = common dso_local global i32 0, align 4
@test_signed = common dso_local global i32 0, align 4
@signed_test_values = common dso_local global i32 0, align 4
@test_8values = common dso_local global i32 0, align 4
@test_32values = common dso_local global i32 0, align 4
@test_64values = common dso_local global i32 0, align 4
@test_values_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_sizeofs, align 4
  %2 = call i32 @ADD_TEST(i32 %1)
  %3 = load i32, i32* @test_is_zero, align 4
  %4 = load i32, i32* @test_values, align 4
  %5 = call i32 @OSSL_NELEM(i32 %4)
  %6 = call i32 @ADD_ALL_TESTS(i32 %3, i32 %5)
  %7 = load i32, i32* @test_is_zero_8, align 4
  %8 = load i32, i32* @test_values_8, align 4
  %9 = call i32 @OSSL_NELEM(i32 %8)
  %10 = call i32 @ADD_ALL_TESTS(i32 %7, i32 %9)
  %11 = load i32, i32* @test_is_zero_32, align 4
  %12 = load i32, i32* @test_values_32, align 4
  %13 = call i32 @OSSL_NELEM(i32 %12)
  %14 = call i32 @ADD_ALL_TESTS(i32 %11, i32 %13)
  %15 = load i32, i32* @test_is_zero_s, align 4
  %16 = load i32, i32* @test_values_s, align 4
  %17 = call i32 @OSSL_NELEM(i32 %16)
  %18 = call i32 @ADD_ALL_TESTS(i32 %15, i32 %17)
  %19 = load i32, i32* @test_binops, align 4
  %20 = load i32, i32* @test_values, align 4
  %21 = call i32 @OSSL_NELEM(i32 %20)
  %22 = call i32 @ADD_ALL_TESTS(i32 %19, i32 %21)
  %23 = load i32, i32* @test_binops_8, align 4
  %24 = load i32, i32* @test_values_8, align 4
  %25 = call i32 @OSSL_NELEM(i32 %24)
  %26 = call i32 @ADD_ALL_TESTS(i32 %23, i32 %25)
  %27 = load i32, i32* @test_binops_s, align 4
  %28 = load i32, i32* @test_values_s, align 4
  %29 = call i32 @OSSL_NELEM(i32 %28)
  %30 = call i32 @ADD_ALL_TESTS(i32 %27, i32 %29)
  %31 = load i32, i32* @test_signed, align 4
  %32 = load i32, i32* @signed_test_values, align 4
  %33 = call i32 @OSSL_NELEM(i32 %32)
  %34 = call i32 @ADD_ALL_TESTS(i32 %31, i32 %33)
  %35 = load i32, i32* @test_8values, align 4
  %36 = load i32, i32* @test_values_8, align 4
  %37 = call i32 @OSSL_NELEM(i32 %36)
  %38 = call i32 @ADD_ALL_TESTS(i32 %35, i32 %37)
  %39 = load i32, i32* @test_32values, align 4
  %40 = load i32, i32* @test_values_32, align 4
  %41 = call i32 @OSSL_NELEM(i32 %40)
  %42 = call i32 @ADD_ALL_TESTS(i32 %39, i32 %41)
  %43 = load i32, i32* @test_64values, align 4
  %44 = load i32, i32* @test_values_64, align 4
  %45 = call i32 @OSSL_NELEM(i32 %44)
  %46 = call i32 @ADD_ALL_TESTS(i32 %43, i32 %45)
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
