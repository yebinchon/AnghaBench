; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/phantom/extr_phantom.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/phantom/extr_phantom.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @PORTB, align 4
  %10 = or i32 %9, 64
  store i32 %10, i32* @PORTB, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @PORTB, align 4
  %13 = and i32 %12, -65
  store i32 %13, i32* @PORTB, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @PORTB, align 4
  %22 = or i32 %21, 128
  store i32 %22, i32* @PORTB, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @PORTB, align 4
  %25 = and i32 %24, -129
  store i32 %25, i32* @PORTB, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @led_set_user(i32 %27)
  ret void
}

declare dso_local i32 @led_set_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
