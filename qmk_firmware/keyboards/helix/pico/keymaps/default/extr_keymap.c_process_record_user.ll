; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/pico/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/pico/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@KC_LANG1 = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %155 [
    i32 131, label %7
    i32 136, label %18
    i32 135, label %29
    i32 132, label %40
    i32 130, label %70
    i32 137, label %100
    i32 128, label %113
    i32 134, label %114
    i32 133, label %134
    i32 129, label %154
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
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
  br label %156

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
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
  br label %156

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
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
  br label %156

40:                                               ; preds = %2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, i32* @TOG_STATUS, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* @TOG_STATUS, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @TOG_STATUS, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* @_LOWER, align 4
  %57 = call i32 @layer_on(i32 %56)
  %58 = load i32, i32* @_LOWER, align 4
  %59 = load i32, i32* @_RAISE, align 4
  %60 = load i32, i32* @_ADJUST, align 4
  %61 = call i32 @update_tri_layer_RGB(i32 %58, i32 %59, i32 %60)
  br label %69

62:                                               ; preds = %40
  store i32 0, i32* @TOG_STATUS, align 4
  %63 = load i32, i32* @_LOWER, align 4
  %64 = call i32 @layer_off(i32 %63)
  %65 = load i32, i32* @_LOWER, align 4
  %66 = load i32, i32* @_RAISE, align 4
  %67 = load i32, i32* @_ADJUST, align 4
  %68 = call i32 @update_tri_layer_RGB(i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  store i32 0, i32* %3, align 4
  br label %156

70:                                               ; preds = %2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load i32, i32* @TOG_STATUS, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @TOG_STATUS, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  store i32 %84, i32* @TOG_STATUS, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i32, i32* @_RAISE, align 4
  %87 = call i32 @layer_on(i32 %86)
  %88 = load i32, i32* @_LOWER, align 4
  %89 = load i32, i32* @_RAISE, align 4
  %90 = load i32, i32* @_ADJUST, align 4
  %91 = call i32 @update_tri_layer_RGB(i32 %88, i32 %89, i32 %90)
  br label %99

92:                                               ; preds = %70
  %93 = load i32, i32* @_RAISE, align 4
  %94 = call i32 @layer_off(i32 %93)
  store i32 0, i32* @TOG_STATUS, align 4
  %95 = load i32, i32* @_LOWER, align 4
  %96 = load i32, i32* @_RAISE, align 4
  %97 = load i32, i32* @_ADJUST, align 4
  %98 = call i32 @update_tri_layer_RGB(i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %85
  store i32 0, i32* %3, align 4
  br label %156

100:                                              ; preds = %2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @_ADJUST, align 4
  %108 = call i32 @layer_on(i32 %107)
  br label %112

109:                                              ; preds = %100
  %110 = load i32, i32* @_ADJUST, align 4
  %111 = call i32 @layer_off(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %3, align 4
  br label %156

113:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

114:                                              ; preds = %2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keymap_config, i32 0, i32 0), align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @KC_LANG2, align 4
  %125 = call i32 @register_code(i32 %124)
  br label %129

126:                                              ; preds = %120
  %127 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %128 = call i32 @SEND_STRING(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  br label %133

130:                                              ; preds = %114
  %131 = load i32, i32* @KC_LANG2, align 4
  %132 = call i32 @unregister_code(i32 %131)
  br label %133

133:                                              ; preds = %130, %129
  store i32 0, i32* %3, align 4
  br label %156

134:                                              ; preds = %2
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keymap_config, i32 0, i32 0), align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @KC_LANG1, align 4
  %145 = call i32 @register_code(i32 %144)
  br label %149

146:                                              ; preds = %140
  %147 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %148 = call i32 @SEND_STRING(i32 %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %153

150:                                              ; preds = %134
  %151 = load i32, i32* @KC_LANG1, align 4
  %152 = call i32 @unregister_code(i32 %151)
  br label %153

153:                                              ; preds = %150, %149
  store i32 0, i32* %3, align 4
  br label %156

154:                                              ; preds = %2
  br label %155

155:                                              ; preds = %2, %154
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %153, %133, %113, %112, %99, %69, %39, %28, %17
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_LALT(i8*) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
