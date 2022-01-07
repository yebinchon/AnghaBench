; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev1/keymaps/OLED_sample/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev1/keymaps/OLED_sample/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@TOG_STATUS = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_SNAKE = common dso_local global i32 0, align 4
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
  switch i32 %6, label %156 [
    i32 130, label %7
    i32 134, label %18
    i32 133, label %29
    i32 132, label %40
    i32 129, label %75
    i32 136, label %109
    i32 135, label %122
    i32 128, label %135
    i32 131, label %147
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
  br label %157

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
  br label %157

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
  br label %157

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i32, i32* @TOG_STATUS, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @TOG_STATUS, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @TOG_STATUS, align 4
  %55 = load i32, i32* @RGBLIGHT_MODE_SNAKE, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @rgblight_mode(i32 %56)
  br label %58

58:                                               ; preds = %50, %49
  %59 = load i32, i32* @_LOWER, align 4
  %60 = call i32 @layer_on(i32 %59)
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer_RGB(i32 %61, i32 %62, i32 %63)
  br label %74

65:                                               ; preds = %40
  %66 = load i32, i32* @RGB_current_mode, align 4
  %67 = call i32 @rgblight_mode(i32 %66)
  store i32 0, i32* @TOG_STATUS, align 4
  %68 = load i32, i32* @_LOWER, align 4
  %69 = call i32 @layer_off(i32 %68)
  %70 = load i32, i32* @_LOWER, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer_RGB(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %58
  store i32 0, i32* %3, align 4
  br label %157

75:                                               ; preds = %2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = load i32, i32* @TOG_STATUS, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @TOG_STATUS, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* @TOG_STATUS, align 4
  %90 = load i32, i32* @RGBLIGHT_MODE_SNAKE, align 4
  %91 = call i32 @rgblight_mode(i32 %90)
  br label %92

92:                                               ; preds = %85, %84
  %93 = load i32, i32* @_RAISE, align 4
  %94 = call i32 @layer_on(i32 %93)
  %95 = load i32, i32* @_LOWER, align 4
  %96 = load i32, i32* @_RAISE, align 4
  %97 = load i32, i32* @_ADJUST, align 4
  %98 = call i32 @update_tri_layer_RGB(i32 %95, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %75
  %100 = load i32, i32* @RGB_current_mode, align 4
  %101 = call i32 @rgblight_mode(i32 %100)
  %102 = load i32, i32* @_RAISE, align 4
  %103 = call i32 @layer_off(i32 %102)
  store i32 0, i32* @TOG_STATUS, align 4
  %104 = load i32, i32* @_LOWER, align 4
  %105 = load i32, i32* @_RAISE, align 4
  %106 = load i32, i32* @_ADJUST, align 4
  %107 = call i32 @update_tri_layer_RGB(i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %92
  store i32 0, i32* %3, align 4
  br label %157

109:                                              ; preds = %2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @_ADJUST, align 4
  %117 = call i32 @layer_on(i32 %116)
  br label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @_ADJUST, align 4
  %120 = call i32 @layer_off(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %3, align 4
  br label %157

122:                                              ; preds = %2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @KC_RSFT, align 4
  %130 = call i32 @register_code(i32 %129)
  br label %134

131:                                              ; preds = %122
  %132 = load i32, i32* @KC_RSFT, align 4
  %133 = call i32 @unregister_code(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  store i32 0, i32* %3, align 4
  br label %157

135:                                              ; preds = %2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i32, i32* @RGB_current_mode, align 4
  %143 = call i32 @rgblight_mode(i32 %142)
  %144 = call i32 (...) @rgblight_step()
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %145, i32* @RGB_current_mode, align 4
  br label %146

146:                                              ; preds = %141, %135
  store i32 0, i32* %3, align 4
  br label %157

147:                                              ; preds = %2
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %147
  store i32 0, i32* %3, align 4
  br label %157

156:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %155, %146, %134, %121, %108, %74, %39, %28, %17
  %158 = load i32, i32* %3, align 4
  ret i32 %158
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
