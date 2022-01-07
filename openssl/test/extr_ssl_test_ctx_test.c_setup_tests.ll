; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test_ctx_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf = common dso_local global i32 0, align 4
@test_empty_configuration = common dso_local global i32 0, align 4
@test_good_configuration = common dso_local global i32 0, align 4
@test_bad_configuration = common dso_local global i32 0, align 4
@bad_configurations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @NCONF_new(i32* null)
  store i32 %2, i32* @conf, align 4
  %3 = call i32 @TEST_ptr(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

6:                                                ; preds = %0
  %7 = load i32, i32* @conf, align 4
  %8 = call i32 @test_get_argument(i32 0)
  %9 = call i32 @NCONF_load(i32 %7, i32 %8, i32* null)
  %10 = call i32 @TEST_int_gt(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %22

13:                                               ; preds = %6
  %14 = load i32, i32* @test_empty_configuration, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_good_configuration, align 4
  %17 = call i32 @ADD_TEST(i32 %16)
  %18 = load i32, i32* @test_bad_configuration, align 4
  %19 = load i32, i32* @bad_configurations, align 4
  %20 = call i32 @OSSL_NELEM(i32 %19)
  %21 = call i32 @ADD_ALL_TESTS(i32 %18, i32 %20)
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %13, %12, %5
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @NCONF_new(i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @NCONF_load(i32, i32, i32*) #1

declare dso_local i32 @test_get_argument(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
