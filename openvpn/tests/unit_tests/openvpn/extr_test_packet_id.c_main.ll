; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { i32 }

@test_packet_id_write_short = common dso_local global i32 0, align 4
@test_packet_id_write_setup = common dso_local global i32 0, align 4
@test_packet_id_write_teardown = common dso_local global i32 0, align 4
@test_packet_id_write_long = common dso_local global i32 0, align 4
@test_packet_id_write_short_prepend = common dso_local global i32 0, align 4
@test_packet_id_write_long_prepend = common dso_local global i32 0, align 4
@test_packet_id_write_short_wrap = common dso_local global i32 0, align 4
@test_packet_id_write_long_wrap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"packet_id tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x %struct.CMUnitTest], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [6 x %struct.CMUnitTest], [6 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %4 = load i32, i32* @test_packet_id_write_short, align 4
  %5 = load i32, i32* @test_packet_id_write_setup, align 4
  %6 = load i32, i32* @test_packet_id_write_teardown, align 4
  %7 = call i32 @cmocka_unit_test_setup_teardown(i32 %4, i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %3, i64 1
  %10 = load i32, i32* @test_packet_id_write_long, align 4
  %11 = load i32, i32* @test_packet_id_write_setup, align 4
  %12 = load i32, i32* @test_packet_id_write_teardown, align 4
  %13 = call i32 @cmocka_unit_test_setup_teardown(i32 %10, i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %9, i64 1
  %16 = load i32, i32* @test_packet_id_write_short_prepend, align 4
  %17 = load i32, i32* @test_packet_id_write_setup, align 4
  %18 = load i32, i32* @test_packet_id_write_teardown, align 4
  %19 = call i32 @cmocka_unit_test_setup_teardown(i32 %16, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %15, i64 1
  %22 = load i32, i32* @test_packet_id_write_long_prepend, align 4
  %23 = load i32, i32* @test_packet_id_write_setup, align 4
  %24 = load i32, i32* @test_packet_id_write_teardown, align 4
  %25 = call i32 @cmocka_unit_test_setup_teardown(i32 %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %21, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %21, i64 1
  %28 = load i32, i32* @test_packet_id_write_short_wrap, align 4
  %29 = load i32, i32* @test_packet_id_write_setup, align 4
  %30 = load i32, i32* @test_packet_id_write_teardown, align 4
  %31 = call i32 @cmocka_unit_test_setup_teardown(i32 %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %27, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %27, i64 1
  %34 = load i32, i32* @test_packet_id_write_long_wrap, align 4
  %35 = load i32, i32* @test_packet_id_write_setup, align 4
  %36 = load i32, i32* @test_packet_id_write_teardown, align 4
  %37 = call i32 @cmocka_unit_test_setup_teardown(i32 %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.CMUnitTest, %struct.CMUnitTest* %33, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [6 x %struct.CMUnitTest], [6 x %struct.CMUnitTest]* %2, i64 0, i64 0
  %40 = call i32 @cmocka_run_group_tests_name(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.CMUnitTest* %39, i32* null, i32* null)
  ret i32 %40
}

declare dso_local i32 @cmocka_unit_test_setup_teardown(i32, i32, i32) #1

declare dso_local i32 @cmocka_run_group_tests_name(i8*, %struct.CMUnitTest*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
