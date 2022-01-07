; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_property_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_property_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_property_string = common dso_local global i32 0, align 4
@test_property_parse = common dso_local global i32 0, align 4
@parser_tests = common dso_local global i32 0, align 4
@test_property_merge = common dso_local global i32 0, align 4
@merge_tests = common dso_local global i32 0, align 4
@test_property_defn_cache = common dso_local global i32 0, align 4
@test_definition_compares = common dso_local global i32 0, align 4
@definition_tests = common dso_local global i32 0, align 4
@test_register_deregister = common dso_local global i32 0, align 4
@test_property = common dso_local global i32 0, align 4
@test_query_cache_stochastic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_property_string, align 4
  %2 = call i32 @ADD_TEST(i32 %1)
  %3 = load i32, i32* @test_property_parse, align 4
  %4 = load i32, i32* @parser_tests, align 4
  %5 = call i32 @OSSL_NELEM(i32 %4)
  %6 = call i32 @ADD_ALL_TESTS(i32 %3, i32 %5)
  %7 = load i32, i32* @test_property_merge, align 4
  %8 = load i32, i32* @merge_tests, align 4
  %9 = call i32 @OSSL_NELEM(i32 %8)
  %10 = call i32 @ADD_ALL_TESTS(i32 %7, i32 %9)
  %11 = load i32, i32* @test_property_defn_cache, align 4
  %12 = call i32 @ADD_TEST(i32 %11)
  %13 = load i32, i32* @test_definition_compares, align 4
  %14 = load i32, i32* @definition_tests, align 4
  %15 = call i32 @OSSL_NELEM(i32 %14)
  %16 = call i32 @ADD_ALL_TESTS(i32 %13, i32 %15)
  %17 = load i32, i32* @test_register_deregister, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_property, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_query_cache_stochastic, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
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
