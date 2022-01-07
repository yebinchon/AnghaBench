; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/nzen/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/nzen/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@set_led_off = common dso_local global i32 0, align 4
@set_led_blue = common dso_local global i32 0, align 4
@set_led_red = common dso_local global i32 0, align 4
@set_led_green = common dso_local global i32 0, align 4
@set_led_yellow = common dso_local global i32 0, align 4
@set_led_cyan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %17 [
    i32 130, label %5
    i32 128, label %5
    i32 132, label %7
    i32 131, label %9
    i32 133, label %11
    i32 134, label %13
    i32 129, label %15
  ]

5:                                                ; preds = %0, %0
  %6 = load i32, i32* @set_led_off, align 4
  br label %18

7:                                                ; preds = %0
  %8 = load i32, i32* @set_led_blue, align 4
  br label %18

9:                                                ; preds = %0
  %10 = load i32, i32* @set_led_red, align 4
  br label %18

11:                                               ; preds = %0
  %12 = load i32, i32* @set_led_green, align 4
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @set_led_yellow, align 4
  br label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @set_led_cyan, align 4
  br label %18

17:                                               ; preds = %0
  br label %18

18:                                               ; preds = %17, %15, %13, %11, %9, %7, %5
  ret void
}

declare dso_local i32 @biton32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
