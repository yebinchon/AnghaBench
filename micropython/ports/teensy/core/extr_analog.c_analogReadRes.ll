; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReadRes.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReadRes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@analog_right_shift = common dso_local global i32 0, align 4
@analog_config_bits = common dso_local global i32 0, align 4
@calibrating = common dso_local global i64 0, align 8
@ADC0_SC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogReadRes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp uge i32 %4, 13
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ugt i32 %7, 16
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 16, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %6
  store i32 16, i32* %3, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp uge i32 %12, 11
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 12, i32* %3, align 4
  br label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp uge i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 10, i32* %3, align 4
  br label %20

19:                                               ; preds = %15
  store i32 8, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %14
  br label %22

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* @analog_right_shift, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @analog_config_bits, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* @analog_config_bits, align 4
  %31 = load i64, i64* @calibrating, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 0, i64* @ADC0_SC3, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = call i32 (...) @analog_init()
  br label %36

36:                                               ; preds = %34, %22
  ret void
}

declare dso_local i32 @analog_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
