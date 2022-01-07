; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jhenahan/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jhenahan/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_WORKMAN = common dso_local global i64 0, align 8
@_DEAD = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@ONESHOT_PRESSED = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@KC_R = common dso_local global i32 0, align 4
@KC_W = common dso_local global i32 0, align 4
@KC_T = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_P = common dso_local global i32 0, align 4
@KC_O = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4
@tone_workman = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %141 [
    i32 128, label %7
    i32 135, label %18
    i32 131, label %33
    i32 133, label %44
    i32 130, label %65
    i32 132, label %86
    i32 134, label %110
    i32 129, label %120
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_WORKMAN, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %142

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @_DEAD, align 4
  %26 = call i32 @layer_on(i32 %25)
  %27 = load i32, i32* @_DEAD, align 4
  %28 = load i32, i32* @ONESHOT_START, align 4
  %29 = call i32 @set_oneshot_layer(i32 %27, i32 %28)
  %30 = load i32, i32* @ONESHOT_PRESSED, align 4
  %31 = call i32 @clear_oneshot_layer_state(i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %142

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @_QWERTY, align 8
  %41 = shl i64 1, %40
  %42 = call i32 @persistent_default_layer_set(i64 %41)
  br label %43

43:                                               ; preds = %39, %33
  store i32 0, i32* %3, align 4
  br label %142

44:                                               ; preds = %2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @_LOWER, align 4
  %52 = call i32 @layer_on(i32 %51)
  %53 = load i32, i32* @_LOWER, align 4
  %54 = load i32, i32* @_RAISE, align 4
  %55 = load i32, i32* @_ADJUST, align 4
  %56 = call i32 @update_tri_layer(i32 %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %44
  %58 = load i32, i32* @_LOWER, align 4
  %59 = call i32 @layer_off(i32 %58)
  %60 = load i32, i32* @_LOWER, align 4
  %61 = load i32, i32* @_RAISE, align 4
  %62 = load i32, i32* @_ADJUST, align 4
  %63 = call i32 @update_tri_layer(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  store i32 0, i32* %3, align 4
  br label %142

65:                                               ; preds = %2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @_RAISE, align 4
  %73 = call i32 @layer_on(i32 %72)
  %74 = load i32, i32* @_LOWER, align 4
  %75 = load i32, i32* @_RAISE, align 4
  %76 = load i32, i32* @_ADJUST, align 4
  %77 = call i32 @update_tri_layer(i32 %74, i32 %75, i32 %76)
  br label %85

78:                                               ; preds = %65
  %79 = load i32, i32* @_RAISE, align 4
  %80 = call i32 @layer_off(i32 %79)
  %81 = load i32, i32* @_LOWER, align 4
  %82 = load i32, i32* @_RAISE, align 4
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @update_tri_layer(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %71
  store i32 0, i32* %3, align 4
  br label %142

86:                                               ; preds = %2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i32, i32* @_RAISE, align 4
  %94 = call i32 @layer_off(i32 %93)
  %95 = load i32, i32* @_LOWER, align 4
  %96 = call i32 @layer_off(i32 %95)
  %97 = load i32, i32* @_ADJUST, align 4
  %98 = call i32 @layer_off(i32 %97)
  %99 = load i32, i32* @_PLOVER, align 4
  %100 = call i32 @layer_on(i32 %99)
  %101 = call i32 (...) @eeconfig_is_enabled()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = call i32 (...) @eeconfig_init()
  br label %105

105:                                              ; preds = %103, %92
  %106 = call i32 (...) @eeconfig_read_keymap()
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %108 = call i32 @eeconfig_update_keymap(i32 %107)
  br label %109

109:                                              ; preds = %105, %86
  store i32 0, i32* %3, align 4
  br label %142

110:                                              ; preds = %2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @_PLOVER, align 4
  %118 = call i32 @layer_off(i32 %117)
  br label %119

119:                                              ; preds = %116, %110
  store i32 0, i32* %3, align 4
  br label %142

120:                                              ; preds = %2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i32, i32* @KC_R, align 4
  %128 = call i32 @register_code(i32 %127)
  %129 = load i32, i32* @KC_W, align 4
  %130 = call i32 @register_code(i32 %129)
  %131 = load i32, i32* @KC_T, align 4
  %132 = call i32 @register_code(i32 %131)
  %133 = load i32, i32* @KC_C, align 4
  %134 = call i32 @register_code(i32 %133)
  %135 = load i32, i32* @KC_P, align 4
  %136 = call i32 @register_code(i32 %135)
  %137 = load i32, i32* @KC_O, align 4
  %138 = call i32 @register_code(i32 %137)
  %139 = call i32 (...) @clear_keyboard()
  br label %140

140:                                              ; preds = %126, %120
  store i32 0, i32* %3, align 4
  br label %142

141:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %140, %119, %109, %85, %64, %43, %32, %17
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @clear_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
