; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_test_CTX_reinit.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_test_CTX_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_CMP_CTX_TEST_FIXTURE = common dso_local global i32 0, align 4
@set_up = common dso_local global i32 0, align 4
@execute_CTX_reinit_test = common dso_local global i32 0, align 4
@tear_down = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_CTX_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_CTX_reinit() #0 {
  %1 = load i32, i32* @OSSL_CMP_CTX_TEST_FIXTURE, align 4
  %2 = load i32, i32* @set_up, align 4
  %3 = call i32 @SETUP_TEST_FIXTURE(i32 %1, i32 %2)
  %4 = load i32, i32* @execute_CTX_reinit_test, align 4
  %5 = load i32, i32* @tear_down, align 4
  %6 = call i32 @EXECUTE_TEST(i32 %4, i32 %5)
  %7 = load i32, i32* @result, align 4
  ret i32 %7
}

declare dso_local i32 @SETUP_TEST_FIXTURE(i32, i32) #1

declare dso_local i32 @EXECUTE_TEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
