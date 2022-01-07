; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cipherbytes_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cipherbytes_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@test_empty = common dso_local global i32 0, align 4
@test_unsupported = common dso_local global i32 0, align 4
@test_v2 = common dso_local global i32 0, align 4
@test_v3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @TLS_server_method()
  %3 = call i32 @SSL_CTX_new(i32 %2)
  store i32 %3, i32* @ctx, align 4
  %4 = call i32 @TEST_ptr(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @ctx, align 4
  %8 = call i32 @SSL_new(i32 %7)
  store i32 %8, i32* @s, align 4
  %9 = call i32 @TEST_ptr(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %21

12:                                               ; preds = %6
  %13 = load i32, i32* @test_empty, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_unsupported, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_v2, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_v3, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @SSL_new(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
