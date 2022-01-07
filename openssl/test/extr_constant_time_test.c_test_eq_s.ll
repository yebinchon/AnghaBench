; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_eq_s.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_eq_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONSTTIME_TRUE_S = common dso_local global i32 0, align 4
@CONSTTIME_FALSE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @test_eq_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_eq_s(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @constant_time_eq_s(i64 %10, i64 %11)
  %13 = load i32, i32* @CONSTTIME_TRUE_S, align 4
  %14 = call i32 @TEST_size_t_eq(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %30

17:                                               ; preds = %9, %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @constant_time_eq_s(i64 %22, i64 %23)
  %25 = load i32, i32* @CONSTTIME_FALSE_S, align 4
  %26 = call i32 @TEST_int_eq(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %21, %17
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @constant_time_eq_s(i64, i64) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
