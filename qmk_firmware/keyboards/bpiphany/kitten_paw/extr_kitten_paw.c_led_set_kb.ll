; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/extr_kitten_paw.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/extr_kitten_paw.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_LED_IO = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK_ON = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK_OFF = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK_ON = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK_OFF = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK_ON = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @CONFIG_LED_IO, align 4
  %4 = load i32, i32* @CONFIG_LED_IO, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @print_dec(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @USB_LED_CAPS_LOCK_ON, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @USB_LED_CAPS_LOCK_OFF, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @USB_LED_NUM_LOCK_ON, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @USB_LED_NUM_LOCK_OFF, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @USB_LED_SCROLL_LOCK_ON, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @USB_LED_SCROLL_LOCK_OFF, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @led_set_user(i32 %37)
  ret void
}

declare dso_local i32 @print_dec(i32) #1

declare dso_local i32 @led_set_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
