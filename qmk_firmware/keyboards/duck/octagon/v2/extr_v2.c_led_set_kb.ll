; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_led_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/octagon/v2/extr_v2.c_led_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backlight_os_state = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@backlight_layer_state = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @backlight_os_state, align 4
  %6 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds i32, i32* %4, i64 1
  %10 = load i32, i32* @backlight_os_state, align 4
  %11 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds i32, i32* %9, i64 1
  %15 = load i32, i32* @backlight_os_state, align 4
  %16 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds i32, i32* %14, i64 1
  %20 = load i32, i32* @backlight_layer_state, align 4
  %21 = and i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  %23 = load i32, i32* @backlight_layer_state, align 4
  %24 = and i32 %23, 4
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds i32, i32* %22, i64 1
  %26 = load i32, i32* @backlight_layer_state, align 4
  %27 = and i32 %26, 8
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds i32, i32* %25, i64 1
  %29 = load i32, i32* @backlight_layer_state, align 4
  %30 = and i32 %29, 16
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %32 = call i32 @indicator_leds_set(i32* %31)
  %33 = load i32, i32* @backlight_os_state, align 4
  %34 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @PORTB, align 4
  %40 = and i32 %39, -2
  store i32 %40, i32* @PORTB, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @PORTB, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* @PORTB, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  %46 = load i32, i32* @backlight_os_state, align 4
  %47 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @PORTB, align 4
  %53 = and i32 %52, -17
  store i32 %53, i32* @PORTB, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @PORTB, align 4
  %56 = or i32 %55, 16
  store i32 %56, i32* @PORTB, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  ret void
}

declare dso_local i32 @indicator_leds_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
