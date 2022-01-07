; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/viterbi/keymaps/dwallace/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/viterbi/keymaps/dwallace/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@_QWERTY = common dso_local global i64 0, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@rgb_dimming = common dso_local global i32 0, align 4
@modifier_already_applied = common dso_local global i32 0, align 4
@physically_held_modifiers = common dso_local global i64 0, align 8
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %100 [
    i32 136, label %7
    i32 128, label %18
    i32 131, label %25
    i32 133, label %32
    i32 130, label %39
    i32 129, label %46
    i32 132, label %65
    i32 135, label %74
    i32 134, label %87
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %117

18:                                               ; preds = %2
  %19 = load i32, i32* @KC_LSFT, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @handle_sticky_modifier_event(i32 %19, i64 %23)
  store i32 0, i32* %3, align 4
  br label %117

25:                                               ; preds = %2
  %26 = load i32, i32* @KC_LCTL, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @handle_sticky_modifier_event(i32 %26, i64 %30)
  store i32 0, i32* %3, align 4
  br label %117

32:                                               ; preds = %2
  %33 = load i32, i32* @KC_LALT, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @handle_sticky_modifier_event(i32 %33, i64 %37)
  store i32 0, i32* %3, align 4
  br label %117

39:                                               ; preds = %2
  %40 = load i32, i32* @KC_LGUI, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @handle_sticky_modifier_event(i32 %40, i64 %44)
  store i32 0, i32* %3, align 4
  br label %117

46:                                               ; preds = %2
  %47 = load i32, i32* @KC_LCTL, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @handle_sticky_modifier_event(i32 %47, i64 %51)
  %53 = load i32, i32* @KC_LALT, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @handle_sticky_modifier_event(i32 %53, i64 %57)
  %59 = load i32, i32* @KC_LGUI, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @handle_sticky_modifier_event(i32 %59, i64 %63)
  store i32 0, i32* %3, align 4
  br label %117

65:                                               ; preds = %2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (...) @clear_sticky_modifiers()
  br label %73

73:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %117

74:                                               ; preds = %2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @rgb_dimming, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @rgb_dimming, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @rgb_dimming, align 4
  br label %86

86:                                               ; preds = %83, %80, %74
  store i32 0, i32* %3, align 4
  br label %117

87:                                               ; preds = %2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @rgb_dimming, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @rgb_dimming, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @rgb_dimming, align 4
  br label %99

99:                                               ; preds = %96, %93, %87
  store i32 0, i32* %3, align 4
  br label %117

100:                                              ; preds = %2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @IS_KEY(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  store i32 1, i32* @modifier_already_applied, align 4
  %111 = load i64, i64* @physically_held_modifiers, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (...) @clear_sticky_modifiers()
  br label %115

115:                                              ; preds = %113, %110
  br label %116

116:                                              ; preds = %115, %106, %100
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %99, %86, %73, %46, %39, %32, %25, %18, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @handle_sticky_modifier_event(i32, i64) #1

declare dso_local i32 @clear_sticky_modifiers(...) #1

declare dso_local i64 @IS_KEY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
