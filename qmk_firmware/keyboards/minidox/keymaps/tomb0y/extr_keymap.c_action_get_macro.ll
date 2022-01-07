; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/minidox/keymaps/tomb0y/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/minidox/keymaps/tomb0y/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@COMM = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@ENT = common dso_local global i32 0, align 4
@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_COMM = common dso_local global i32 0, align 4
@_DK = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@ONESHOT_PRESSED = common dso_local global i32 0, align 4
@KC_3 = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %90 [
    i32 128, label %9
    i32 129, label %23
    i32 131, label %37
    i32 130, label %75
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @COMM, align 4
  %17 = call i32 @T(i32 %16)
  %18 = load i32, i32* @SPC, align 4
  %19 = call i32 @T(i32 %18)
  %20 = load i32, i32* @END, align 4
  %21 = call i32* @MACRO(i32 %17, i32 %19, i32 %20)
  store i32* %21, i32** %4, align 8
  br label %92

22:                                               ; preds = %9
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @COMM, align 4
  %31 = call i32 @T(i32 %30)
  %32 = load i32, i32* @ENT, align 4
  %33 = call i32 @T(i32 %32)
  %34 = load i32, i32* @END, align 4
  %35 = call i32* @MACRO(i32 %31, i32 %33, i32 %34)
  store i32* %35, i32** %4, align 8
  br label %92

36:                                               ; preds = %23
  br label %90

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KC_LSFT, align 4
  %48 = call i32 @MOD_BIT(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @KC_RSFT, align 4
  %56 = call i32 @MOD_BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %43
  %60 = load i32, i32* @KC_COMM, align 4
  %61 = call i32 @register_code(i32 %60)
  br label %68

62:                                               ; preds = %51
  %63 = load i32, i32* @_DK, align 4
  %64 = call i32 @layer_on(i32 %63)
  %65 = load i32, i32* @_DK, align 4
  %66 = load i32, i32* @ONESHOT_START, align 4
  %67 = call i32 @set_oneshot_layer(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %74

69:                                               ; preds = %37
  %70 = load i32, i32* @ONESHOT_PRESSED, align 4
  %71 = call i32 @clear_oneshot_layer_state(i32 %70)
  %72 = load i32, i32* @KC_COMM, align 4
  %73 = call i32 @unregister_code(i32 %72)
  br label %74

74:                                               ; preds = %69, %68
  br label %90

75:                                               ; preds = %3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @KC_3, align 4
  %83 = call i32 @register_code(i32 %82)
  br label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @ONESHOT_PRESSED, align 4
  %86 = call i32 @clear_oneshot_layer_state(i32 %85)
  %87 = load i32, i32* @KC_3, align 4
  %88 = call i32 @unregister_code(i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  br label %90

90:                                               ; preds = %3, %89, %74, %36, %22
  %91 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %90, %29, %15
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local i32* @MACRO(i32, i32, i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
