; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@action_function.mods_pressed = internal global i32 0, align 4
@action_function.mod_flag = internal global i32 0, align 4
@tetris_running = common dso_local global i32 0, align 4
@GRAVE_MODS = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4
@tetris_timer = common dso_local global i32 0, align 4
@tetris_keypress = common dso_local global i32 0, align 4
@tetris_key_presses = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %56 [
    i32 0, label %8
    i32 1, label %46
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @tetris_running, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* @tetris_running, align 4
  br label %56

12:                                               ; preds = %8
  %13 = call i32 (...) @get_mods()
  %14 = load i32, i32* @GRAVE_MODS, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* @action_function.mods_pressed, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load i32, i32* @action_function.mods_pressed, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  store i32 1, i32* @action_function.mod_flag, align 4
  %25 = load i32, i32* @KC_GRV, align 4
  %26 = call i32 @add_key(i32 %25)
  %27 = call i32 (...) @send_keyboard_report()
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @KC_ESC, align 4
  %30 = call i32 @add_key(i32 %29)
  %31 = call i32 (...) @send_keyboard_report()
  br label %32

32:                                               ; preds = %28, %24
  br label %45

33:                                               ; preds = %12
  %34 = load i32, i32* @action_function.mod_flag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  store i32 0, i32* @action_function.mod_flag, align 4
  %37 = load i32, i32* @KC_GRV, align 4
  %38 = call i32 @del_key(i32 %37)
  %39 = call i32 (...) @send_keyboard_report()
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @KC_ESC, align 4
  %42 = call i32 @del_key(i32 %41)
  %43 = call i32 (...) @send_keyboard_report()
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  br label %56

46:                                               ; preds = %3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  store i32 1, i32* @tetris_running, align 4
  store i32 0, i32* @tetris_timer, align 4
  store i32 0, i32* @tetris_keypress, align 4
  %53 = load i32, i32* @tetris_key_presses, align 4
  %54 = call i32 @tetris_start(i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %11, %3, %55, %45
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

declare dso_local i32 @tetris_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
