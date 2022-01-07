; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_test_load_config.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_test_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@expect_failure = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failure loading the configuration at line %ld\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failure expected but did not happen\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed in CONF_modules_load\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"./.rnd\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"RANDFILE incorrect\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"CA_default\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"default_days\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"default_days incorrect\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"default_bits\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"default_bits incorrect\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"req_distinguished_name\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"countryName_default\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"countryName_default incorrect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_load_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @conf, align 4
  %7 = load i32, i32* @in, align 4
  %8 = call i32 @NCONF_load_bio(i32 %6, i32 %7, i64* %2)
  %9 = call i32 @TEST_int_gt(i32 %8, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i64 (...) @ERR_peek_error()
  store i64 %12, i64* %5, align 8
  %13 = call i32 @TEST_int_eq(i64 %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %0
  %16 = load i64, i64* @expect_failure, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %1, align 4
  br label %81

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 0, i32* %1, align 4
  br label %81

22:                                               ; preds = %11
  %23 = load i64, i64* @expect_failure, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

27:                                               ; preds = %22
  %28 = load i32, i32* @conf, align 4
  %29 = call i32 @CONF_modules_load(i32 %28, i32* null, i32 0)
  %30 = call i32 @TEST_int_gt(i32 %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

34:                                               ; preds = %27
  %35 = load i32, i32* @conf, align 4
  %36 = call i8* @NCONF_get_string(i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @TEST_ptr(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @TEST_str_eq(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %34
  %45 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

46:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  %47 = load i32, i32* @conf, align 4
  %48 = call i64 @NCONF_get_number(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64* %3)
  %49 = call i32 @TEST_int_eq(i64 %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @TEST_int_eq(i64 %52, i32 365)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %46
  %56 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

57:                                               ; preds = %51
  store i64 0, i64* %3, align 8
  %58 = load i32, i32* @conf, align 4
  %59 = call i64 @NCONF_get_number(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64* %3)
  %60 = call i32 @TEST_int_eq(i64 %59, i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @TEST_int_eq(i64 %63, i32 2048)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %57
  %67 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

68:                                               ; preds = %62
  %69 = load i32, i32* @conf, align 4
  %70 = call i8* @NCONF_get_string(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @TEST_ptr(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @TEST_str_eq(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74, %68
  %79 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

80:                                               ; preds = %74
  store i32 1, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %78, %66, %55, %44, %32, %25, %19, %18
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @NCONF_load_bio(i32, i32, i64*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @TEST_note(i8*, ...) #1

declare dso_local i32 @CONF_modules_load(i32, i32*, i32) #1

declare dso_local i8* @NCONF_get_string(i32, i8*, i8*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i64 @NCONF_get_number(i32, i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
