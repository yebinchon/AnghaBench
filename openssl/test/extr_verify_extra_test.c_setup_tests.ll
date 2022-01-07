; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_verify_extra_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@roots_f = common dso_local global i32 0, align 4
@untrusted_f = common dso_local global i32 0, align 4
@bad_f = common dso_local global i32 0, align 4
@req_f = common dso_local global i32 0, align 4
@test_alt_chains_cert_forgery = common dso_local global i32 0, align 4
@test_store_ctx = common dso_local global i32 0, align 4
@test_sm2_id = common dso_local global i32 0, align 4
@test_req_sm2_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @test_get_argument(i32 0)
  store i32 %2, i32* @roots_f, align 4
  %3 = call i32 @TEST_ptr(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = call i32 @test_get_argument(i32 1)
  store i32 %6, i32* @untrusted_f, align 4
  %7 = call i32 @TEST_ptr(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = call i32 @test_get_argument(i32 2)
  store i32 %10, i32* @bad_f, align 4
  %11 = call i32 @TEST_ptr(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @test_get_argument(i32 3)
  store i32 %14, i32* @req_f, align 4
  %15 = call i32 @TEST_ptr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %5, %0
  store i32 0, i32* %1, align 4
  br label %27

18:                                               ; preds = %13
  %19 = load i32, i32* @test_alt_chains_cert_forgery, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_store_ctx, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
  %23 = load i32, i32* @test_sm2_id, align 4
  %24 = call i32 @ADD_TEST(i32 %23)
  %25 = load i32, i32* @test_req_sm2_id, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @test_get_argument(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
