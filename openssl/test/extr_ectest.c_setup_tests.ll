; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crv_len = common dso_local global i32 0, align 4
@curves = common dso_local global i32* null, align 8
@parameter_test = common dso_local global i32 0, align 4
@cofactor_range_test = common dso_local global i32 0, align 4
@cardinality_test = common dso_local global i32 0, align 4
@prime_field_tests = common dso_local global i32 0, align 4
@char2_field_tests = common dso_local global i32 0, align 4
@char2_curve_test = common dso_local global i32 0, align 4
@char2_curve_tests = common dso_local global i32 0, align 4
@nistp_single_test = common dso_local global i32 0, align 4
@nistp_tests_params = common dso_local global i32 0, align 4
@underflow_test = common dso_local global i32 0, align 4
@internal_curve_test = common dso_local global i32 0, align 4
@internal_curve_test_method = common dso_local global i32 0, align 4
@group_field_test = common dso_local global i32 0, align 4
@check_named_curve_test = common dso_local global i32 0, align 4
@check_named_curve_lookup_test = common dso_local global i32 0, align 4
@check_ec_key_field_public_range_test = common dso_local global i32 0, align 4
@check_named_curve_from_ecparameters = common dso_local global i32 0, align 4
@ec_point_hex2point_test = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @EC_get_builtin_curves(i32* null, i32 0)
  store i32 %2, i32* @crv_len, align 4
  %3 = load i32, i32* @crv_len, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 4, %4
  %6 = trunc i64 %5 to i32
  %7 = call i32* @OPENSSL_malloc(i32 %6)
  store i32* %7, i32** @curves, align 8
  %8 = call i32 @TEST_ptr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32*, i32** @curves, align 8
  %12 = load i32, i32* @crv_len, align 4
  %13 = call i32 @EC_get_builtin_curves(i32* %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %62

17:                                               ; preds = %10
  %18 = load i32, i32* @parameter_test, align 4
  %19 = call i32 @ADD_TEST(i32 %18)
  %20 = load i32, i32* @cofactor_range_test, align 4
  %21 = call i32 @ADD_TEST(i32 %20)
  %22 = load i32, i32* @cardinality_test, align 4
  %23 = load i32, i32* @crv_len, align 4
  %24 = call i32 @ADD_ALL_TESTS(i32 %22, i32 %23)
  %25 = load i32, i32* @prime_field_tests, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  %27 = load i32, i32* @char2_field_tests, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  %29 = load i32, i32* @char2_curve_test, align 4
  %30 = load i32, i32* @char2_curve_tests, align 4
  %31 = call i32 @OSSL_NELEM(i32 %30)
  %32 = call i32 @ADD_ALL_TESTS(i32 %29, i32 %31)
  %33 = load i32, i32* @nistp_single_test, align 4
  %34 = load i32, i32* @nistp_tests_params, align 4
  %35 = call i32 @OSSL_NELEM(i32 %34)
  %36 = call i32 @ADD_ALL_TESTS(i32 %33, i32 %35)
  %37 = load i32, i32* @underflow_test, align 4
  %38 = call i32 @ADD_TEST(i32 %37)
  %39 = load i32, i32* @internal_curve_test, align 4
  %40 = load i32, i32* @crv_len, align 4
  %41 = call i32 @ADD_ALL_TESTS(i32 %39, i32 %40)
  %42 = load i32, i32* @internal_curve_test_method, align 4
  %43 = load i32, i32* @crv_len, align 4
  %44 = call i32 @ADD_ALL_TESTS(i32 %42, i32 %43)
  %45 = load i32, i32* @group_field_test, align 4
  %46 = call i32 @ADD_TEST(i32 %45)
  %47 = load i32, i32* @check_named_curve_test, align 4
  %48 = load i32, i32* @crv_len, align 4
  %49 = call i32 @ADD_ALL_TESTS(i32 %47, i32 %48)
  %50 = load i32, i32* @check_named_curve_lookup_test, align 4
  %51 = load i32, i32* @crv_len, align 4
  %52 = call i32 @ADD_ALL_TESTS(i32 %50, i32 %51)
  %53 = load i32, i32* @check_ec_key_field_public_range_test, align 4
  %54 = load i32, i32* @crv_len, align 4
  %55 = call i32 @ADD_ALL_TESTS(i32 %53, i32 %54)
  %56 = load i32, i32* @check_named_curve_from_ecparameters, align 4
  %57 = load i32, i32* @crv_len, align 4
  %58 = call i32 @ADD_ALL_TESTS(i32 %56, i32 %57)
  %59 = load i32, i32* @ec_point_hex2point_test, align 4
  %60 = load i32, i32* @crv_len, align 4
  %61 = call i32 @ADD_ALL_TESTS(i32 %59, i32 %60)
  store i32 1, i32* %1, align 4
  br label %62

62:                                               ; preds = %17, %16
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @EC_get_builtin_curves(i32*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
