; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_select_8.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_constant_time_test.c_test_select_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONSTTIME_TRUE_8 = common dso_local global i32 0, align 4
@CONSTTIME_FALSE_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @test_select_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_select_8(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  %6 = load i32, i32* @CONSTTIME_TRUE_8, align 4
  %7 = load i8, i8* %4, align 1
  %8 = load i8, i8* %5, align 1
  %9 = call i32 @constant_time_select_8(i32 %6, i8 zeroext %7, i8 zeroext %8)
  %10 = load i8, i8* %4, align 1
  %11 = call i32 @TEST_uint_eq(i32 %9, i8 zeroext %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @CONSTTIME_FALSE_8, align 4
  %16 = load i8, i8* %4, align 1
  %17 = load i8, i8* %5, align 1
  %18 = call i32 @constant_time_select_8(i32 %15, i8 zeroext %16, i8 zeroext %17)
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @TEST_uint_eq(i32 %18, i8 zeroext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @TEST_uint_eq(i32, i8 zeroext) #1

declare dso_local i32 @constant_time_select_8(i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
