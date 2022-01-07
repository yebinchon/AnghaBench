; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh80_3000/keymaps/ansi_std/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh80_3000/keymaps/ansi_std/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @DDRB, align 4
  %10 = or i32 %9, 32
  store i32 %10, i32* @DDRB, align 4
  %11 = load i32, i32* @PORTB, align 4
  %12 = and i32 %11, -33
  store i32 %12, i32* @PORTB, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @DDRB, align 4
  %15 = and i32 %14, -33
  store i32 %15, i32* @DDRB, align 4
  %16 = load i32, i32* @PORTB, align 4
  %17 = and i32 %16, -33
  store i32 %17, i32* @PORTB, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @DDRB, align 4
  %26 = or i32 %25, 64
  store i32 %26, i32* @DDRB, align 4
  %27 = load i32, i32* @PORTB, align 4
  %28 = and i32 %27, -65
  store i32 %28, i32* @PORTB, align 4
  br label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @DDRB, align 4
  %31 = and i32 %30, -65
  store i32 %31, i32* @DDRB, align 4
  %32 = load i32, i32* @PORTB, align 4
  %33 = and i32 %32, -65
  store i32 %33, i32* @PORTB, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @DDRB, align 4
  %42 = or i32 %41, 128
  store i32 %42, i32* @DDRB, align 4
  %43 = load i32, i32* @PORTB, align 4
  %44 = and i32 %43, -129
  store i32 %44, i32* @PORTB, align 4
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @DDRB, align 4
  %47 = and i32 %46, -129
  store i32 %47, i32* @DDRB, align 4
  %48 = load i32, i32* @PORTB, align 4
  %49 = and i32 %48, -129
  store i32 %49, i32* @PORTB, align 4
  br label %50

50:                                               ; preds = %45, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
