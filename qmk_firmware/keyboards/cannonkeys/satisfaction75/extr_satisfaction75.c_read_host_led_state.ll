; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_read_host_led_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_read_host_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@led_numlock = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@led_capslock = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@led_scrolllock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_host_led_state() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @host_keyboard_leds()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @led_numlock, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* @led_numlock, align 4
  br label %12

12:                                               ; preds = %11, %8
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @led_numlock, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* @led_numlock, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @led_capslock, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* @led_capslock, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @led_capslock, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* @led_capslock, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @led_scrolllock, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* @led_scrolllock, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @led_scrolllock, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* @led_scrolllock, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @host_keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
