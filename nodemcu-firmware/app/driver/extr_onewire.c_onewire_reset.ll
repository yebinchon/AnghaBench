; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_onewire.c_onewire_reset.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_onewire.c_onewire_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @onewire_reset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 125, i64* %5, align 8
  %6 = call i32 (...) @noInterrupts()
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @DIRECT_MODE_INPUT(i64 %7)
  %9 = call i32 (...) @interrupts()
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %41

15:                                               ; preds = %10
  %16 = call i32 @delayMicroseconds(i32 2)
  br label %17

17:                                               ; preds = %15
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @DIRECT_READ(i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %10, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @noInterrupts()
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @DIRECT_WRITE_LOW(i64 %24)
  %26 = call i32 (...) @interrupts()
  %27 = call i32 @delayMicroseconds(i32 480)
  %28 = call i32 (...) @noInterrupts()
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @DIRECT_MODE_INPUT(i64 %29)
  %31 = call i32 @delayMicroseconds(i32 70)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @DIRECT_READ(i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = call i32 (...) @interrupts()
  %39 = call i32 @delayMicroseconds(i32 410)
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %22, %14
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @noInterrupts(...) #1

declare dso_local i32 @DIRECT_MODE_INPUT(i64) #1

declare dso_local i32 @interrupts(...) #1

declare dso_local i32 @delayMicroseconds(i32) #1

declare dso_local i32 @DIRECT_READ(i64) #1

declare dso_local i32 @DIRECT_WRITE_LOW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
