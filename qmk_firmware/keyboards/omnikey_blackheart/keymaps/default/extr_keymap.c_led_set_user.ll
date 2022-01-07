; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/omnikey_blackheart/keymaps/default/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/omnikey_blackheart/keymaps/default/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DDRB, align 4
  %4 = or i32 %3, 112
  store i32 %4, i32* @DDRB, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @PORTB, align 4
  %12 = or i32 %11, 16
  store i32 %12, i32* @PORTB, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @PORTB, align 4
  %15 = and i32 %14, -17
  store i32 %15, i32* @PORTB, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @PORTB, align 4
  %24 = or i32 %23, 32
  store i32 %24, i32* @PORTB, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @PORTB, align 4
  %27 = and i32 %26, -33
  store i32 %27, i32* @PORTB, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @PORTB, align 4
  %36 = or i32 %35, 64
  store i32 %36, i32* @PORTB, align 4
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @PORTB, align 4
  %39 = and i32 %38, -65
  store i32 %39, i32* @PORTB, align 4
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
