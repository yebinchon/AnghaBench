; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/ms_sculpt_mobile/keymaps/milestogo/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/ms_sculpt_mobile/keymaps/milestogo/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@KC_RSFT = common dso_local global i32 0, align 4
@keyboard_report = common dso_local global %struct.TYPE_8__* null, align 8
@KC_LGUI = common dso_local global i32 0, align 4
@KC_V = common dso_local global i32 0, align 4
@KC_D = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@SCLN = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8
@BABL_NUM_MACROS = common dso_local global i32 0, align 4
@BABL_START_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %76 [
    i32 0, label %9
    i32 129, label %22
    i32 128, label %58
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @KC_RSFT, align 4
  %17 = call i32 @register_code(i32 %16)
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @KC_RSFT, align 4
  %20 = call i32 @unregister_code(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @keyboard_report, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KC_LGUI, align 4
  %27 = call i32 @MOD_BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 (...) @clear_keyboard_but_mods()
  %38 = load i32, i32* @KC_V, align 4
  %39 = call i32 @register_code(i32 %38)
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @KC_V, align 4
  %42 = call i32 @unregister_code(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %57

44:                                               ; preds = %22
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @KC_D, align 4
  %52 = call i32 @register_code(i32 %51)
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @KC_D, align 4
  %55 = call i32 @unregister_code(i32 %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %43
  br label %78

58:                                               ; preds = %3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* @ESC, align 4
  %66 = call i32 @T(i32 %65)
  %67 = load i32, i32* @LSFT, align 4
  %68 = call i32 @D(i32 %67)
  %69 = load i32, i32* @SCLN, align 4
  %70 = call i32 @T(i32 %69)
  %71 = load i32, i32* @LSFT, align 4
  %72 = call i32 @U(i32 %71)
  %73 = load i32, i32* @END, align 4
  %74 = call i32* @MACRO(i32 %66, i32 %68, i32 %70, i32 %72, i32 %73)
  store i32* %74, i32** %4, align 8
  br label %80

75:                                               ; preds = %58
  br label %78

76:                                               ; preds = %3
  %77 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %77, i32** %4, align 8
  br label %80

78:                                               ; preds = %75, %57, %21
  %79 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %79, i32** %4, align 8
  br label %80

80:                                               ; preds = %78, %76, %64
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @clear_keyboard_but_mods(...) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
