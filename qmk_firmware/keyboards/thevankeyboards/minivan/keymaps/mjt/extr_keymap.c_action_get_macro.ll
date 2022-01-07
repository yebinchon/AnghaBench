; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/thevankeyboards/minivan/keymaps/mjt/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/thevankeyboards/minivan/keymaps/mjt/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_RSFT = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_POWER = common dso_local global i32 0, align 4
@_NUMSYM = common dso_local global i32 0, align 4
@_FKEYS = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8
@tone_adjust = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %89 [
    i32 5, label %8
    i32 6, label %28
    i32 7, label %44
    i32 8, label %60
    i32 9, label %73
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load i32, i32* @KC_RSFT, align 4
  %16 = call i32 @register_code(i32 %15)
  %17 = load i32, i32* @KC_RCTL, align 4
  %18 = call i32 @register_code(i32 %17)
  %19 = load i32, i32* @KC_POWER, align 4
  %20 = call i32 @register_code(i32 %19)
  %21 = load i32, i32* @KC_POWER, align 4
  %22 = call i32 @unregister_code(i32 %21)
  %23 = load i32, i32* @KC_RCTL, align 4
  %24 = call i32 @unregister_code(i32 %23)
  %25 = load i32, i32* @KC_RSFT, align 4
  %26 = call i32 @unregister_code(i32 %25)
  br label %27

27:                                               ; preds = %14, %8
  br label %89

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* @_NUMSYM, align 4
  %36 = call i32 @layer_off(i32 %35)
  %37 = load i32, i32* @_FKEYS, align 4
  %38 = call i32 @layer_off(i32 %37)
  %39 = load i32, i32* @_ADJUST, align 4
  %40 = call i32 @layer_off(i32 %39)
  %41 = load i32, i32* @_PLOVER, align 4
  %42 = call i32 @layer_on(i32 %41)
  br label %43

43:                                               ; preds = %34, %28
  br label %89

44:                                               ; preds = %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @_NUMSYM, align 4
  %52 = call i32 @layer_off(i32 %51)
  %53 = load i32, i32* @_FKEYS, align 4
  %54 = call i32 @layer_off(i32 %53)
  %55 = load i32, i32* @_PLOVER, align 4
  %56 = call i32 @layer_off(i32 %55)
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @layer_off(i32 %57)
  br label %59

59:                                               ; preds = %50, %44
  br label %89

60:                                               ; preds = %3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @KC_RSFT, align 4
  %68 = call i32 @register_code(i32 %67)
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @KC_RSFT, align 4
  %71 = call i32 @unregister_code(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %89

73:                                               ; preds = %3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32, i32* @_NUMSYM, align 4
  %81 = call i32 @layer_off(i32 %80)
  %82 = load i32, i32* @_FKEYS, align 4
  %83 = call i32 @layer_off(i32 %82)
  %84 = load i32, i32* @_PLOVER, align 4
  %85 = call i32 @layer_off(i32 %84)
  %86 = load i32, i32* @_ADJUST, align 4
  %87 = call i32 @layer_on(i32 %86)
  br label %88

88:                                               ; preds = %79, %73
  br label %89

89:                                               ; preds = %88, %3, %72, %59, %43, %27
  %90 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %90
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
