; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_unregister_delay_code.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_unregister_delay_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delay_registered_code = common dso_local global i32 0, align 4
@QK_LSFT = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@QK_LCTL = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@QK_LALT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@QK_LGUI = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_delay_code() #0 {
  %1 = load i32, i32* @delay_registered_code, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %38

3:                                                ; preds = %0
  %4 = load i32, i32* @delay_registered_code, align 4
  %5 = call i32 @unregister_code(i32 %4)
  %6 = load i32, i32* @delay_registered_code, align 4
  %7 = load i32, i32* @QK_LSFT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @KC_LSFT, align 4
  %12 = call i32 @unregister_code(i32 %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @delay_registered_code, align 4
  %15 = load i32, i32* @QK_LCTL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @KC_LCTL, align 4
  %20 = call i32 @unregister_code(i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @delay_registered_code, align 4
  %23 = load i32, i32* @QK_LALT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @KC_LALT, align 4
  %28 = call i32 @unregister_code(i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @delay_registered_code, align 4
  %31 = load i32, i32* @QK_LGUI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @KC_LGUI, align 4
  %36 = call i32 @unregister_code(i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  store i32 0, i32* @delay_registered_code, align 4
  br label %38

38:                                               ; preds = %37, %0
  ret void
}

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
