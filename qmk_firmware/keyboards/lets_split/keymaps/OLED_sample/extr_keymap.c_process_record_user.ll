; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/OLED_sample/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/OLED_sample/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %140 [
    i32 130, label %7
    i32 134, label %18
    i32 133, label %29
    i32 132, label %40
    i32 129, label %73
    i32 135, label %106
    i32 128, label %119
    i32 131, label %131
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
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %141

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @_COLEMAK, align 8
  %26 = shl i64 1, %25
  %27 = call i32 @persistent_default_layer_set(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %141

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @_DVORAK, align 8
  %37 = shl i64 1, %36
  %38 = call i32 @persistent_default_layer_set(i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %141

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load i32, i32* @TOG_STATUS, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @TOG_STATUS, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @TOG_STATUS, align 4
  %55 = call i32 @rgblight_mode(i32 16)
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32, i32* @_LOWER, align 4
  %58 = call i32 @layer_on(i32 %57)
  %59 = load i32, i32* @_LOWER, align 4
  %60 = load i32, i32* @_RAISE, align 4
  %61 = load i32, i32* @_ADJUST, align 4
  %62 = call i32 @update_tri_layer_RGB(i32 %59, i32 %60, i32 %61)
  br label %72

63:                                               ; preds = %40
  %64 = load i32, i32* @RGB_current_mode, align 4
  %65 = call i32 @rgblight_mode(i32 %64)
  store i32 0, i32* @TOG_STATUS, align 4
  %66 = load i32, i32* @_LOWER, align 4
  %67 = call i32 @layer_off(i32 %66)
  %68 = load i32, i32* @_LOWER, align 4
  %69 = load i32, i32* @_RAISE, align 4
  %70 = load i32, i32* @_ADJUST, align 4
  %71 = call i32 @update_tri_layer_RGB(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  store i32 0, i32* %3, align 4
  br label %141

73:                                               ; preds = %2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load i32, i32* @TOG_STATUS, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @TOG_STATUS, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* @TOG_STATUS, align 4
  %88 = call i32 @rgblight_mode(i32 15)
  br label %89

89:                                               ; preds = %83, %82
  %90 = load i32, i32* @_RAISE, align 4
  %91 = call i32 @layer_on(i32 %90)
  %92 = load i32, i32* @_LOWER, align 4
  %93 = load i32, i32* @_RAISE, align 4
  %94 = load i32, i32* @_ADJUST, align 4
  %95 = call i32 @update_tri_layer_RGB(i32 %92, i32 %93, i32 %94)
  br label %105

96:                                               ; preds = %73
  %97 = load i32, i32* @RGB_current_mode, align 4
  %98 = call i32 @rgblight_mode(i32 %97)
  %99 = load i32, i32* @_RAISE, align 4
  %100 = call i32 @layer_off(i32 %99)
  store i32 0, i32* @TOG_STATUS, align 4
  %101 = load i32, i32* @_LOWER, align 4
  %102 = load i32, i32* @_RAISE, align 4
  %103 = load i32, i32* @_ADJUST, align 4
  %104 = call i32 @update_tri_layer_RGB(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %141

106:                                              ; preds = %2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @KC_RSFT, align 4
  %114 = call i32 @register_code(i32 %113)
  br label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @KC_RSFT, align 4
  %117 = call i32 @unregister_code(i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  store i32 0, i32* %3, align 4
  br label %141

119:                                              ; preds = %2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @RGB_current_mode, align 4
  %127 = call i32 @rgblight_mode(i32 %126)
  %128 = call i32 (...) @rgblight_step()
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %129, i32* @RGB_current_mode, align 4
  br label %130

130:                                              ; preds = %125, %119
  store i32 0, i32* %3, align 4
  br label %141

131:                                              ; preds = %2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %131
  store i32 0, i32* %3, align 4
  br label %141

140:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %139, %130, %118, %105, %72, %39, %28, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgblight_step(...) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
