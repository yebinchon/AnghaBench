; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/mousepad/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/mousepad/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_alt_tab_active = common dso_local global i32 0, align 4
@alt_tab_timer = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i32, i32* @is_alt_tab_active, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32, i32* @alt_tab_timer, align 4
  %5 = call i32 @timer_elapsed(i32 %4)
  %6 = icmp sgt i32 %5, 1000
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, i32* @KC_LALT, align 4
  %9 = call i32 @unregister_code(i32 %8)
  store i32 0, i32* @is_alt_tab_active, align 4
  br label %10

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %10, %0
  ret void
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
