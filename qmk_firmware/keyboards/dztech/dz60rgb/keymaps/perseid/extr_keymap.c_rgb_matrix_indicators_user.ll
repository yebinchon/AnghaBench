; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/perseid/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/perseid/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_suspend_state = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = load i32, i32* @g_suspend_state, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @layer_state, align 4
  %5 = call i32 @biton32(i32 %4)
  switch i32 %5, label %10 [
    i32 128, label %6
    i32 129, label %8
  ]

6:                                                ; preds = %3
  %7 = call i32 @rgb_matrix_layer_helper(i32 0, i32 15, i32 255)
  br label %10

8:                                                ; preds = %3
  %9 = call i32 @rgb_matrix_layer_helper(i32 240, i32 0, i32 255)
  br label %10

10:                                               ; preds = %3, %8, %6
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i32, i32* @layer_state, align 4
  %13 = call i32 @biton32(i32 %12)
  switch i32 %13, label %78 [
    i32 129, label %14
  ]

14:                                               ; preds = %11
  %15 = call i32 @rgb_matrix_set_color(i32 0, i32 0, i32 255, i32 0)
  %16 = call i32 @rgb_matrix_set_color(i32 1, i32 0, i32 0, i32 0)
  %17 = call i32 @rgb_matrix_set_color(i32 1, i32 0, i32 255, i32 0)
  %18 = call i32 @rgb_matrix_set_color(i32 2, i32 0, i32 255, i32 0)
  %19 = call i32 @rgb_matrix_set_color(i32 3, i32 0, i32 255, i32 0)
  %20 = call i32 @rgb_matrix_set_color(i32 4, i32 0, i32 255, i32 0)
  %21 = call i32 @rgb_matrix_set_color(i32 5, i32 0, i32 0, i32 0)
  %22 = call i32 @rgb_matrix_set_color(i32 6, i32 0, i32 0, i32 0)
  %23 = call i32 @rgb_matrix_set_color(i32 7, i32 0, i32 0, i32 0)
  %24 = call i32 @rgb_matrix_set_color(i32 8, i32 0, i32 0, i32 0)
  %25 = call i32 @rgb_matrix_set_color(i32 9, i32 255, i32 255, i32 0)
  %26 = call i32 @rgb_matrix_set_color(i32 10, i32 255, i32 255, i32 0)
  %27 = call i32 @rgb_matrix_set_color(i32 11, i32 255, i32 255, i32 0)
  %28 = call i32 @rgb_matrix_set_color(i32 12, i32 255, i32 255, i32 0)
  %29 = call i32 @rgb_matrix_set_color(i32 14, i32 0, i32 0, i32 255)
  %30 = call i32 @rgb_matrix_set_color(i32 15, i32 0, i32 0, i32 0)
  %31 = call i32 @rgb_matrix_set_color(i32 16, i32 0, i32 0, i32 0)
  %32 = call i32 @rgb_matrix_set_color(i32 17, i32 0, i32 255, i32 0)
  %33 = call i32 @rgb_matrix_set_color(i32 18, i32 0, i32 255, i32 0)
  %34 = call i32 @rgb_matrix_set_color(i32 19, i32 0, i32 255, i32 0)
  %35 = call i32 @rgb_matrix_set_color(i32 20, i32 0, i32 0, i32 0)
  %36 = call i32 @rgb_matrix_set_color(i32 21, i32 0, i32 0, i32 0)
  %37 = call i32 @rgb_matrix_set_color(i32 22, i32 0, i32 0, i32 0)
  %38 = call i32 @rgb_matrix_set_color(i32 23, i32 0, i32 0, i32 0)
  %39 = call i32 @rgb_matrix_set_color(i32 24, i32 255, i32 255, i32 0)
  %40 = call i32 @rgb_matrix_set_color(i32 25, i32 255, i32 255, i32 0)
  %41 = call i32 @rgb_matrix_set_color(i32 26, i32 255, i32 255, i32 0)
  %42 = call i32 @rgb_matrix_set_color(i32 27, i32 0, i32 0, i32 0)
  %43 = call i32 @rgb_matrix_set_color(i32 28, i32 0, i32 255, i32 0)
  %44 = call i32 @rgb_matrix_set_color(i32 29, i32 0, i32 0, i32 0)
  %45 = call i32 @rgb_matrix_set_color(i32 30, i32 0, i32 255, i32 0)
  %46 = call i32 @rgb_matrix_set_color(i32 31, i32 0, i32 255, i32 0)
  %47 = call i32 @rgb_matrix_set_color(i32 32, i32 0, i32 255, i32 0)
  %48 = call i32 @rgb_matrix_set_color(i32 33, i32 0, i32 0, i32 0)
  %49 = call i32 @rgb_matrix_set_color(i32 34, i32 0, i32 0, i32 0)
  %50 = call i32 @rgb_matrix_set_color(i32 35, i32 0, i32 0, i32 0)
  %51 = call i32 @rgb_matrix_set_color(i32 36, i32 0, i32 0, i32 0)
  %52 = call i32 @rgb_matrix_set_color(i32 37, i32 255, i32 255, i32 0)
  %53 = call i32 @rgb_matrix_set_color(i32 38, i32 255, i32 255, i32 0)
  %54 = call i32 @rgb_matrix_set_color(i32 39, i32 255, i32 255, i32 0)
  %55 = call i32 @rgb_matrix_set_color(i32 40, i32 0, i32 0, i32 0)
  %56 = call i32 @rgb_matrix_set_color(i32 41, i32 0, i32 0, i32 0)
  %57 = call i32 @rgb_matrix_set_color(i32 42, i32 0, i32 0, i32 0)
  %58 = call i32 @rgb_matrix_set_color(i32 43, i32 0, i32 255, i32 0)
  %59 = call i32 @rgb_matrix_set_color(i32 44, i32 0, i32 255, i32 0)
  %60 = call i32 @rgb_matrix_set_color(i32 45, i32 0, i32 255, i32 0)
  %61 = call i32 @rgb_matrix_set_color(i32 46, i32 0, i32 0, i32 0)
  %62 = call i32 @rgb_matrix_set_color(i32 47, i32 0, i32 0, i32 0)
  %63 = call i32 @rgb_matrix_set_color(i32 48, i32 0, i32 0, i32 0)
  %64 = call i32 @rgb_matrix_set_color(i32 49, i32 0, i32 0, i32 0)
  %65 = call i32 @rgb_matrix_set_color(i32 50, i32 255, i32 255, i32 0)
  %66 = call i32 @rgb_matrix_set_color(i32 51, i32 255, i32 255, i32 0)
  %67 = call i32 @rgb_matrix_set_color(i32 52, i32 255, i32 255, i32 0)
  %68 = call i32 @rgb_matrix_set_color(i32 53, i32 0, i32 0, i32 0)
  %69 = call i32 @rgb_matrix_set_color(i32 54, i32 0, i32 0, i32 0)
  %70 = call i32 @rgb_matrix_set_color(i32 55, i32 0, i32 0, i32 0)
  %71 = call i32 @rgb_matrix_set_color(i32 56, i32 0, i32 0, i32 0)
  %72 = call i32 @rgb_matrix_set_color(i32 57, i32 0, i32 255, i32 0)
  %73 = call i32 @rgb_matrix_set_color(i32 58, i32 0, i32 255, i32 0)
  %74 = call i32 @rgb_matrix_set_color(i32 59, i32 255, i32 0, i32 0)
  %75 = call i32 @rgb_matrix_set_color(i32 60, i32 255, i32 255, i32 0)
  %76 = call i32 @rgb_matrix_set_color(i32 61, i32 255, i32 255, i32 0)
  %77 = call i32 @rgb_matrix_set_color(i32 62, i32 0, i32 0, i32 0)
  br label %78

78:                                               ; preds = %11, %14
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgb_matrix_layer_helper(i32, i32, i32) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
