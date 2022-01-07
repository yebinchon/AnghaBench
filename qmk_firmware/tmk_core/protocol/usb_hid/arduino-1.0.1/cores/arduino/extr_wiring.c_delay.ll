; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring.c_delay.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring.c_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @micros()
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = call i64 (...) @micros()
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %11, %12
  %14 = icmp sge i32 %13, 1000
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1000
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %9
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i64 @micros(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
