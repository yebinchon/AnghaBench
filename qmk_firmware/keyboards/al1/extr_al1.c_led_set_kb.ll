; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_al1.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_al1.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_LED_IO = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @CONFIG_LED_IO, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @print_dec(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @PORTB, align 4
  %13 = and i32 %12, -129
  store i32 %13, i32* @PORTB, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @PORTB, align 4
  %16 = or i32 %15, 128
  store i32 %16, i32* @PORTB, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @PORTD, align 4
  %25 = and i32 %24, -2
  store i32 %25, i32* @PORTD, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @PORTD, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* @PORTD, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @PORTD, align 4
  %37 = and i32 %36, -3
  store i32 %37, i32* @PORTD, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @PORTD, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* @PORTD, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @led_set_user(i32 %42)
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
