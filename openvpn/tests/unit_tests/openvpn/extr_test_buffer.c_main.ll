; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_buffer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@test_buffer_strprefix = common dso_local global i32 0, align 4
@test_buffer_list_full = common dso_local global i32 0, align 4
@test_buffer_list_setup = common dso_local global i32 0, align 4
@test_buffer_list_teardown = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_empty = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_noop = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_two = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_all = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_nosep = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_zerolen = common dso_local global i32 0, align 4
@test_buffer_list_aggregate_separator_emptybuffers = common dso_local global i32 0, align 4
@test_buffer_free_gc_one = common dso_local global i32 0, align 4
@test_buffer_free_gc_two = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x %struct.CMUnitTest], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [11 x %struct.CMUnitTest], [11 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %4 = load i32, i32* @test_buffer_strprefix, align 4
  %5 = call i32 @cmocka_unit_test(i32 %4)
  %6 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i64 1
  %8 = load i32, i32* @test_buffer_list_full, align 4
  %9 = load i32, i32* @test_buffer_list_setup, align 4
  %10 = load i32, i32* @test_buffer_list_teardown, align 4
  %11 = call i32 @cmocka_unit_test_setup_teardown(i32 %8, i32 %9, i32 %10)
  %12 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %7, i64 1
  %14 = load i32, i32* @test_buffer_list_aggregate_separator_empty, align 4
  %15 = load i32, i32* @test_buffer_list_setup, align 4
  %16 = load i32, i32* @test_buffer_list_teardown, align 4
  %17 = call i32 @cmocka_unit_test_setup_teardown(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %13, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %13, i64 1
  %20 = load i32, i32* @test_buffer_list_aggregate_separator_noop, align 4
  %21 = load i32, i32* @test_buffer_list_setup, align 4
  %22 = load i32, i32* @test_buffer_list_teardown, align 4
  %23 = call i32 @cmocka_unit_test_setup_teardown(i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %19, i64 1
  %26 = load i32, i32* @test_buffer_list_aggregate_separator_two, align 4
  %27 = load i32, i32* @test_buffer_list_setup, align 4
  %28 = load i32, i32* @test_buffer_list_teardown, align 4
  %29 = call i32 @cmocka_unit_test_setup_teardown(i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %25, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %25, i64 1
  %32 = load i32, i32* @test_buffer_list_aggregate_separator_all, align 4
  %33 = load i32, i32* @test_buffer_list_setup, align 4
  %34 = load i32, i32* @test_buffer_list_teardown, align 4
  %35 = call i32 @cmocka_unit_test_setup_teardown(i32 %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %31, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %31, i64 1
  %38 = load i32, i32* @test_buffer_list_aggregate_separator_nosep, align 4
  %39 = load i32, i32* @test_buffer_list_setup, align 4
  %40 = load i32, i32* @test_buffer_list_teardown, align 4
  %41 = call i32 @cmocka_unit_test_setup_teardown(i32 %38, i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %37, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %37, i64 1
  %44 = load i32, i32* @test_buffer_list_aggregate_separator_zerolen, align 4
  %45 = load i32, i32* @test_buffer_list_setup, align 4
  %46 = load i32, i32* @test_buffer_list_teardown, align 4
  %47 = call i32 @cmocka_unit_test_setup_teardown(i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %43, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %43, i64 1
  %50 = load i32, i32* @test_buffer_list_aggregate_separator_emptybuffers, align 4
  %51 = load i32, i32* @test_buffer_list_setup, align 4
  %52 = load i32, i32* @test_buffer_list_teardown, align 4
  %53 = call i32 @cmocka_unit_test_setup_teardown(i32 %50, i32 %51, i32 %52)
  %54 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %49, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %49, i64 1
  %56 = load i32, i32* @test_buffer_free_gc_one, align 4
  %57 = call i32 @cmocka_unit_test(i32 %56)
  %58 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %55, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %55, i64 1
  %60 = load i32, i32* @test_buffer_free_gc_two, align 4
  %61 = call i32 @cmocka_unit_test(i32 %60)
  %62 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %59, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [11 x %struct.CMUnitTest], [11 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %64 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %63, i32* null, i32* null)
  ret i32 %64
}

declare dso_local i32 @cmocka_unit_test(i32) #1

declare dso_local i32 @cmocka_unit_test_setup_teardown(i32, i32, i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
