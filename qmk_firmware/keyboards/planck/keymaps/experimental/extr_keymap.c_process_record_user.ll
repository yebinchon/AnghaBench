; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/experimental/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/experimental/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %187 [
    i32 137, label %7
    i32 142, label %18
    i32 141, label %29
    i32 139, label %40
    i32 136, label %61
    i32 143, label %82
    i32 138, label %95
    i32 140, label %105
    i32 128, label %115
    i32 132, label %124
    i32 135, label %133
    i32 131, label %142
    i32 134, label %151
    i32 130, label %160
    i32 133, label %169
    i32 129, label %178
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  br label %187

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @_COLEMAK, align 8
  %26 = shl i64 1, %25
  %27 = call i32 @persistent_default_layer_set(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  br label %187

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @_DVORAK, align 8
  %37 = shl i64 1, %36
  %38 = call i32 @persistent_default_layer_set(i64 %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %187

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @_LOWER, align 4
  %48 = call i32 @layer_on(i32 %47)
  %49 = load i32, i32* @_LOWER, align 4
  %50 = load i32, i32* @_RAISE, align 4
  %51 = load i32, i32* @_ADJUST, align 4
  %52 = call i32 @update_tri_layer(i32 %49, i32 %50, i32 %51)
  br label %60

53:                                               ; preds = %40
  %54 = load i32, i32* @_LOWER, align 4
  %55 = call i32 @layer_off(i32 %54)
  %56 = load i32, i32* @_LOWER, align 4
  %57 = load i32, i32* @_RAISE, align 4
  %58 = load i32, i32* @_ADJUST, align 4
  %59 = call i32 @update_tri_layer(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  br label %187

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @_RAISE, align 4
  %69 = call i32 @layer_on(i32 %68)
  %70 = load i32, i32* @_LOWER, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer(i32 %70, i32 %71, i32 %72)
  br label %81

74:                                               ; preds = %61
  %75 = load i32, i32* @_RAISE, align 4
  %76 = call i32 @layer_off(i32 %75)
  %77 = load i32, i32* @_LOWER, align 4
  %78 = load i32, i32* @_RAISE, align 4
  %79 = load i32, i32* @_ADJUST, align 4
  %80 = call i32 @update_tri_layer(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  br label %187

82:                                               ; preds = %2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @KC_RSFT, align 4
  %90 = call i32 @register_code(i32 %89)
  br label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @KC_RSFT, align 4
  %93 = call i32 @unregister_code(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %187

95:                                               ; preds = %2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @_PLOVER, align 4
  %103 = call i32 @layer_on(i32 %102)
  br label %104

104:                                              ; preds = %101, %95
  br label %187

105:                                              ; preds = %2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @_PLOVER, align 4
  %113 = call i32 @layer_off(i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  br label %187

115:                                              ; preds = %2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 (...) @rgblight_toggle()
  br label %123

123:                                              ; preds = %121, %115
  store i32 0, i32* %3, align 4
  br label %188

124:                                              ; preds = %2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (...) @rgblight_increase_hue()
  br label %132

132:                                              ; preds = %130, %124
  store i32 0, i32* %3, align 4
  br label %188

133:                                              ; preds = %2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (...) @rgblight_decrease_hue()
  br label %141

141:                                              ; preds = %139, %133
  store i32 0, i32* %3, align 4
  br label %188

142:                                              ; preds = %2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 (...) @rgblight_increase_sat()
  br label %150

150:                                              ; preds = %148, %142
  store i32 0, i32* %3, align 4
  br label %188

151:                                              ; preds = %2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = call i32 (...) @rgblight_decrease_sat()
  br label %159

159:                                              ; preds = %157, %151
  store i32 0, i32* %3, align 4
  br label %188

160:                                              ; preds = %2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 (...) @rgblight_increase_val()
  br label %168

168:                                              ; preds = %166, %160
  store i32 0, i32* %3, align 4
  br label %188

169:                                              ; preds = %2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = call i32 (...) @rgblight_decrease_val()
  br label %177

177:                                              ; preds = %175, %169
  store i32 0, i32* %3, align 4
  br label %188

178:                                              ; preds = %2
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 (...) @rgblight_step()
  br label %186

186:                                              ; preds = %184, %178
  store i32 0, i32* %3, align 4
  br label %188

187:                                              ; preds = %2, %114, %104, %94, %81, %60, %39, %28, %17
  store i32 1, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %186, %177, %168, %159, %150, %141, %132, %123
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgblight_toggle(...) #1

declare dso_local i32 @rgblight_increase_hue(...) #1

declare dso_local i32 @rgblight_decrease_hue(...) #1

declare dso_local i32 @rgblight_increase_sat(...) #1

declare dso_local i32 @rgblight_decrease_sat(...) #1

declare dso_local i32 @rgblight_increase_val(...) #1

declare dso_local i32 @rgblight_decrease_val(...) #1

declare dso_local i32 @rgblight_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
