; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_cmp_ctx_log_cb_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_cmp_ctx_log_cb_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"this general trace message is not shown by default\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"this should be printed as CMP error message\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"this should be printed as CMP warning message\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"this should not be printed\00", align 1
@OSSL_CMP_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"this should be printed as CMP debug message\00", align 1
@OSSL_CMP_LOG_INFO = common dso_local global i32 0, align 4
@test_log_cb = common dso_local global i32* null, align 8
@OPENSSL_LINE = common dso_local global i64 0, align 8
@test_log_line = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@test_log_cb_res = common dso_local global i32 0, align 4
@OSSL_CMP_LOG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @execute_cmp_ctx_log_cb_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_cmp_ctx_log_cb_test(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* @ALL, align 4
  %9 = call i32 @OSSL_TRACE(i32 %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @OSSL_CMP_log_open()
  %11 = call i32 (...) @OSSL_CMP_log_open()
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @OSSL_CMP_CTX_set_log_cb(i32* %12, i32* null)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %30

17:                                               ; preds = %1
  %18 = call i32 @OSSL_CMP_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @OSSL_CMP_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @OSSL_CMP_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @OSSL_CMP_LOG_DEBUG, align 4
  %23 = call i32 @OSSL_CMP_CTX_set_log_verbosity(i32* %21, i32 %22)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = call i32 @OSSL_CMP_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @OSSL_CMP_LOG_INFO, align 4
  %28 = call i32 @OSSL_CMP_CTX_set_log_verbosity(i32* %26, i32 %27)
  %29 = call i32 @TEST_true(i32 %28)
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** @test_log_cb, align 8
  %33 = call i32 @OSSL_CMP_CTX_set_log_cb(i32* %31, i32* %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %59

37:                                               ; preds = %30
  %38 = load i64, i64* @OPENSSL_LINE, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @test_log_line, align 8
  %40 = load i32, i32* @INFO, align 4
  %41 = call i32 @OSSL_CMP_log2(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8 signext 107)
  %42 = load i32, i32* @test_log_cb_res, align 4
  %43 = call i32 @TEST_int_eq(i32 %42, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @OSSL_CMP_LOG_ERR, align 4
  %49 = call i32 @OSSL_CMP_CTX_set_log_verbosity(i32* %47, i32 %48)
  store i32 -1, i32* @test_log_cb_res, align 4
  %50 = load i64, i64* @OPENSSL_LINE, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @test_log_line, align 8
  %52 = load i32, i32* @INFO, align 4
  %53 = call i32 @OSSL_CMP_log2(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8 signext 107)
  %54 = load i32, i32* @test_log_cb_res, align 4
  %55 = call i32 @TEST_int_eq(i32 %54, i32 -1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %36
  %60 = call i32 (...) @OSSL_CMP_log_close()
  %61 = call i32 (...) @OSSL_CMP_log_close()
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @OSSL_TRACE(i32, i8*) #1

declare dso_local i32 @OSSL_CMP_log_open(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_CMP_CTX_set_log_cb(i32*, i32*) #1

declare dso_local i32 @OSSL_CMP_err(i8*) #1

declare dso_local i32 @OSSL_CMP_warn(i8*) #1

declare dso_local i32 @OSSL_CMP_debug(i8*) #1

declare dso_local i32 @OSSL_CMP_CTX_set_log_verbosity(i32*, i32) #1

declare dso_local i32 @OSSL_CMP_log2(i32, i8*, i8*, i8 signext) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @OSSL_CMP_log_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
