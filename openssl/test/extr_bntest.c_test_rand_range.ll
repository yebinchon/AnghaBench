; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand_range.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_range_cases = common dso_local global i32 0, align 4
@binomial_critical = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"This test is expeced to fail by chance 0.01%% of the time.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rand_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand_range() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @rand_range_cases, align 4
  %7 = call i64 @OSSL_NELEM(i32 %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @test_rand_range_single(i64 %10)
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  br label %4

19:                                               ; preds = %4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @binomial_critical, align 4
  %22 = call i64 @TEST_int_ge(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @TEST_note(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @OSSL_NELEM(i32) #1

declare dso_local i64 @test_rand_range_single(i64) #1

declare dso_local i64 @TEST_int_ge(i32, i32) #1

declare dso_local i32 @TEST_note(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
