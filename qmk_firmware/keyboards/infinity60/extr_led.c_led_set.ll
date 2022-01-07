; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/extr_led.c_led_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/extr_led.c_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@TOGGLE_NUM_LOCK = common dso_local global i32 0, align 4
@led_mailbox = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@TOGGLE_CAPS_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = call i32 (...) @chSysUnconditionalLock()
  %11 = load i32, i32* @TOGGLE_NUM_LOCK, align 4
  %12 = or i32 256, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @chMBPostI(i32* @led_mailbox, i32 %13)
  %15 = call i32 (...) @chSysUnconditionalUnlock()
  br label %23

16:                                               ; preds = %1
  %17 = call i32 (...) @chSysUnconditionalLock()
  %18 = load i32, i32* @TOGGLE_NUM_LOCK, align 4
  %19 = or i32 0, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @chMBPostI(i32* @led_mailbox, i32 %20)
  %22 = call i32 (...) @chSysUnconditionalUnlock()
  br label %23

23:                                               ; preds = %16, %9
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call i32 (...) @chSysUnconditionalLock()
  %31 = load i32, i32* @TOGGLE_CAPS_LOCK, align 4
  %32 = or i32 256, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @chMBPostI(i32* @led_mailbox, i32 %33)
  %35 = call i32 (...) @chSysUnconditionalUnlock()
  br label %43

36:                                               ; preds = %23
  %37 = call i32 (...) @chSysUnconditionalLock()
  %38 = load i32, i32* @TOGGLE_CAPS_LOCK, align 4
  %39 = or i32 0, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @chMBPostI(i32* @led_mailbox, i32 %40)
  %42 = call i32 (...) @chSysUnconditionalUnlock()
  br label %43

43:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @chSysUnconditionalLock(...) #1

declare dso_local i32 @chMBPostI(i32*, i32) #1

declare dso_local i32 @chSysUnconditionalUnlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
