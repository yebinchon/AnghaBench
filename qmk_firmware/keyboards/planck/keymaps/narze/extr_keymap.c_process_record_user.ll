; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/narze/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/narze/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_QWOC = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@tone_coin = common dso_local global i32 0, align 4
@tone_goodbye = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %154 [
    i32 131, label %8
    i32 137, label %20
    i32 130, label %32
    i32 134, label %44
    i32 129, label %65
    i32 138, label %86
    i32 132, label %99
    i32 136, label %123
    i32 128, label %133
    i32 135, label %142
    i32 133, label %148
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* @_QWERTY, align 4
  %16 = call i32 @set_single_persistent_default_layer(i32 %15)
  %17 = load i32, i32* @_QWERTY, align 4
  %18 = call i32 @set_superduper_key_combo_layer(i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  store i32 0, i32* %3, align 4
  br label %155

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @_COLEMAK, align 4
  %28 = call i32 @set_single_persistent_default_layer(i32 %27)
  %29 = load i32, i32* @_COLEMAK, align 4
  %30 = call i32 @set_superduper_key_combo_layer(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %155

32:                                               ; preds = %2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @_QWOC, align 4
  %40 = call i32 @set_single_persistent_default_layer(i32 %39)
  %41 = load i32, i32* @_QWOC, align 4
  %42 = call i32 @set_superduper_key_combo_layer(i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  store i32 0, i32* %3, align 4
  br label %155

44:                                               ; preds = %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
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
  br label %155

65:                                               ; preds = %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
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
  br label %155

86:                                               ; preds = %2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @KC_RSFT, align 4
  %94 = call i32 @register_code(i32 %93)
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @KC_RSFT, align 4
  %97 = call i32 @unregister_code(i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  store i32 0, i32* %3, align 4
  br label %155

99:                                               ; preds = %2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load i32, i32* @_RAISE, align 4
  %107 = call i32 @layer_off(i32 %106)
  %108 = load i32, i32* @_LOWER, align 4
  %109 = call i32 @layer_off(i32 %108)
  %110 = load i32, i32* @_ADJUST, align 4
  %111 = call i32 @layer_off(i32 %110)
  %112 = load i32, i32* @_PLOVER, align 4
  %113 = call i32 @layer_on(i32 %112)
  %114 = call i32 (...) @eeconfig_is_enabled()
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  %117 = call i32 (...) @eeconfig_init()
  br label %118

118:                                              ; preds = %116, %105
  %119 = call i32 (...) @eeconfig_read_keymap()
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 0), align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  %121 = call i32 @eeconfig_update_keymap(i32 %120)
  br label %122

122:                                              ; preds = %118, %99
  store i32 0, i32* %3, align 4
  br label %155

123:                                              ; preds = %2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @_PLOVER, align 4
  %131 = call i32 @layer_off(i32 %130)
  br label %132

132:                                              ; preds = %129, %123
  store i32 0, i32* %3, align 4
  br label %155

133:                                              ; preds = %2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (...) @toggle_superduper_mode()
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %133
  store i32 0, i32* %3, align 4
  br label %155

142:                                              ; preds = %2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = load i32, i32* @KC_LGUI, align 4
  %145 = load i32, i32* @KC_LSFT, align 4
  %146 = load i32, i32* @KC_MINS, align 4
  %147 = call i32 @perform_space_cadet(%struct.TYPE_7__* %143, i32 %144, i32 %145, i32 %146)
  store i32 0, i32* %3, align 4
  br label %155

148:                                              ; preds = %2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = load i32, i32* @KC_LSFT, align 4
  %151 = load i32, i32* @KC_LSFT, align 4
  %152 = load i32, i32* @KC_9, align 4
  %153 = call i32 @perform_space_cadet(%struct.TYPE_7__* %149, i32 %150, i32 %151, i32 %152)
  store i32 0, i32* %3, align 4
  br label %155

154:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %148, %142, %141, %132, %122, %98, %85, %64, %43, %31, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @set_superduper_key_combo_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @toggle_superduper_mode(...) #1

declare dso_local i32 @perform_space_cadet(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
