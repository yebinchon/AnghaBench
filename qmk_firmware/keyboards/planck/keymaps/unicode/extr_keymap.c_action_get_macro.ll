; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/unicode/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/unicode/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@E = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@O = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

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
  switch i32 %8, label %145 [
    i32 129, label %9
    i32 132, label %18
    i32 131, label %27
    i32 130, label %36
    i32 128, label %51
    i32 133, label %66
    i32 12, label %79
    i32 13, label %101
    i32 14, label %111
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @persistent_default_layer_set(i64 undef)
  br label %17

17:                                               ; preds = %15, %9
  br label %145

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @persistent_default_layer_set(i64 undef)
  br label %26

26:                                               ; preds = %24, %18
  br label %145

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @persistent_default_layer_set(i64 undef)
  br label %35

35:                                               ; preds = %33, %27
  br label %145

36:                                               ; preds = %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = call i32 @layer_on(i32 130)
  %44 = load i32, i32* @_ADJUST, align 4
  %45 = call i32 @update_tri_layer(i32 130, i32 128, i32 %44)
  br label %50

46:                                               ; preds = %36
  %47 = call i32 @layer_off(i32 130)
  %48 = load i32, i32* @_ADJUST, align 4
  %49 = call i32 @update_tri_layer(i32 130, i32 128, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %145

51:                                               ; preds = %3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 @layer_on(i32 128)
  %59 = load i32, i32* @_ADJUST, align 4
  %60 = call i32 @update_tri_layer(i32 130, i32 128, i32 %59)
  br label %65

61:                                               ; preds = %51
  %62 = call i32 @layer_off(i32 128)
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer(i32 130, i32 128, i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %145

66:                                               ; preds = %3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @KC_RSFT, align 4
  %74 = call i32 @register_code(i32 %73)
  br label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @KC_RSFT, align 4
  %77 = call i32 @unregister_code(i32 %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %145

79:                                               ; preds = %3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = call i32 @layer_off(i32 128)
  %87 = call i32 @layer_off(i32 130)
  %88 = load i32, i32* @_ADJUST, align 4
  %89 = call i32 @layer_off(i32 %88)
  %90 = load i32, i32* @_PLOVER, align 4
  %91 = call i32 @layer_on(i32 %90)
  %92 = call i32 (...) @eeconfig_is_enabled()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %85
  %95 = call i32 (...) @eeconfig_init()
  br label %96

96:                                               ; preds = %94, %85
  %97 = call i32 (...) @eeconfig_read_keymap()
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %99 = call i32 @eeconfig_update_keymap(i32 %98)
  br label %100

100:                                              ; preds = %96, %79
  br label %145

101:                                              ; preds = %3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @_PLOVER, align 4
  %109 = call i32 @layer_off(i32 %108)
  br label %110

110:                                              ; preds = %107, %101
  br label %145

111:                                              ; preds = %3
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %111
  %118 = load i32, i32* @E, align 4
  %119 = call i32 @D(i32 %118)
  %120 = load i32, i32* @R, align 4
  %121 = call i32 @D(i32 %120)
  %122 = load i32, i32* @F, align 4
  %123 = call i32 @D(i32 %122)
  %124 = load i32, i32* @V, align 4
  %125 = call i32 @D(i32 %124)
  %126 = load i32, i32* @O, align 4
  %127 = call i32 @D(i32 %126)
  %128 = load i32, i32* @L, align 4
  %129 = call i32 @D(i32 %128)
  %130 = load i32, i32* @E, align 4
  %131 = call i32 @U(i32 %130)
  %132 = load i32, i32* @R, align 4
  %133 = call i32 @U(i32 %132)
  %134 = load i32, i32* @F, align 4
  %135 = call i32 @U(i32 %134)
  %136 = load i32, i32* @V, align 4
  %137 = call i32 @U(i32 %136)
  %138 = load i32, i32* @O, align 4
  %139 = call i32 @U(i32 %138)
  %140 = load i32, i32* @L, align 4
  %141 = call i32 @U(i32 %140)
  %142 = load i32, i32* @END, align 4
  %143 = call i32* @MACRO(i32 %119, i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131, i32 %133, i32 %135, i32 %137, i32 %139, i32 %141, i32 %142)
  store i32* %143, i32** %4, align 8
  br label %147

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %3, %144, %110, %100, %78, %65, %50, %35, %26, %17
  %146 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %146, i32** %4, align 8
  br label %147

147:                                              ; preds = %145, %117
  %148 = load i32*, i32** %4, align 8
  ret i32* %148
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
