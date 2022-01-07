; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@current_layer_global = common dso_local global i64 0, align 8
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@MOUSE1 = common dso_local global i64 0, align 8
@MOUSE2 = common dso_local global i64 0, align 8
@PROG1 = common dso_local global i64 0, align 8
@PROG2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i64 @biton32(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @current_layer_global, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  store i64 %8, i64* @current_layer_global, align 8
  %9 = call i32 (...) @host_keyboard_leds()
  %10 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = call i32 @led_set_kb(i32 %13)
  %15 = call i32 (...) @host_keyboard_leds()
  %16 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = call i32 @led_set_kb(i32 %19)
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @MOUSE1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @MOUSE2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %7
  %29 = call i32 (...) @host_keyboard_leds()
  %30 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = call i32 @led_set_kb(i32 %32)
  br label %49

34:                                               ; preds = %24
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @PROG1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @PROG2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38, %34
  %43 = call i32 (...) @host_keyboard_leds()
  %44 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = call i32 @led_set_kb(i32 %46)
  br label %48

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %28
  br label %50

50:                                               ; preds = %49, %0
  ret void
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @led_set_kb(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
