; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/gipsy-king/extr_keymap.c_keyboard_post_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/gipsy-king/extr_keymap.c_keyboard_post_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4
@cursor_pos = common dso_local global i64 0, align 8
@last_timer = common dso_local global i32 0, align 4
@reset_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyboard_post_init_user() #0 {
  %1 = load i32, i32* @RGBLIGHT_MODE_STATIC_LIGHT, align 4
  %2 = call i32 @rgblight_mode(i32 %1)
  store i64 0, i64* @cursor_pos, align 8
  %3 = call i32 (...) @reset_chars()
  %4 = call i32 (...) @timer_read()
  store i32 %4, i32* @last_timer, align 4
  store i32 %4, i32* @reset_timer, align 4
  ret void
}

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @reset_chars(...) #1

declare dso_local i32 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
