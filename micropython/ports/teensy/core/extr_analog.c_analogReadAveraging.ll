; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReadAveraging.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReadAveraging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calibrating = common dso_local global i64 0, align 8
@ADC0_SC3 = common dso_local global i64 0, align 8
@ADC_SC3_AVGE = common dso_local global i64 0, align 8
@analog_num_average = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogReadAveraging(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @calibrating, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @wait_for_cal()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ule i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  store i64 0, i64* @ADC0_SC3, align 8
  br label %39

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ule i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  store i32 4, i32* %2, align 4
  %15 = load i64, i64* @ADC_SC3_AVGE, align 8
  %16 = call i64 @ADC_SC3_AVGS(i32 0)
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* @ADC0_SC3, align 8
  br label %38

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = icmp ule i32 %19, 8
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  store i32 8, i32* %2, align 4
  %22 = load i64, i64* @ADC_SC3_AVGE, align 8
  %23 = call i64 @ADC_SC3_AVGS(i32 1)
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* @ADC0_SC3, align 8
  br label %37

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = icmp ule i32 %26, 16
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  store i32 16, i32* %2, align 4
  %29 = load i64, i64* @ADC_SC3_AVGE, align 8
  %30 = call i64 @ADC_SC3_AVGS(i32 2)
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* @ADC0_SC3, align 8
  br label %36

32:                                               ; preds = %25
  store i32 32, i32* %2, align 4
  %33 = load i64, i64* @ADC_SC3_AVGE, align 8
  %34 = call i64 @ADC_SC3_AVGS(i32 3)
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* @ADC0_SC3, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %14
  br label %39

39:                                               ; preds = %38, %10
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* @analog_num_average, align 4
  ret void
}

declare dso_local i32 @wait_for_cal(...) #1

declare dso_local i64 @ADC_SC3_AVGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
