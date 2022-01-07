; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_fetch_prov_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_EOF = common dso_local global i32 0, align 4
@alg = common dso_local global i8* null, align 8
@fetch_property = common dso_local global i8* null, align 8
@expected_fetch_result = common dso_local global i32 0, align 4
@use_default_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@test_EVP_MD_fetch = common dso_local global i32 0, align 4
@test_EVP_CIPHER_fetch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = call i32 (...) @opt_next()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @OPT_EOF, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %16 [
    i32 133, label %9
    i32 130, label %11
    i32 131, label %13
    i32 128, label %14
    i32 129, label %15
    i32 132, label %17
  ]

9:                                                ; preds = %7
  %10 = call i8* (...) @opt_arg()
  store i8* %10, i8** @alg, align 8
  br label %18

11:                                               ; preds = %7
  %12 = call i8* (...) @opt_arg()
  store i8* %12, i8** @fetch_property, align 8
  br label %18

13:                                               ; preds = %7
  store i32 0, i32* @expected_fetch_result, align 4
  br label %18

14:                                               ; preds = %7
  store i32 1, i32* @use_default_ctx, align 4
  br label %18

15:                                               ; preds = %7
  br label %18

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %7, %16
  store i32 0, i32* %1, align 4
  br label %30

18:                                               ; preds = %15, %14, %13, %11, %9
  br label %3

19:                                               ; preds = %3
  %20 = load i8*, i8** @alg, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @test_EVP_MD_fetch, align 4
  %25 = call i32 @ADD_TEST(i32 %24)
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @test_EVP_CIPHER_fetch, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @opt_next(...) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
