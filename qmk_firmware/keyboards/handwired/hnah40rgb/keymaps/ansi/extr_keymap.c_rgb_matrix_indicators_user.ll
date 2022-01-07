; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/hnah40rgb/keymaps/ansi/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/hnah40rgb/keymaps/ansi/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@_L1 = common dso_local global i32 0, align 4
@_L2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %2 = call i64 @IS_HOST_LED_ON(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @rgb_matrix_set_color(i32 22, i32 255, i32 255, i32 255)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @_L1, align 4
  %8 = call i64 @IS_LAYER_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @rgb_matrix_set_color(i32 46, i32 255, i32 255, i32 255)
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @_L2, align 4
  %14 = call i64 @IS_LAYER_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @rgb_matrix_set_color(i32 45, i32 255, i32 255, i32 255)
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

declare dso_local i64 @IS_HOST_LED_ON(i32) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
