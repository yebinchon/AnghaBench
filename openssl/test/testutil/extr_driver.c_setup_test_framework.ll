; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_setup_test_framework.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_setup_test_framework.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"OPENSSL_TEST_RAND_ORDER\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"HARNESS_OSSL_LEVEL\00", align 1
@level = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_test_framework(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @atoi(i8* %13)
  %15 = mul nsw i32 4, %14
  store i32 %15, i32* @level, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @atoi(i8* %20)
  %22 = call i32 @set_seed(i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = call i64 (...) @should_report_leaks()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 @CRYPTO_set_mem_debug(i32 1)
  %28 = load i32, i32* @CRYPTO_MEM_CHECK_ON, align 4
  %29 = call i32 @CRYPTO_mem_ctrl(i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 (...) @test_get_options()
  %34 = call i32 @opt_init(i32 %31, i8** %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @set_seed(i32) #1

declare dso_local i64 @should_report_leaks(...) #1

declare dso_local i32 @CRYPTO_set_mem_debug(i32) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i32 @opt_init(i32, i8**, i32) #1

declare dso_local i32 @test_get_options(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
