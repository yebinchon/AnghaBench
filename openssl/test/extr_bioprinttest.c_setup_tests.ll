; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bioprinttest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bioprinttest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_EOF = common dso_local global i32 0, align 4
@justprint = common dso_local global i32 0, align 4
@test_big = common dso_local global i32 0, align 4
@test_fp = common dso_local global i32 0, align 4
@pw_params = common dso_local global i32 0, align 4
@test_zu = common dso_local global i32 0, align 4
@zu_data = common dso_local global i32 0, align 4
@test_j = common dso_local global i32 0, align 4
@jf_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = call i32 (...) @opt_next()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @OPT_EOF, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %11 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %7
  store i32 1, i32* @justprint, align 4
  br label %12

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %28

12:                                               ; preds = %10, %9
  br label %3

13:                                               ; preds = %3
  %14 = load i32, i32* @test_big, align 4
  %15 = call i32 @ADD_TEST(i32 %14)
  %16 = load i32, i32* @test_fp, align 4
  %17 = load i32, i32* @pw_params, align 4
  %18 = call i32 @nelem(i32 %17)
  %19 = call i32 @ADD_ALL_TESTS(i32 %16, i32 %18)
  %20 = load i32, i32* @test_zu, align 4
  %21 = load i32, i32* @zu_data, align 4
  %22 = call i32 @nelem(i32 %21)
  %23 = call i32 @ADD_ALL_TESTS(i32 %20, i32 %22)
  %24 = load i32, i32* @test_j, align 4
  %25 = load i32, i32* @jf_data, align 4
  %26 = call i32 @nelem(i32 %25)
  %27 = call i32 @ADD_ALL_TESTS(i32 %24, i32 %26)
  store i32 1, i32* %1, align 4
  br label %28

28:                                               ; preds = %13, %11
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @nelem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
