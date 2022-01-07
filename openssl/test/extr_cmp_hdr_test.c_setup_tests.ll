; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_data = common dso_local global i32 0, align 4
@OSSL_CMP_TRANSACTIONID_LENGTH = common dso_local global i32 0, align 4
@test_HDR_set_get_pvno = common dso_local global i32 0, align 4
@test_HDR_get0_senderNonce = common dso_local global i32 0, align 4
@test_HDR_set1_sender = common dso_local global i32 0, align 4
@test_HDR_set1_recipient = common dso_local global i32 0, align 4
@test_HDR_update_messageTime = common dso_local global i32 0, align 4
@test_HDR_set1_senderKID = common dso_local global i32 0, align 4
@test_HDR_push0_freeText = common dso_local global i32 0, align 4
@test_HDR_push1_freeText = common dso_local global i32 0, align 4
@test_HDR_generalInfo_push0_item = common dso_local global i32 0, align 4
@test_HDR_generalInfo_push1_items = common dso_local global i32 0, align 4
@test_HDR_set_and_check_implicit_confirm = common dso_local global i32 0, align 4
@test_HDR_init = common dso_local global i32 0, align 4
@test_HDR_init_with_subject = common dso_local global i32 0, align 4
@test_HDR_init_no_ref_no_subject = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @rand_data, align 4
  %2 = load i32, i32* @OSSL_CMP_TRANSACTIONID_LENGTH, align 4
  %3 = call i32 @RAND_bytes(i32 %1, i32 %2)
  %4 = load i32, i32* @test_HDR_set_get_pvno, align 4
  %5 = call i32 @ADD_TEST(i32 %4)
  %6 = load i32, i32* @test_HDR_get0_senderNonce, align 4
  %7 = call i32 @ADD_TEST(i32 %6)
  %8 = load i32, i32* @test_HDR_set1_sender, align 4
  %9 = call i32 @ADD_TEST(i32 %8)
  %10 = load i32, i32* @test_HDR_set1_recipient, align 4
  %11 = call i32 @ADD_TEST(i32 %10)
  %12 = load i32, i32* @test_HDR_update_messageTime, align 4
  %13 = call i32 @ADD_TEST(i32 %12)
  %14 = load i32, i32* @test_HDR_set1_senderKID, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_HDR_push0_freeText, align 4
  %17 = call i32 @ADD_TEST(i32 %16)
  %18 = load i32, i32* @test_HDR_push1_freeText, align 4
  %19 = call i32 @ADD_TEST(i32 %18)
  %20 = load i32, i32* @test_HDR_generalInfo_push0_item, align 4
  %21 = call i32 @ADD_TEST(i32 %20)
  %22 = load i32, i32* @test_HDR_generalInfo_push1_items, align 4
  %23 = call i32 @ADD_TEST(i32 %22)
  %24 = load i32, i32* @test_HDR_set_and_check_implicit_confirm, align 4
  %25 = call i32 @ADD_TEST(i32 %24)
  %26 = load i32, i32* @test_HDR_init, align 4
  %27 = call i32 @ADD_TEST(i32 %26)
  %28 = load i32, i32* @test_HDR_init_with_subject, align 4
  %29 = call i32 @ADD_TEST(i32 %28)
  %30 = load i32, i32* @test_HDR_init_no_ref_no_subject, align 4
  %31 = call i32 @ADD_TEST(i32 %30)
  ret i32 1
}

declare dso_local i32 @RAND_bytes(i32, i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
