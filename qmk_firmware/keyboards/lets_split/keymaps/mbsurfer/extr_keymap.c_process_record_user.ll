; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/mbsurfer/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/mbsurfer/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@RGB_current_hue = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %177 [
    i32 129, label %7
    i32 132, label %18
    i32 131, label %29
    i32 130, label %40
    i32 128, label %102
    i32 133, label %164
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
  br label %178

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
  br label %178

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
  br label %178

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load i32, i32* @_RAISE, align 4
  %48 = call i32 @IS_LAYER_OFF(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* @_ADJUST, align 4
  %52 = call i32 @IS_LAYER_OFF(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %55, i32* @RGB_current_mode, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 3), align 4
  store i32 %56, i32* @RGB_current_hue, align 4
  %57 = call i32 @rgblight_mode(i32 1)
  %58 = call i32 @rgblight_setrgb(i32 0, i32 0, i32 255)
  br label %59

59:                                               ; preds = %54, %50, %46
  %60 = load i32, i32* @_LOWER, align 4
  %61 = call i32 @layer_on(i32 %60)
  %62 = load i32, i32* @_LOWER, align 4
  %63 = load i32, i32* @_RAISE, align 4
  %64 = load i32, i32* @_ADJUST, align 4
  %65 = call i32 @update_tri_layer(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @_ADJUST, align 4
  %67 = call i32 @IS_LAYER_ON(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 255)
  br label %71

71:                                               ; preds = %69, %59
  br label %101

72:                                               ; preds = %40
  %73 = load i32, i32* @_LOWER, align 4
  %74 = call i32 @layer_off(i32 %73)
  %75 = load i32, i32* @_LOWER, align 4
  %76 = load i32, i32* @_RAISE, align 4
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @update_tri_layer(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @_RAISE, align 4
  %80 = call i32 @IS_LAYER_OFF(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @IS_LAYER_OFF(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @RGB_current_mode, align 4
  %88 = call i32 @rgblight_mode(i32 %87)
  %89 = load i32, i32* @RGB_current_hue, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 2), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 1), align 4
  %92 = call i32 @rgblight_sethsv(i32 %89, i32 %90, i32 %91)
  br label %100

93:                                               ; preds = %82, %72
  %94 = load i32, i32* @_RAISE, align 4
  %95 = call i32 @IS_LAYER_ON(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 0)
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %71
  store i32 0, i32* %3, align 4
  br label %178

102:                                              ; preds = %2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %102
  %109 = load i32, i32* @_LOWER, align 4
  %110 = call i32 @IS_LAYER_OFF(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32, i32* @_ADJUST, align 4
  %114 = call i32 @IS_LAYER_OFF(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %117, i32* @RGB_current_mode, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 3), align 4
  store i32 %118, i32* @RGB_current_hue, align 4
  %119 = call i32 @rgblight_mode(i32 1)
  %120 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 0)
  br label %121

121:                                              ; preds = %116, %112, %108
  %122 = load i32, i32* @_RAISE, align 4
  %123 = call i32 @layer_on(i32 %122)
  %124 = load i32, i32* @_LOWER, align 4
  %125 = load i32, i32* @_RAISE, align 4
  %126 = load i32, i32* @_ADJUST, align 4
  %127 = call i32 @update_tri_layer(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @_ADJUST, align 4
  %129 = call i32 @IS_LAYER_ON(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 255)
  br label %133

133:                                              ; preds = %131, %121
  br label %163

134:                                              ; preds = %102
  %135 = load i32, i32* @_RAISE, align 4
  %136 = call i32 @layer_off(i32 %135)
  %137 = load i32, i32* @_LOWER, align 4
  %138 = load i32, i32* @_RAISE, align 4
  %139 = load i32, i32* @_ADJUST, align 4
  %140 = call i32 @update_tri_layer(i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @_LOWER, align 4
  %142 = call i32 @IS_LAYER_OFF(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %134
  %145 = load i32, i32* @_ADJUST, align 4
  %146 = call i32 @IS_LAYER_OFF(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* @RGB_current_mode, align 4
  %150 = call i32 @rgblight_mode(i32 %149)
  %151 = load i32, i32* @RGB_current_hue, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 2), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 1), align 4
  %154 = call i32 @rgblight_sethsv(i32 %151, i32 %152, i32 %153)
  br label %162

155:                                              ; preds = %144, %134
  %156 = load i32, i32* @_LOWER, align 4
  %157 = call i32 @IS_LAYER_ON(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @rgblight_setrgb(i32 0, i32 0, i32 255)
  br label %161

161:                                              ; preds = %159, %155
  br label %162

162:                                              ; preds = %161, %148
  br label %163

163:                                              ; preds = %162, %133
  store i32 0, i32* %3, align 4
  br label %178

164:                                              ; preds = %2
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* @_ADJUST, align 4
  %172 = call i32 @layer_on(i32 %171)
  br label %176

173:                                              ; preds = %164
  %174 = load i32, i32* @_ADJUST, align 4
  %175 = call i32 @layer_off(i32 %174)
  br label %176

176:                                              ; preds = %173, %170
  store i32 0, i32* %3, align 4
  br label %178

177:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %176, %163, %101, %39, %28, %17
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @IS_LAYER_OFF(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @IS_LAYER_ON(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
