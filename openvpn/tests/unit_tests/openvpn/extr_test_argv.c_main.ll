; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_argv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@argv_printf__multiple_spaces_in_format__parsed_as_one = common dso_local global i32 0, align 4
@argv_printf_cat__multiple_spaces_in_format__parsed_as_one = common dso_local global i32 0, align 4
@argv_printf__combined_path_with_spaces__argc_correct = common dso_local global i32 0, align 4
@argv_parse_cmd__command_string__argc_correct = common dso_local global i32 0, align 4
@argv_parse_cmd__command_and_extra_options__argc_correct = common dso_local global i32 0, align 4
@argv_printf_cat__used_twice__argc_correct = common dso_local global i32 0, align 4
@argv_str__multiple_argv__correct_output = common dso_local global i32 0, align 4
@argv_insert_head__non_empty_argv__head_added = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"argv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x %struct.CMUnitTest], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [8 x %struct.CMUnitTest], [8 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %4 = load i32, i32* @argv_printf__multiple_spaces_in_format__parsed_as_one, align 4
  %5 = call i32 @cmocka_unit_test(i32 %4)
  %6 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i64 1
  %8 = load i32, i32* @argv_printf_cat__multiple_spaces_in_format__parsed_as_one, align 4
  %9 = call i32 @cmocka_unit_test(i32 %8)
  %10 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i64 1
  %12 = load i32, i32* @argv_printf__combined_path_with_spaces__argc_correct, align 4
  %13 = call i32 @cmocka_unit_test(i32 %12)
  %14 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %11, i64 1
  %16 = load i32, i32* @argv_parse_cmd__command_string__argc_correct, align 4
  %17 = call i32 @cmocka_unit_test(i32 %16)
  %18 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i64 1
  %20 = load i32, i32* @argv_parse_cmd__command_and_extra_options__argc_correct, align 4
  %21 = call i32 @cmocka_unit_test(i32 %20)
  %22 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i64 1
  %24 = load i32, i32* @argv_printf_cat__used_twice__argc_correct, align 4
  %25 = call i32 @cmocka_unit_test(i32 %24)
  %26 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %23, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %23, i64 1
  %28 = load i32, i32* @argv_str__multiple_argv__correct_output, align 4
  %29 = call i32 @cmocka_unit_test(i32 %28)
  %30 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %27, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %27, i64 1
  %32 = load i32, i32* @argv_insert_head__non_empty_argv__head_added, align 4
  %33 = call i32 @cmocka_unit_test(i32 %32)
  %34 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %31, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [8 x %struct.CMUnitTest], [8 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %36 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %35, i32* null, i32* null)
  ret i32 %36
}

declare dso_local i32 @cmocka_unit_test(i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
