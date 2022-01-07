; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xbows/woody/extr_woody.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xbows/woody/extr_woody.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = call i32 (...) @host_keyboard_leds()
  %2 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %3 = call i64 @IS_LED_ON(i32 %1, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @rgb_matrix_set_color(i32 30, i32 255, i32 0, i32 0)
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

declare dso_local i64 @IS_LED_ON(i32, i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
