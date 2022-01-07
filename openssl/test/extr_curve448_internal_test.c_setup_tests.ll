; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_curve448_internal_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_EOF = common dso_local global i32 0, align 4
@max = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@test_x448 = common dso_local global i32 0, align 4
@test_ed448 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = call i32 (...) @opt_next()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @OPT_EOF, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 129, label %11
    i32 130, label %12
  ]

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %19

11:                                               ; preds = %7
  store i32 1000000, i32* @max, align 4
  br label %13

12:                                               ; preds = %7
  store i32 1, i32* @verbose, align 4
  br label %13

13:                                               ; preds = %12, %11, %9
  br label %3

14:                                               ; preds = %3
  %15 = load i32, i32* @test_x448, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_ed448, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
