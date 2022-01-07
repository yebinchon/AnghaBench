; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/kitten_paw/keymaps/ickerwx/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@KC_LCTL = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4
@KC_8 = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_7 = common dso_local global i32 0, align 4
@KC_0 = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_BTN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %70 [
    i32 132, label %8
    i32 129, label %14
    i32 133, label %20
    i32 130, label %26
    i32 131, label %32
    i32 128, label %38
    i32 134, label %44
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i32, i32* @KC_LCTL, align 4
  %11 = load i32, i32* @KC_RALT, align 4
  %12 = load i32, i32* @KC_8, align 4
  %13 = call i32 @tap_helper(%struct.TYPE_6__* %9, i32 %10, i32 %11, i32 %12)
  br label %70

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @KC_RCTL, align 4
  %17 = load i32, i32* @KC_RALT, align 4
  %18 = load i32, i32* @KC_9, align 4
  %19 = call i32 @tap_helper(%struct.TYPE_6__* %15, i32 %16, i32 %17, i32 %18)
  br label %70

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i32, i32* @KC_LALT, align 4
  %23 = load i32, i32* @KC_RALT, align 4
  %24 = load i32, i32* @KC_7, align 4
  %25 = call i32 @tap_helper(%struct.TYPE_6__* %21, i32 %22, i32 %23, i32 %24)
  br label %70

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i32, i32* @KC_RALT, align 4
  %29 = load i32, i32* @KC_RALT, align 4
  %30 = load i32, i32* @KC_0, align 4
  %31 = call i32 @tap_helper(%struct.TYPE_6__* %27, i32 %28, i32 %29, i32 %30)
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* @KC_LSFT, align 4
  %35 = load i32, i32* @KC_LSFT, align 4
  %36 = load i32, i32* @KC_8, align 4
  %37 = call i32 @tap_helper(%struct.TYPE_6__* %33, i32 %34, i32 %35, i32 %36)
  br label %70

38:                                               ; preds = %3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* @KC_RSFT, align 4
  %41 = load i32, i32* @KC_LSFT, align 4
  %42 = load i32, i32* @KC_9, align 4
  %43 = call i32 @tap_helper(%struct.TYPE_6__* %39, i32 %40, i32 %41, i32 %42)
  br label %70

44:                                               ; preds = %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = call i32 (...) @mousekey_clear()
  %52 = load i32, i32* @KC_LCTL, align 4
  %53 = call i32 @MOD_BIT(i32 %52)
  %54 = call i32 @register_mods(i32 %53)
  %55 = call i32 (...) @send_keyboard_report()
  %56 = call i32 @wait_ms(i32 5)
  %57 = load i32, i32* @KC_BTN1, align 4
  %58 = call i32 @mousekey_on(i32 %57)
  %59 = call i32 (...) @mousekey_send()
  %60 = call i32 @wait_ms(i32 10)
  %61 = load i32, i32* @KC_BTN1, align 4
  %62 = call i32 @mousekey_off(i32 %61)
  %63 = call i32 (...) @mousekey_send()
  %64 = call i32 @wait_ms(i32 5)
  %65 = load i32, i32* @KC_LCTL, align 4
  %66 = call i32 @MOD_BIT(i32 %65)
  %67 = call i32 @unregister_mods(i32 %66)
  %68 = call i32 (...) @send_keyboard_report()
  br label %69

69:                                               ; preds = %50, %44
  br label %70

70:                                               ; preds = %3, %69, %38, %32, %26, %20, %14, %8
  ret void
}

declare dso_local i32 @tap_helper(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @mousekey_clear(...) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @mousekey_on(i32) #1

declare dso_local i32 @mousekey_send(...) #1

declare dso_local i32 @mousekey_off(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
