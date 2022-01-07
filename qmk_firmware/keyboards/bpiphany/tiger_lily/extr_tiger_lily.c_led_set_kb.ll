; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/tiger_lily/extr_tiger_lily.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/tiger_lily/extr_tiger_lily.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DDRB, align 4
  %4 = or i32 %3, 128
  store i32 %4, i32* @DDRB, align 4
  %5 = load i32, i32* @DDRC, align 4
  %6 = or i32 %5, 96
  store i32 %6, i32* @DDRC, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @print_dec(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @PORTC, align 4
  %16 = and i32 %15, -33
  store i32 %16, i32* @PORTC, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @PORTC, align 4
  %19 = or i32 %18, 32
  store i32 %19, i32* @PORTC, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @PORTB, align 4
  %28 = and i32 %27, -129
  store i32 %28, i32* @PORTB, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @PORTB, align 4
  %31 = or i32 %30, 128
  store i32 %31, i32* @PORTB, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @PORTC, align 4
  %40 = and i32 %39, -65
  store i32 %40, i32* @PORTC, align 4
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @PORTC, align 4
  %43 = or i32 %42, 64
  store i32 %43, i32* @PORTC, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @led_set_user(i32 %45)
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
