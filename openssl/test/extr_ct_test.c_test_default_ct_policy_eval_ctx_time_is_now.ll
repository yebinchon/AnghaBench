; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_default_ct_policy_eval_ctx_time_is_now.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ct_test.c_test_default_ct_policy_eval_ctx_time_is_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_default_ct_policy_eval_ctx_time_is_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_default_ct_policy_eval_ctx_time_is_now() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32* (...) @CT_POLICY_EVAL_CTX_new()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @CT_POLICY_EVAL_CTX_get_time(i32* %6)
  %8 = sdiv i32 %7, 1000
  store i32 %8, i32* %3, align 4
  store i32 600, i32* %4, align 4
  %9 = call i32 @time(i32* null)
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @difftime(i32 %9, i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @abs(i32 %12) #3
  %14 = call i32 @TEST_time_t_le(i32 %13, i32 600)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %18

17:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @CT_POLICY_EVAL_CTX_free(i32* %19)
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32* @CT_POLICY_EVAL_CTX_new(...) #1

declare dso_local i32 @CT_POLICY_EVAL_CTX_get_time(i32*) #1

declare dso_local i32 @TEST_time_t_le(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @difftime(i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @CT_POLICY_EVAL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
