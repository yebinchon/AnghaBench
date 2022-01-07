; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/storage_number/tests/extr_test_storage_number.c_test_number_pinting.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/storage_number/tests/extr_test_storage_number.c_test_number_pinting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"0.0000001\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-100\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"123.456789\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"9999.9999999\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"-9999.9999999\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_number_pinting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_number_pinting(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [50 x i8], align 16
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %6 = call i32 @print_calculated_number(i8* %5, double 0.000000e+00)
  %7 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %8 = call i32 @assert_string_equal(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %10 = call i32 @print_calculated_number(i8* %9, double 0x3E7AD7F29ABCAF48)
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %12 = call i32 @assert_string_equal(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %14 = call i32 @print_calculated_number(i8* %13, double 0x3E7828C0BE769DC1)
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %16 = call i32 @assert_string_equal(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %18 = call i32 @print_calculated_number(i8* %17, double 1.000000e-09)
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %20 = call i32 @assert_string_equal(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %22 = call i32 @print_calculated_number(i8* %21, double 1.000000e+02)
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %24 = call i32 @assert_string_equal(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %26 = call i32 @print_calculated_number(i8* %25, double -1.000000e+02)
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %28 = call i32 @assert_string_equal(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %30 = call i32 @print_calculated_number(i8* %29, double 0x405EDD3C07FB4C99)
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %32 = call i32 @assert_string_equal(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %33 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %34 = call i32 @print_calculated_number(i8* %33, double 0x40C387FFFFFF2940)
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %36 = call i32 @assert_string_equal(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %38 = call i32 @print_calculated_number(i8* %37, double 0xC0C387FFFFFF2940)
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %40 = call i32 @assert_string_equal(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_calculated_number(i8*, double) #1

declare dso_local i32 @assert_string_equal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
