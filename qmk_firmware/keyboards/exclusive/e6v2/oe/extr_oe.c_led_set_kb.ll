; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/exclusive/e6v2/oe/extr_oe.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/exclusive/e6v2/oe/extr_oe.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DDRB, align 4
  %4 = or i32 %3, 64
  store i32 %4, i32* @DDRB, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @DDRB, align 4
  %12 = or i32 %11, 4
  store i32 %12, i32* @DDRB, align 4
  %13 = load i32, i32* @PORTB, align 4
  %14 = and i32 %13, -5
  store i32 %14, i32* @PORTB, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @DDRB, align 4
  %17 = and i32 %16, -5
  store i32 %17, i32* @DDRB, align 4
  %18 = load i32, i32* @PORTB, align 4
  %19 = and i32 %18, -5
  store i32 %19, i32* @PORTB, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @PORTB, align 4
  %25 = or i32 %24, 64
  store i32 %25, i32* @PORTB, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @PORTB, align 4
  %28 = and i32 %27, -65
  store i32 %28, i32* @PORTB, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @led_set_user(i32 %30)
  ret void
}

declare dso_local i32 @led_set_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
