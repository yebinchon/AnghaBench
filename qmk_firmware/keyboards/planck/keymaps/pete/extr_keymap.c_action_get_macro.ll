; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/pete/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/pete/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_SETUP = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4
@KC_RGUI = common dso_local global i32 0, align 4
@currentOs = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
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
  switch i32 %7, label %126 [
    i32 130, label %8
    i32 138, label %17
    i32 137, label %26
    i32 134, label %35
    i32 129, label %50
    i32 136, label %65
    i32 132, label %76
    i32 131, label %101
    i32 133, label %115
    i32 128, label %115
    i32 135, label %115
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @persistent_default_layer_set(i64 undef)
  br label %16

16:                                               ; preds = %14, %8
  br label %126

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @persistent_default_layer_set(i64 undef)
  br label %25

25:                                               ; preds = %23, %17
  br label %126

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @persistent_default_layer_set(i64 undef)
  br label %34

34:                                               ; preds = %32, %26
  br label %126

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 @layer_on(i32 134)
  %43 = load i32, i32* @_SETUP, align 4
  %44 = call i32 @update_tri_layer(i32 134, i32 129, i32 %43)
  br label %49

45:                                               ; preds = %35
  %46 = call i32 @layer_off(i32 134)
  %47 = load i32, i32* @_SETUP, align 4
  %48 = call i32 @update_tri_layer(i32 134, i32 129, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %126

50:                                               ; preds = %3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i32 @layer_on(i32 129)
  %58 = load i32, i32* @_SETUP, align 4
  %59 = call i32 @update_tri_layer(i32 134, i32 129, i32 %58)
  br label %64

60:                                               ; preds = %50
  %61 = call i32 @layer_off(i32 129)
  %62 = load i32, i32* @_SETUP, align 4
  %63 = call i32 @update_tri_layer(i32 134, i32 129, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %126

65:                                               ; preds = %3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @layer_on(i32 136)
  br label %75

73:                                               ; preds = %65
  %74 = call i32 @layer_off(i32 136)
  br label %75

75:                                               ; preds = %73, %71
  br label %126

76:                                               ; preds = %3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* @KC_RSFT, align 4
  %84 = call i32 @register_code(i32 %83)
  %85 = load i32, i32* @KC_RCTL, align 4
  %86 = call i32 @register_code(i32 %85)
  %87 = load i32, i32* @KC_RALT, align 4
  %88 = call i32 @register_code(i32 %87)
  %89 = load i32, i32* @KC_RGUI, align 4
  %90 = call i32 @register_code(i32 %89)
  br label %100

91:                                               ; preds = %76
  %92 = load i32, i32* @KC_RSFT, align 4
  %93 = call i32 @unregister_code(i32 %92)
  %94 = load i32, i32* @KC_RCTL, align 4
  %95 = call i32 @unregister_code(i32 %94)
  %96 = load i32, i32* @KC_RALT, align 4
  %97 = call i32 @unregister_code(i32 %96)
  %98 = load i32, i32* @KC_RGUI, align 4
  %99 = call i32 @unregister_code(i32 %98)
  br label %100

100:                                              ; preds = %91, %82
  br label %126

101:                                              ; preds = %3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @currentOs, align 4
  %109 = call i32 @layer_on(i32 %108)
  br label %114

110:                                              ; preds = %101
  %111 = call i32 @layer_off(i32 133)
  %112 = call i32 @layer_off(i32 128)
  %113 = call i32 @layer_off(i32 135)
  br label %114

114:                                              ; preds = %110, %107
  br label %126

115:                                              ; preds = %3, %3, %3
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @currentOs, align 4
  %123 = call i32 @layer_off(i32 %122)
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* @currentOs, align 4
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %3, %125, %114, %100, %75, %64, %49, %34, %25, %16
  %127 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %127
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
