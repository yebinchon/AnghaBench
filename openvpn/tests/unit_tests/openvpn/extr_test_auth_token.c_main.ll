; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_auth_token.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@auth_token_basic_test = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@teardown = common dso_local global i32 0, align 4
@auth_token_fail_invalid_key = common dso_local global i32 0, align 4
@auth_token_test_known_keys = common dso_local global i32 0, align 4
@auth_token_test_empty_user = common dso_local global i32 0, align 4
@auth_token_test_env = common dso_local global i32 0, align 4
@auth_token_test_random_keys = common dso_local global i32 0, align 4
@auth_token_test_key_load = common dso_local global i32 0, align 4
@auth_token_test_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"auth-token tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x %struct.CMUnitTest], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [8 x %struct.CMUnitTest], [8 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %5 = load i32, i32* @auth_token_basic_test, align 4
  %6 = load i32, i32* @setup, align 4
  %7 = load i32, i32* @teardown, align 4
  %8 = call i32 @cmocka_unit_test_setup_teardown(i32 %5, i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %4, i64 1
  %11 = load i32, i32* @auth_token_fail_invalid_key, align 4
  %12 = load i32, i32* @setup, align 4
  %13 = load i32, i32* @teardown, align 4
  %14 = call i32 @cmocka_unit_test_setup_teardown(i32 %11, i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %10, i64 1
  %17 = load i32, i32* @auth_token_test_known_keys, align 4
  %18 = load i32, i32* @setup, align 4
  %19 = load i32, i32* @teardown, align 4
  %20 = call i32 @cmocka_unit_test_setup_teardown(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %16, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %16, i64 1
  %23 = load i32, i32* @auth_token_test_empty_user, align 4
  %24 = load i32, i32* @setup, align 4
  %25 = load i32, i32* @teardown, align 4
  %26 = call i32 @cmocka_unit_test_setup_teardown(i32 %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %22, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %22, i64 1
  %29 = load i32, i32* @auth_token_test_env, align 4
  %30 = load i32, i32* @setup, align 4
  %31 = load i32, i32* @teardown, align 4
  %32 = call i32 @cmocka_unit_test_setup_teardown(i32 %29, i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %28, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %28, i64 1
  %35 = load i32, i32* @auth_token_test_random_keys, align 4
  %36 = load i32, i32* @setup, align 4
  %37 = load i32, i32* @teardown, align 4
  %38 = call i32 @cmocka_unit_test_setup_teardown(i32 %35, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %34, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %34, i64 1
  %41 = load i32, i32* @auth_token_test_key_load, align 4
  %42 = load i32, i32* @setup, align 4
  %43 = load i32, i32* @teardown, align 4
  %44 = call i32 @cmocka_unit_test_setup_teardown(i32 %41, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %40, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %40, i64 1
  %47 = load i32, i32* @auth_token_test_timeout, align 4
  %48 = load i32, i32* @setup, align 4
  %49 = load i32, i32* @teardown, align 4
  %50 = call i32 @cmocka_unit_test_setup_teardown(i32 %47, i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %46, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [8 x %struct.CMUnitTest], [8 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %53 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %52, i32* null, i32* null)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @cmocka_unit_test_setup_teardown(i32, i32, i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
