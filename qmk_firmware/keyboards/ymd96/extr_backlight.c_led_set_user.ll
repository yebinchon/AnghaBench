; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ymd96/extr_backlight.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ymd96/extr_backlight.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@NUMLOCK_PORT = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@CAPSLOCK_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @NUMLOCK_PORT, align 4
  %10 = load i32, i32* @DDRD, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @DDRD, align 4
  %12 = load i32, i32* @NUMLOCK_PORT, align 4
  %13 = load i32, i32* @PORTD, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @PORTD, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @NUMLOCK_PORT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @DDRD, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @DDRD, align 4
  %20 = load i32, i32* @NUMLOCK_PORT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @PORTD, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @PORTD, align 4
  br label %24

24:                                               ; preds = %15, %8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @CAPSLOCK_PORT, align 4
  %32 = load i32, i32* @DDRD, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @DDRD, align 4
  %34 = load i32, i32* @CAPSLOCK_PORT, align 4
  %35 = load i32, i32* @PORTD, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @PORTD, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load i32, i32* @CAPSLOCK_PORT, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @DDRD, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @DDRD, align 4
  %42 = load i32, i32* @CAPSLOCK_PORT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @PORTD, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @PORTD, align 4
  br label %46

46:                                               ; preds = %37, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
