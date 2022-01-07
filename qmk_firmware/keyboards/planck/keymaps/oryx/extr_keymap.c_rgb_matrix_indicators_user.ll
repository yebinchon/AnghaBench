; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oryx/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/oryx/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_suspend_state = common dso_local global i64 0, align 8
@keyboard_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@layer_state = common dso_local global i32 0, align 4
@LED_FLAG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = load i64, i64* @g_suspend_state, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keyboard_config, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %25

7:                                                ; preds = %3
  %8 = load i32, i32* @layer_state, align 4
  %9 = call i32 @biton32(i32 %8)
  switch i32 %9, label %18 [
    i32 0, label %10
    i32 3, label %12
    i32 4, label %14
    i32 6, label %16
  ]

10:                                               ; preds = %7
  %11 = call i32 @set_layer_color(i32 0)
  br label %25

12:                                               ; preds = %7
  %13 = call i32 @set_layer_color(i32 1)
  br label %25

14:                                               ; preds = %7
  %15 = call i32 @set_layer_color(i32 2)
  br label %25

16:                                               ; preds = %7
  %17 = call i32 @set_layer_color(i32 3)
  br label %25

18:                                               ; preds = %7
  %19 = call i32 (...) @rgb_matrix_get_flags()
  %20 = load i32, i32* @LED_FLAG_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %6, %24, %16, %14, %12, %10
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @set_layer_color(i32) #1

declare dso_local i32 @rgb_matrix_get_flags(...) #1

declare dso_local i32 @rgb_matrix_set_color_all(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
