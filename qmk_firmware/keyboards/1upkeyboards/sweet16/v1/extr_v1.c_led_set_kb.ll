; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/v1/extr_v1.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/v1/extr_v1.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@D5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = call i64 @IS_LED_ON(i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @B0, align 4
  %9 = call i32 @setPinOutput(i32 %8)
  %10 = load i32, i32* @B0, align 4
  %11 = call i32 @writePinLow(i32 %10)
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @B0, align 4
  %14 = call i32 @setPinInput(i32 %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %18 = call i64 @IS_LED_ON(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @D5, align 4
  %22 = call i32 @setPinOutput(i32 %21)
  %23 = load i32, i32* @D5, align 4
  %24 = call i32 @writePinLow(i32 %23)
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @D5, align 4
  %27 = call i32 @setPinInput(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  ret void
}

declare dso_local i64 @IS_LED_ON(i32, i32) #1

declare dso_local i32 @setPinOutput(i32) #1

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @setPinInput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
