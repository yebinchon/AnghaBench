; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/plugins/auth-pam/extr_test_search_and_replace.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/plugins/auth-pam/extr_test_search_and_replace.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@pass_any_null_param__returns_null = common dso_local global i32 0, align 4
@pass_any_empty_string__returns_null = common dso_local global i32 0, align 4
@replace_single_char__one_time__match_is_replaced = common dso_local global i32 0, align 4
@replace_single_char__multiple_times__match_all_matches_are_replaced = common dso_local global i32 0, align 4
@replace_longer_text__multiple_times__match_all_matches_are_replaced = common dso_local global i32 0, align 4
@pattern_not_found__returns_original = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"searchandreplace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x %struct.CMUnitTest], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [6 x %struct.CMUnitTest], [6 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %4 = load i32, i32* @pass_any_null_param__returns_null, align 4
  %5 = call i32 @cmocka_unit_test(i32 %4)
  %6 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i64 1
  %8 = load i32, i32* @pass_any_empty_string__returns_null, align 4
  %9 = call i32 @cmocka_unit_test(i32 %8)
  %10 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i64 1
  %12 = load i32, i32* @replace_single_char__one_time__match_is_replaced, align 4
  %13 = call i32 @cmocka_unit_test(i32 %12)
  %14 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %11, i64 1
  %16 = load i32, i32* @replace_single_char__multiple_times__match_all_matches_are_replaced, align 4
  %17 = call i32 @cmocka_unit_test(i32 %16)
  %18 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i64 1
  %20 = load i32, i32* @replace_longer_text__multiple_times__match_all_matches_are_replaced, align 4
  %21 = call i32 @cmocka_unit_test(i32 %20)
  %22 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i64 1
  %24 = load i32, i32* @pattern_not_found__returns_original, align 4
  %25 = call i32 @cmocka_unit_test(i32 %24)
  %26 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %23, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [6 x %struct.CMUnitTest], [6 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %28 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %27, i32* null, i32* null)
  ret i32 %28
}

declare dso_local i32 @cmocka_unit_test(i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
