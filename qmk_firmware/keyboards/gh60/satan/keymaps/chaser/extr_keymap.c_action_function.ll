; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/chaser/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/satan/keymaps/chaser/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@action_function.shift_esc_shift_mask = internal global i32 0, align 4
@MODS_CTRL_MASK = common dso_local global i32 0, align 4
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
  switch i32 %7, label %42 [
    i32 128, label %8
  ]

8:                                                ; preds = %3
  %9 = call i32 (...) @get_mods()
  %10 = load i32, i32* @MODS_CTRL_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* @action_function.shift_esc_shift_mask, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %8
  %18 = load i32, i32* @action_function.shift_esc_shift_mask, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @KC_GRV, align 4
  %22 = call i32 @add_key(i32 %21)
  %23 = call i32 (...) @send_keyboard_report()
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @KC_ESC, align 4
  %26 = call i32 @add_key(i32 %25)
  %27 = call i32 (...) @send_keyboard_report()
  br label %28

28:                                               ; preds = %24, %20
  br label %41

29:                                               ; preds = %8
  %30 = load i32, i32* @action_function.shift_esc_shift_mask, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @KC_GRV, align 4
  %34 = call i32 @del_key(i32 %33)
  %35 = call i32 (...) @send_keyboard_report()
  br label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @KC_ESC, align 4
  %38 = call i32 @del_key(i32 %37)
  %39 = call i32 (...) @send_keyboard_report()
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %3, %41
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
