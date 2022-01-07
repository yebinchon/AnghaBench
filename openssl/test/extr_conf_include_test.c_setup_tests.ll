; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf = common dso_local global i8* null, align 8
@OPT_EOF = common dso_local global i32 0, align 4
@expect_failure = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@in = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to open the file argument\00", align 1
@test_load_config = common dso_local global i32 0, align 4
@test_check_null_numbers = common dso_local global i32 0, align 4
@test_check_overflow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = call i8* @NCONF_new(i32* null)
  store i8* %4, i8** @conf, align 8
  %5 = call i32 @TEST_ptr(i8* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %40

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %18, %8
  %10 = call i32 (...) @opt_next()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @OPT_EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %13
  store i32 1, i32* @expect_failure, align 4
  br label %18

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %40

18:                                               ; preds = %16, %15
  br label %9

19:                                               ; preds = %9
  %20 = call i8* @test_get_argument(i32 0)
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @TEST_ptr(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @BIO_new_file(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** @in, align 8
  %27 = call i32 @TEST_ptr(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %19
  %30 = call i32 @TEST_note(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @change_path(i8* %32)
  %34 = load i32, i32* @test_load_config, align 4
  %35 = call i32 @ADD_TEST(i32 %34)
  %36 = load i32, i32* @test_check_null_numbers, align 4
  %37 = call i32 @ADD_TEST(i32 %36)
  %38 = load i32, i32* @test_check_overflow, align 4
  %39 = call i32 @ADD_TEST(i32 %38)
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %31, %29, %17, %7
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @NCONF_new(i32*) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i8* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @TEST_note(i8*) #1

declare dso_local i32 @change_path(i8*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
