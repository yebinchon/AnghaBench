; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/3key/keymaps/ctrl-alt-del/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/3key/keymaps/ctrl-alt-del/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_COMPOSE = common dso_local global i32 0, align 4
@USB_LED_KANA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %18

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @USB_LED_COMPOSE, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @USB_LED_KANA, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
