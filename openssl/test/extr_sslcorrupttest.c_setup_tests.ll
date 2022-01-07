; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslcorrupttest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@test_ssl_corrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @test_get_argument(i32 0)
  store i32 %3, i32* @cert, align 4
  %4 = call i32 @TEST_ptr(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i32 @test_get_argument(i32 1)
  store i32 %7, i32* @privkey, align 4
  %8 = call i32 @TEST_ptr(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %20

11:                                               ; preds = %6
  %12 = call i32 (...) @setup_cipher_list()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @test_ssl_corrupt, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ADD_ALL_TESTS(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @test_get_argument(i32) #1

declare dso_local i32 @setup_cipher_list(...) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
