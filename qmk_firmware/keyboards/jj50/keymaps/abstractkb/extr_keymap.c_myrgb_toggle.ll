; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jj50/keymaps/abstractkb/extr_keymap.c_myrgb_toggle.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jj50/keymaps/abstractkb/extr_keymap.c_myrgb_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rgbon = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myrgb_toggle() #0 {
  %1 = load i32, i32* @rgbon, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @rgblight_disable_noeeprom()
  store i32 0, i32* @rgbon, align 4
  br label %11

5:                                                ; preds = %0
  %6 = call i32 (...) @rgblight_enable_noeeprom()
  %7 = load i32, i32* @layer_state, align 4
  %8 = call i32 @layer_state_set_user(i32 %7)
  %9 = call i32 (...) @host_keyboard_leds()
  %10 = call i32 @led_set_user(i32 %9)
  store i32 1, i32* @rgbon, align 4
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

declare dso_local i32 @rgblight_disable_noeeprom(...) #1

declare dso_local i32 @rgblight_enable_noeeprom(...) #1

declare dso_local i32 @layer_state_set_user(i32) #1

declare dso_local i32 @led_set_user(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
