; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/at101_blackheart/keymaps/default/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/at101_blackheart/keymaps/default/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DDRB, align 4
  %4 = or i32 %3, 16
  store i32 %4, i32* @DDRB, align 4
  %5 = load i32, i32* @DDRD, align 4
  %6 = or i32 %5, 192
  store i32 %6, i32* @DDRD, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @PORTD, align 4
  %14 = or i32 %13, 128
  store i32 %14, i32* @PORTD, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @PORTD, align 4
  %17 = and i32 %16, -129
  store i32 %17, i32* @PORTD, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @PORTB, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* @PORTB, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @PORTB, align 4
  %29 = and i32 %28, -17
  store i32 %29, i32* @PORTB, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @PORTD, align 4
  %38 = or i32 %37, 64
  store i32 %38, i32* @PORTD, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @PORTD, align 4
  %41 = and i32 %40, -65
  store i32 %41, i32* @PORTD, align 4
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
