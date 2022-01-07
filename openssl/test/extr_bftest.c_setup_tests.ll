; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_EOF = common dso_local global i32 0, align 4
@test_bf_ecb_raw = common dso_local global i32 0, align 4
@test_bf_ecb = common dso_local global i32 0, align 4
@NUM_TESTS = common dso_local global i32 0, align 4
@test_bf_set_key = common dso_local global i32 0, align 4
@KEY_TEST_NUM = common dso_local global i32 0, align 4
@test_bf_cbc = common dso_local global i32 0, align 4
@test_bf_cfb64 = common dso_local global i32 0, align 4
@test_bf_ofb64 = common dso_local global i32 0, align 4
@bf_key = common dso_local global i32* null, align 8
@cbc_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = call i32 (...) @opt_next()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @OPT_EOF, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %12 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %7
  %10 = call i32 (...) @print_test_data()
  store i32 1, i32* %1, align 4
  br label %30

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %30

13:                                               ; preds = %11
  br label %3

14:                                               ; preds = %3
  %15 = load i32, i32* @test_bf_ecb_raw, align 4
  %16 = call i32 @ADD_ALL_TESTS(i32 %15, i32 2)
  %17 = load i32, i32* @test_bf_ecb, align 4
  %18 = load i32, i32* @NUM_TESTS, align 4
  %19 = call i32 @ADD_ALL_TESTS(i32 %17, i32 %18)
  %20 = load i32, i32* @test_bf_set_key, align 4
  %21 = load i32, i32* @KEY_TEST_NUM, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @ADD_ALL_TESTS(i32 %20, i32 %22)
  %24 = load i32, i32* @test_bf_cbc, align 4
  %25 = call i32 @ADD_TEST(i32 %24)
  %26 = load i32, i32* @test_bf_cfb64, align 4
  %27 = call i32 @ADD_TEST(i32 %26)
  %28 = load i32, i32* @test_bf_ofb64, align 4
  %29 = call i32 @ADD_TEST(i32 %28)
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %14, %12, %9
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @print_test_data(...) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
