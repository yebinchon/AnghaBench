; ModuleID = '/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_output.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_failed = common dso_local global i32 0, align 4
@test_rem_output_len = common dso_local global i64 0, align 8
@test_exp_output = common dso_local global i8* null, align 8
@test_exp_output_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upytest_output(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @test_failed, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @test_rem_output_len, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* @test_failed, align 4
  br label %23

12:                                               ; preds = %7
  %13 = load i8*, i8** @test_exp_output, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @memcmp(i8* %13, i8* %14, i64 %15)
  store i32 %16, i32* @test_failed, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i8*, i8** @test_exp_output, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %19, i8** @test_exp_output, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @test_rem_output_len, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* @test_rem_output_len, align 8
  br label %23

23:                                               ; preds = %12, %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @mp_hal_stdout_tx_strn_cooked(i8* %25, i64 %26)
  ret void
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @mp_hal_stdout_tx_strn_cooked(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
