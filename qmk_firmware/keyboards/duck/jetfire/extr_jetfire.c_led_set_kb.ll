; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_jetfire.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@STATE_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@backlight_state_led = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@STATE_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@STATE_LED_NUM_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @STATE_LED_CAPS_LOCK, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @backlight_state_led, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @backlight_state_led, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @STATE_LED_CAPS_LOCK, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @backlight_state_led, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @backlight_state_led, align 4
  br label %19

19:                                               ; preds = %13, %8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @STATE_LED_SCROLL_LOCK, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @backlight_state_led, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @backlight_state_led, align 4
  br label %36

30:                                               ; preds = %19
  %31 = load i32, i32* @STATE_LED_SCROLL_LOCK, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @backlight_state_led, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* @backlight_state_led, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @STATE_LED_NUM_LOCK, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @backlight_state_led, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @backlight_state_led, align 4
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @STATE_LED_NUM_LOCK, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @backlight_state_led, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @backlight_state_led, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = call i32 (...) @backlight_update_state()
  ret void
}

declare dso_local i32 @backlight_update_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
