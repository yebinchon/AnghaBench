; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev4/extr_rev4.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev4/extr_rev4.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @GPIOB, align 4
  %10 = call i32 @palSetPad(i32 %9, i32 13)
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIOB, align 4
  %13 = call i32 @palClearPad(i32 %12, i32 13)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @GPIOA, align 4
  %22 = call i32 @palSetPad(i32 %21, i32 0)
  %23 = load i32, i32* @GPIOB, align 4
  %24 = call i32 @palSetPad(i32 %23, i32 14)
  br label %30

25:                                               ; preds = %14
  %26 = load i32, i32* @GPIOA, align 4
  %27 = call i32 @palClearPad(i32 %26, i32 0)
  %28 = load i32, i32* @GPIOB, align 4
  %29 = call i32 @palClearPad(i32 %28, i32 14)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @GPIOA, align 4
  %38 = call i32 @palSetPad(i32 %37, i32 8)
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @GPIOA, align 4
  %41 = call i32 @palClearPad(i32 %40, i32 8)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @palSetPad(i32, i32) #1

declare dso_local i32 @palClearPad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
