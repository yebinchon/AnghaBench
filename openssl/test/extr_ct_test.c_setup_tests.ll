; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ct_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ct_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"CT_DIR\00", align 1
@ct_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CERTS_DIR\00", align 1
@certs_dir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@test_no_scts_in_certificate = common dso_local global i32 0, align 4
@test_one_sct_in_certificate = common dso_local global i32 0, align 4
@test_multiple_scts_in_certificate = common dso_local global i32 0, align 4
@test_verify_one_sct = common dso_local global i32 0, align 4
@test_verify_multiple_scts = common dso_local global i32 0, align 4
@test_verify_fails_for_future_sct = common dso_local global i32 0, align 4
@test_decode_tls_sct = common dso_local global i32 0, align 4
@test_encode_tls_sct = common dso_local global i32 0, align 4
@test_default_ct_policy_eval_ctx_time_is_now = common dso_local global i32 0, align 4
@test_ctlog_from_base64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** @ct_dir, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** @ct_dir, align 8
  br label %4

4:                                                ; preds = %3, %0
  %5 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %5, i8** @certs_dir, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** @certs_dir, align 8
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i32, i32* @test_no_scts_in_certificate, align 4
  %10 = call i32 @ADD_TEST(i32 %9)
  %11 = load i32, i32* @test_one_sct_in_certificate, align 4
  %12 = call i32 @ADD_TEST(i32 %11)
  %13 = load i32, i32* @test_multiple_scts_in_certificate, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_verify_one_sct, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_verify_multiple_scts, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_verify_fails_for_future_sct, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_decode_tls_sct, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
  %23 = load i32, i32* @test_encode_tls_sct, align 4
  %24 = call i32 @ADD_TEST(i32 %23)
  %25 = load i32, i32* @test_default_ct_policy_eval_ctx_time_is_now, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  %27 = load i32, i32* @test_ctlog_from_base64, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  ret i32 1
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
