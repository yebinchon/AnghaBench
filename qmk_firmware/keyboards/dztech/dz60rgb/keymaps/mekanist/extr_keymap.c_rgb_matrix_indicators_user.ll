; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/mekanist/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/mekanist/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@g_suspend_state = common dso_local global i32 0, align 4
@rgb_matrix_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@layer_state = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @host_keyboard_leds()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @g_suspend_state, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgb_matrix_config, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* @layer_state, align 4
  %10 = call i32 @biton32(i32 %9)
  switch i32 %10, label %17 [
    i32 131, label %11
    i32 130, label %13
    i32 128, label %15
  ]

11:                                               ; preds = %8
  %12 = call i32 @rgb_matrix_layer_helper(i32 255, i32 0, i32 0)
  br label %17

13:                                               ; preds = %8
  %14 = call i32 @rgb_matrix_layer_helper(i32 0, i32 255, i32 0)
  br label %17

15:                                               ; preds = %8
  %16 = call i32 @rgb_matrix_layer_helper(i32 255, i32 255, i32 0)
  br label %17

17:                                               ; preds = %8, %15, %13, %11
  br label %18

18:                                               ; preds = %17, %5, %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @rgb_matrix_set_color(i32 40, i32 255, i32 255, i32 255)
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* @layer_state, align 4
  %28 = call i32 @biton32(i32 %27)
  switch i32 %28, label %103 [
    i32 129, label %29
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @rgb_matrix_set_color(i32 13, i32 255, i32 0, i32 0)
  br label %39

37:                                               ; preds = %29
  %38 = call i32 @rgb_matrix_set_color(i32 13, i32 0, i32 0, i32 0)
  br label %39

39:                                               ; preds = %37, %35
  %40 = call i32 @rgb_matrix_set_color(i32 0, i32 0, i32 255, i32 0)
  %41 = call i32 @rgb_matrix_set_color(i32 1, i32 0, i32 0, i32 0)
  %42 = call i32 @rgb_matrix_set_color(i32 1, i32 0, i32 255, i32 0)
  %43 = call i32 @rgb_matrix_set_color(i32 2, i32 0, i32 255, i32 0)
  %44 = call i32 @rgb_matrix_set_color(i32 3, i32 0, i32 255, i32 0)
  %45 = call i32 @rgb_matrix_set_color(i32 4, i32 0, i32 255, i32 0)
  %46 = call i32 @rgb_matrix_set_color(i32 5, i32 0, i32 0, i32 0)
  %47 = call i32 @rgb_matrix_set_color(i32 6, i32 0, i32 0, i32 0)
  %48 = call i32 @rgb_matrix_set_color(i32 7, i32 0, i32 0, i32 0)
  %49 = call i32 @rgb_matrix_set_color(i32 8, i32 0, i32 0, i32 0)
  %50 = call i32 @rgb_matrix_set_color(i32 9, i32 255, i32 255, i32 0)
  %51 = call i32 @rgb_matrix_set_color(i32 10, i32 255, i32 255, i32 0)
  %52 = call i32 @rgb_matrix_set_color(i32 11, i32 255, i32 255, i32 0)
  %53 = call i32 @rgb_matrix_set_color(i32 12, i32 255, i32 255, i32 0)
  %54 = call i32 @rgb_matrix_set_color(i32 14, i32 0, i32 0, i32 255)
  %55 = call i32 @rgb_matrix_set_color(i32 15, i32 0, i32 0, i32 0)
  %56 = call i32 @rgb_matrix_set_color(i32 16, i32 0, i32 0, i32 0)
  %57 = call i32 @rgb_matrix_set_color(i32 17, i32 0, i32 255, i32 0)
  %58 = call i32 @rgb_matrix_set_color(i32 18, i32 0, i32 255, i32 0)
  %59 = call i32 @rgb_matrix_set_color(i32 19, i32 0, i32 255, i32 0)
  %60 = call i32 @rgb_matrix_set_color(i32 20, i32 0, i32 0, i32 0)
  %61 = call i32 @rgb_matrix_set_color(i32 21, i32 0, i32 0, i32 0)
  %62 = call i32 @rgb_matrix_set_color(i32 22, i32 0, i32 0, i32 0)
  %63 = call i32 @rgb_matrix_set_color(i32 23, i32 0, i32 0, i32 0)
  %64 = call i32 @rgb_matrix_set_color(i32 24, i32 255, i32 255, i32 0)
  %65 = call i32 @rgb_matrix_set_color(i32 25, i32 255, i32 255, i32 0)
  %66 = call i32 @rgb_matrix_set_color(i32 26, i32 255, i32 255, i32 0)
  %67 = call i32 @rgb_matrix_set_color(i32 27, i32 0, i32 0, i32 0)
  %68 = call i32 @rgb_matrix_set_color(i32 28, i32 0, i32 255, i32 0)
  %69 = call i32 @rgb_matrix_set_color(i32 29, i32 0, i32 0, i32 0)
  %70 = call i32 @rgb_matrix_set_color(i32 30, i32 0, i32 255, i32 0)
  %71 = call i32 @rgb_matrix_set_color(i32 31, i32 0, i32 255, i32 0)
  %72 = call i32 @rgb_matrix_set_color(i32 32, i32 0, i32 255, i32 0)
  %73 = call i32 @rgb_matrix_set_color(i32 33, i32 0, i32 0, i32 0)
  %74 = call i32 @rgb_matrix_set_color(i32 34, i32 0, i32 0, i32 0)
  %75 = call i32 @rgb_matrix_set_color(i32 35, i32 0, i32 0, i32 0)
  %76 = call i32 @rgb_matrix_set_color(i32 36, i32 0, i32 0, i32 0)
  %77 = call i32 @rgb_matrix_set_color(i32 37, i32 255, i32 255, i32 0)
  %78 = call i32 @rgb_matrix_set_color(i32 38, i32 255, i32 255, i32 0)
  %79 = call i32 @rgb_matrix_set_color(i32 39, i32 255, i32 255, i32 0)
  %80 = call i32 @rgb_matrix_set_color(i32 40, i32 0, i32 0, i32 0)
  %81 = call i32 @rgb_matrix_set_color(i32 41, i32 0, i32 0, i32 0)
  %82 = call i32 @rgb_matrix_set_color(i32 42, i32 0, i32 0, i32 0)
  %83 = call i32 @rgb_matrix_set_color(i32 43, i32 0, i32 255, i32 0)
  %84 = call i32 @rgb_matrix_set_color(i32 44, i32 0, i32 255, i32 0)
  %85 = call i32 @rgb_matrix_set_color(i32 45, i32 0, i32 255, i32 0)
  %86 = call i32 @rgb_matrix_set_color(i32 46, i32 0, i32 0, i32 0)
  %87 = call i32 @rgb_matrix_set_color(i32 47, i32 0, i32 0, i32 0)
  %88 = call i32 @rgb_matrix_set_color(i32 48, i32 0, i32 0, i32 0)
  %89 = call i32 @rgb_matrix_set_color(i32 49, i32 0, i32 0, i32 0)
  %90 = call i32 @rgb_matrix_set_color(i32 50, i32 255, i32 255, i32 0)
  %91 = call i32 @rgb_matrix_set_color(i32 51, i32 255, i32 255, i32 0)
  %92 = call i32 @rgb_matrix_set_color(i32 52, i32 255, i32 255, i32 0)
  %93 = call i32 @rgb_matrix_set_color(i32 53, i32 0, i32 0, i32 0)
  %94 = call i32 @rgb_matrix_set_color(i32 54, i32 0, i32 0, i32 0)
  %95 = call i32 @rgb_matrix_set_color(i32 55, i32 0, i32 0, i32 0)
  %96 = call i32 @rgb_matrix_set_color(i32 56, i32 0, i32 0, i32 0)
  %97 = call i32 @rgb_matrix_set_color(i32 57, i32 0, i32 255, i32 0)
  %98 = call i32 @rgb_matrix_set_color(i32 58, i32 0, i32 255, i32 0)
  %99 = call i32 @rgb_matrix_set_color(i32 59, i32 255, i32 0, i32 0)
  %100 = call i32 @rgb_matrix_set_color(i32 60, i32 255, i32 255, i32 0)
  %101 = call i32 @rgb_matrix_set_color(i32 61, i32 255, i32 255, i32 0)
  %102 = call i32 @rgb_matrix_set_color(i32 62, i32 0, i32 0, i32 0)
  br label %103

103:                                              ; preds = %26, %39
  ret void
}

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgb_matrix_layer_helper(i32, i32, i32) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
