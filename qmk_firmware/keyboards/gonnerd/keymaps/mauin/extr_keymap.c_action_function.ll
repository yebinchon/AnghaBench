; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gonnerd/keymaps/mauin/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gonnerd/keymaps/mauin/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@action_function.esc_grv_mask = internal global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %43 [
    i32 128, label %8
  ]

8:                                                ; preds = %3
  %9 = call i32 (...) @get_mods()
  %10 = load i32, i32* @KC_LGUI, align 4
  %11 = call i32 @MOD_BIT(i32 %10)
  %12 = and i32 %9, %11
  store i32 %12, i32* @action_function.esc_grv_mask, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = load i32, i32* @action_function.esc_grv_mask, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @KC_GRV, align 4
  %23 = call i32 @add_key(i32 %22)
  %24 = call i32 (...) @send_keyboard_report()
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @KC_ESC, align 4
  %27 = call i32 @add_key(i32 %26)
  %28 = call i32 (...) @send_keyboard_report()
  br label %29

29:                                               ; preds = %25, %21
  br label %42

30:                                               ; preds = %8
  %31 = load i32, i32* @action_function.esc_grv_mask, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @KC_GRV, align 4
  %35 = call i32 @del_key(i32 %34)
  %36 = call i32 (...) @send_keyboard_report()
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @KC_ESC, align 4
  %39 = call i32 @del_key(i32 %38)
  %40 = call i32 (...) @send_keyboard_report()
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %3, %42
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
