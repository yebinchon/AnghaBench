; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReference.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_analog.c_analogReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@analog_reference_internal = common dso_local global i32 0, align 4
@calibrating = common dso_local global i64 0, align 8
@ADC0_SC3 = common dso_local global i64 0, align 8
@ADC1_SC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogReference(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* @analog_reference_internal, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  store i32 1, i32* @analog_reference_internal, align 4
  %9 = load i64, i64* @calibrating, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i64 0, i64* @ADC0_SC3, align 8
  br label %12

12:                                               ; preds = %11, %8
  %13 = call i32 (...) @analog_init()
  br label %14

14:                                               ; preds = %12, %5
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @analog_reference_internal, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  store i32 0, i32* @analog_reference_internal, align 4
  %19 = load i64, i64* @calibrating, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i64 0, i64* @ADC0_SC3, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = call i32 (...) @analog_init()
  br label %24

24:                                               ; preds = %22, %15
  br label %25

25:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @analog_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
