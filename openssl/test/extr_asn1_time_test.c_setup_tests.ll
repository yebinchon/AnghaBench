; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_time_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_time_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@test_table_pos = common dso_local global i32 0, align 4
@tbl_testdata_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Adding negative-sign time_t tests\00", align 1
@test_table_neg = common dso_local global i32 0, align 4
@tbl_testdata_neg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Adding 64-bit time_t tests\00", align 1
@test_table_pos_64bit = common dso_local global i32 0, align 4
@tbl_testdata_pos_64bit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Adding negative-sign 64-bit time_t tests\00", align 1
@test_table_neg_64bit = common dso_local global i32 0, align 4
@tbl_testdata_neg_64bit = common dso_local global i32 0, align 4
@test_table_compare = common dso_local global i32 0, align 4
@tbl_compare_testdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm*, align 8
  store i64 -1, i64* %1, align 8
  %3 = call %struct.tm* @localtime(i64* %1)
  store %struct.tm* %3, %struct.tm** %2, align 8
  %4 = load i32, i32* @test_table_pos, align 4
  %5 = load i32, i32* @tbl_testdata_pos, align 4
  %6 = call i32 @OSSL_NELEM(i32 %5)
  %7 = call i32 @ADD_ALL_TESTS(i32 %4, i32 %6)
  %8 = load i64, i64* %1, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %0
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = icmp ne %struct.tm* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call i32 @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @test_table_neg, align 4
  %16 = load i32, i32* @tbl_testdata_neg, align 4
  %17 = call i32 @OSSL_NELEM(i32 %16)
  %18 = call i32 @ADD_ALL_TESTS(i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %10, %0
  %20 = call i32 @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @test_table_pos_64bit, align 4
  %22 = load i32, i32* @tbl_testdata_pos_64bit, align 4
  %23 = call i32 @OSSL_NELEM(i32 %22)
  %24 = call i32 @ADD_ALL_TESTS(i32 %21, i32 %23)
  %25 = load i64, i64* %1, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %19
  %28 = load %struct.tm*, %struct.tm** %2, align 8
  %29 = icmp ne %struct.tm* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = call i32 @TEST_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @test_table_neg_64bit, align 4
  %33 = load i32, i32* @tbl_testdata_neg_64bit, align 4
  %34 = call i32 @OSSL_NELEM(i32 %33)
  %35 = call i32 @ADD_ALL_TESTS(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %27, %19
  %37 = load i32, i32* @test_table_compare, align 4
  %38 = load i32, i32* @tbl_compare_testdata, align 4
  %39 = call i32 @OSSL_NELEM(i32 %38)
  %40 = call i32 @ADD_ALL_TESTS(i32 %37, i32 %39)
  ret i32 1
}

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @TEST_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
