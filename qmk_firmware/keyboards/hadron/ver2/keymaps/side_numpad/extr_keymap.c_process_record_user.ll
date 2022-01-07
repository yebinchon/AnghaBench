; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/side_numpad/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/side_numpad/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@RGB_INIT = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@NUMLAY_STATUS = common dso_local global i32 0, align 4
@_NUMLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %150 [
    i32 131, label %7
    i32 132, label %17
    i32 130, label %56
    i32 133, label %95
    i32 128, label %108
    i32 129, label %138
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %151

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load i32, i32* @RGB_INIT, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %28, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32, i32* @TOG_STATUS, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @TOG_STATUS, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @TOG_STATUS, align 4
  %38 = call i32 @rgblight_mode(i32 16)
  br label %39

39:                                               ; preds = %33, %32
  %40 = load i32, i32* @_LOWER, align 4
  %41 = call i32 @layer_on(i32 %40)
  %42 = load i32, i32* @_LOWER, align 4
  %43 = load i32, i32* @_RAISE, align 4
  %44 = load i32, i32* @_ADJUST, align 4
  %45 = call i32 @update_tri_layer_RGB(i32 %42, i32 %43, i32 %44)
  br label %55

46:                                               ; preds = %17
  %47 = load i32, i32* @RGB_current_mode, align 4
  %48 = call i32 @rgblight_mode(i32 %47)
  store i32 0, i32* @TOG_STATUS, align 4
  %49 = load i32, i32* @_LOWER, align 4
  %50 = call i32 @layer_off(i32 %49)
  %51 = load i32, i32* @_LOWER, align 4
  %52 = load i32, i32* @_RAISE, align 4
  %53 = load i32, i32* @_ADJUST, align 4
  %54 = call i32 @update_tri_layer_RGB(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %39
  store i32 0, i32* %3, align 4
  br label %151

56:                                               ; preds = %2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load i32, i32* @RGB_INIT, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %67, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32, i32* @TOG_STATUS, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @TOG_STATUS, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* @TOG_STATUS, align 4
  %77 = call i32 @rgblight_mode(i32 15)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* @_RAISE, align 4
  %80 = call i32 @layer_on(i32 %79)
  %81 = load i32, i32* @_LOWER, align 4
  %82 = load i32, i32* @_RAISE, align 4
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @update_tri_layer_RGB(i32 %81, i32 %82, i32 %83)
  br label %94

85:                                               ; preds = %56
  %86 = load i32, i32* @RGB_current_mode, align 4
  %87 = call i32 @rgblight_mode(i32 %86)
  %88 = load i32, i32* @_RAISE, align 4
  %89 = call i32 @layer_off(i32 %88)
  store i32 0, i32* @TOG_STATUS, align 4
  %90 = load i32, i32* @_LOWER, align 4
  %91 = load i32, i32* @_RAISE, align 4
  %92 = load i32, i32* @_ADJUST, align 4
  %93 = call i32 @update_tri_layer_RGB(i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %78
  store i32 0, i32* %3, align 4
  br label %151

95:                                               ; preds = %2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @KC_RSFT, align 4
  %103 = call i32 @register_code(i32 %102)
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @KC_RSFT, align 4
  %106 = call i32 @unregister_code(i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %3, align 4
  br label %151

108:                                              ; preds = %2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %108
  %115 = load i32, i32* @RGB_INIT, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %120

118:                                              ; preds = %114
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %119, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = load i32, i32* @NUMLAY_STATUS, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* @NUMLAY_STATUS, align 4
  %125 = load i32, i32* @NUMLAY_STATUS, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = call i32 @rgblight_mode(i32 4)
  %129 = load i32, i32* @_NUMLAY, align 4
  %130 = call i32 @layer_on(i32 %129)
  br label %136

131:                                              ; preds = %120
  %132 = load i32, i32* @RGB_current_mode, align 4
  %133 = call i32 @rgblight_mode(i32 %132)
  %134 = load i32, i32* @_NUMLAY, align 4
  %135 = call i32 @layer_off(i32 %134)
  br label %136

136:                                              ; preds = %131, %127
  br label %137

137:                                              ; preds = %136, %108
  store i32 0, i32* %3, align 4
  br label %151

138:                                              ; preds = %2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32, i32* @RGB_current_mode, align 4
  %146 = call i32 @rgblight_mode(i32 %145)
  %147 = call i32 (...) @rgblight_step()
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %148, i32* @RGB_current_mode, align 4
  br label %149

149:                                              ; preds = %144, %138
  store i32 0, i32* %3, align 4
  br label %151

150:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149, %137, %107, %94, %55, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgblight_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
