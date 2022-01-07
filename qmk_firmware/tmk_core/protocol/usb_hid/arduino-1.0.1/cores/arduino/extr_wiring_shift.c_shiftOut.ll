; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_shift.c_shiftOut.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/usb_hid/arduino-1.0.1/cores/arduino/extr_wiring_shift.c_shiftOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSBFIRST = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shiftOut(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %47, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @LSBFIRST, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @digitalWrite(i32 %18, i32 %26)
  br label %40

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 7, %31
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @digitalWrite(i32 %29, i32 %38)
  br label %40

40:                                               ; preds = %28, %17
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HIGH, align 4
  %43 = call i32 @digitalWrite(i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @LOW, align 4
  %46 = call i32 @digitalWrite(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %10

50:                                               ; preds = %10
  ret void
}

declare dso_local i32 @digitalWrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
