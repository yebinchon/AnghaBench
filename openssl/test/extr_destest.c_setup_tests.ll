; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_destest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_destest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_des_ecb = common dso_local global i32 0, align 4
@NUM_TESTS = common dso_local global i32 0, align 4
@test_des_cbc = common dso_local global i32 0, align 4
@test_ede_cbc = common dso_local global i32 0, align 4
@test_des_ede_ecb = common dso_local global i32 0, align 4
@test_des_ede_cbc = common dso_local global i32 0, align 4
@test_des_pcbc = common dso_local global i32 0, align 4
@test_des_cfb8 = common dso_local global i32 0, align 4
@test_des_cfb16 = common dso_local global i32 0, align 4
@test_des_cfb32 = common dso_local global i32 0, align 4
@test_des_cfb48 = common dso_local global i32 0, align 4
@test_des_cfb64 = common dso_local global i32 0, align 4
@test_des_ede_cfb64 = common dso_local global i32 0, align 4
@test_des_ofb = common dso_local global i32 0, align 4
@test_des_ofb64 = common dso_local global i32 0, align 4
@test_des_ede_ofb64 = common dso_local global i32 0, align 4
@test_des_cbc_cksum = common dso_local global i32 0, align 4
@test_des_quad_cksum = common dso_local global i32 0, align 4
@test_des_crypt = common dso_local global i32 0, align 4
@test_input_align = common dso_local global i32 0, align 4
@test_output_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_des_ecb, align 4
  %2 = load i32, i32* @NUM_TESTS, align 4
  %3 = call i32 @ADD_ALL_TESTS(i32 %1, i32 %2)
  %4 = load i32, i32* @test_des_cbc, align 4
  %5 = call i32 @ADD_TEST(i32 %4)
  %6 = load i32, i32* @test_ede_cbc, align 4
  %7 = call i32 @ADD_TEST(i32 %6)
  %8 = load i32, i32* @test_des_ede_ecb, align 4
  %9 = load i32, i32* @NUM_TESTS, align 4
  %10 = sub nsw i32 %9, 2
  %11 = call i32 @ADD_ALL_TESTS(i32 %8, i32 %10)
  %12 = load i32, i32* @test_des_ede_cbc, align 4
  %13 = call i32 @ADD_TEST(i32 %12)
  %14 = load i32, i32* @test_des_pcbc, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_des_cfb8, align 4
  %17 = call i32 @ADD_TEST(i32 %16)
  %18 = load i32, i32* @test_des_cfb16, align 4
  %19 = call i32 @ADD_TEST(i32 %18)
  %20 = load i32, i32* @test_des_cfb32, align 4
  %21 = call i32 @ADD_TEST(i32 %20)
  %22 = load i32, i32* @test_des_cfb48, align 4
  %23 = call i32 @ADD_TEST(i32 %22)
  %24 = load i32, i32* @test_des_cfb64, align 4
  %25 = call i32 @ADD_TEST(i32 %24)
  %26 = load i32, i32* @test_des_ede_cfb64, align 4
  %27 = call i32 @ADD_TEST(i32 %26)
  %28 = load i32, i32* @test_des_ofb, align 4
  %29 = call i32 @ADD_TEST(i32 %28)
  %30 = load i32, i32* @test_des_ofb64, align 4
  %31 = call i32 @ADD_TEST(i32 %30)
  %32 = load i32, i32* @test_des_ede_ofb64, align 4
  %33 = call i32 @ADD_TEST(i32 %32)
  %34 = load i32, i32* @test_des_cbc_cksum, align 4
  %35 = call i32 @ADD_TEST(i32 %34)
  %36 = load i32, i32* @test_des_quad_cksum, align 4
  %37 = call i32 @ADD_TEST(i32 %36)
  %38 = load i32, i32* @test_des_crypt, align 4
  %39 = call i32 @ADD_TEST(i32 %38)
  %40 = load i32, i32* @test_input_align, align 4
  %41 = call i32 @ADD_ALL_TESTS(i32 %40, i32 4)
  %42 = load i32, i32* @test_output_align, align 4
  %43 = call i32 @ADD_ALL_TESTS(i32 %42, i32 4)
  ret i32 1
}

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
