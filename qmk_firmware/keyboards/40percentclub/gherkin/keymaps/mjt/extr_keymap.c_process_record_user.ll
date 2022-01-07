; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/gherkin/keymaps/mjt/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/gherkin/keymaps/mjt/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_NUMBERS = common dso_local global i64 0, align 8
@_SYMBOLS = common dso_local global i64 0, align 8
@_ADJUST = common dso_local global i64 0, align 8
@_PLOVER = common dso_local global i64 0, align 8
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_POWER = common dso_local global i32 0, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %107 [
    i32 129, label %7
    i32 131, label %18
    i32 128, label %29
    i32 130, label %40
    i32 133, label %64
    i32 132, label %74
    i32 134, label %94
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistant_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @_NUMBERS, align 8
  %26 = shl i64 1, %25
  %27 = call i32 @persistant_default_layer_set(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %108

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @_SYMBOLS, align 8
  %37 = shl i64 1, %36
  %38 = call i32 @persistant_default_layer_set(i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %108

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load i64, i64* @_NUMBERS, align 8
  %48 = call i32 @layer_off(i64 %47)
  %49 = load i64, i64* @_SYMBOLS, align 8
  %50 = call i32 @layer_off(i64 %49)
  %51 = load i64, i64* @_ADJUST, align 8
  %52 = call i32 @layer_off(i64 %51)
  %53 = load i64, i64* @_PLOVER, align 8
  %54 = call i32 @layer_on(i64 %53)
  %55 = call i32 (...) @eeconfig_is_enabled()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = call i32 (...) @eeconfig_init()
  br label %59

59:                                               ; preds = %57, %46
  %60 = call i32 (...) @eeconfig_read_keymap()
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %62 = call i32 @eeconfig_update_keymap(i32 %61)
  br label %63

63:                                               ; preds = %59, %40
  store i32 0, i32* %3, align 4
  br label %108

64:                                               ; preds = %2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i64, i64* @_PLOVER, align 8
  %72 = call i32 @layer_off(i64 %71)
  br label %73

73:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %108

74:                                               ; preds = %2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i32, i32* @KC_RSFT, align 4
  %82 = call i32 @register_code(i32 %81)
  %83 = load i32, i32* @KC_RCTL, align 4
  %84 = call i32 @register_code(i32 %83)
  %85 = load i32, i32* @KC_POWER, align 4
  %86 = call i32 @register_code(i32 %85)
  %87 = load i32, i32* @KC_POWER, align 4
  %88 = call i32 @unregister_code(i32 %87)
  %89 = load i32, i32* @KC_RCTL, align 4
  %90 = call i32 @unregister_code(i32 %89)
  %91 = load i32, i32* @KC_RSFT, align 4
  %92 = call i32 @unregister_code(i32 %91)
  br label %93

93:                                               ; preds = %80, %74
  store i32 0, i32* %3, align 4
  br label %108

94:                                               ; preds = %2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @KC_RSFT, align 4
  %102 = call i32 @register_code(i32 %101)
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* @KC_RSFT, align 4
  %105 = call i32 @unregister_code(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  store i32 0, i32* %3, align 4
  br label %108

107:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %93, %73, %63, %39, %28, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @persistant_default_layer_set(i64) #1

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @layer_on(i64) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
