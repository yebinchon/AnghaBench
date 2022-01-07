; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_SLCK = common dso_local global i32 0, align 4
@key_timer_left_pedal = common dso_local global i32 0, align 4
@KEY_DELAY = common dso_local global i32 0, align 4
@KC_BTN2 = common dso_local global i32 0, align 4
@key_timer_right_pedal = common dso_local global i32 0, align 4
@PEDAL_DELAY = common dso_local global i32 0, align 4
@KC_BTN1 = common dso_local global i32 0, align 4
@key_timer_shift = common dso_local global i32 0, align 4
@key_timer_1 = common dso_local global i32 0, align 4
@key_timer_2 = common dso_local global i32 0, align 4
@KC_INS = common dso_local global i32 0, align 4
@l2_locked = common dso_local global i32 0, align 4
@BP_Z = common dso_local global i32 0, align 4
@BP_X = common dso_local global i32 0, align 4
@BP_C = common dso_local global i32 0, align 4
@BP_V = common dso_local global i32 0, align 4
@BP_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %216 [
    i32 135, label %6
    i32 133, label %30
    i32 131, label %50
    i32 130, label %61
    i32 129, label %80
    i32 136, label %99
    i32 140, label %118
    i32 139, label %138
    i32 128, label %161
    i32 137, label %172
    i32 138, label %183
    i32 134, label %194
    i32 132, label %205
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = call i32 @layer_on(i32 1)
  %14 = load i32, i32* @KC_SLCK, align 4
  %15 = call i32 @register_code(i32 %14)
  %16 = call i32 (...) @timer_read()
  store i32 %16, i32* @key_timer_left_pedal, align 4
  br label %29

17:                                               ; preds = %6
  %18 = load i32, i32* @key_timer_left_pedal, align 4
  %19 = call i32 @timer_elapsed(i32 %18)
  %20 = load i32, i32* @KEY_DELAY, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @KC_BTN2, align 4
  %24 = call i32 @tap_code(i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @KC_SLCK, align 4
  %27 = call i32 @unregister_code(i32 %26)
  %28 = call i32 @layer_off(i32 1)
  br label %29

29:                                               ; preds = %25, %12
  br label %216

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @layer_on(i32 2)
  %38 = call i32 (...) @timer_read()
  store i32 %38, i32* @key_timer_right_pedal, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load i32, i32* @key_timer_right_pedal, align 4
  %41 = call i32 @timer_elapsed(i32 %40)
  %42 = load i32, i32* @PEDAL_DELAY, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @KC_BTN1, align 4
  %46 = call i32 @tap_code(i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = call i32 @layer_off(i32 2)
  br label %49

49:                                               ; preds = %47, %36
  br label %216

50:                                               ; preds = %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (...) @hold_shift()
  br label %60

58:                                               ; preds = %50
  %59 = call i32 (...) @release_shift()
  br label %60

60:                                               ; preds = %58, %56
  br label %216

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 (...) @hold_shift()
  %69 = call i32 (...) @timer_read()
  store i32 %69, i32* @key_timer_shift, align 4
  br label %79

70:                                               ; preds = %61
  %71 = load i32, i32* @key_timer_shift, align 4
  %72 = call i32 @timer_elapsed(i32 %71)
  %73 = load i32, i32* @KEY_DELAY, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (...) @press_space()
  br label %77

77:                                               ; preds = %75, %70
  %78 = call i32 (...) @release_shift()
  br label %79

79:                                               ; preds = %77, %67
  br label %216

80:                                               ; preds = %2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = call i32 (...) @hold_shift()
  %88 = call i32 (...) @timer_read()
  store i32 %88, i32* @key_timer_shift, align 4
  br label %98

89:                                               ; preds = %80
  %90 = load i32, i32* @key_timer_shift, align 4
  %91 = call i32 @timer_elapsed(i32 %90)
  %92 = load i32, i32* @KEY_DELAY, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 (...) @press_space()
  br label %96

96:                                               ; preds = %94, %89
  %97 = call i32 (...) @release_shift()
  br label %98

98:                                               ; preds = %96, %86
  br label %216

99:                                               ; preds = %2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = call i32 @layer_on(i32 1)
  %107 = call i32 (...) @timer_read()
  store i32 %107, i32* @key_timer_1, align 4
  br label %117

108:                                              ; preds = %99
  %109 = load i32, i32* @key_timer_1, align 4
  %110 = call i32 @timer_elapsed(i32 %109)
  %111 = load i32, i32* @KEY_DELAY, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (...) @press_enter()
  br label %115

115:                                              ; preds = %113, %108
  %116 = call i32 @layer_off(i32 1)
  br label %117

117:                                              ; preds = %115, %105
  br label %216

118:                                              ; preds = %2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = call i32 @layer_on(i32 2)
  %126 = call i32 (...) @timer_read()
  store i32 %126, i32* @key_timer_2, align 4
  br label %137

127:                                              ; preds = %118
  %128 = load i32, i32* @key_timer_2, align 4
  %129 = call i32 @timer_elapsed(i32 %128)
  %130 = load i32, i32* @KEY_DELAY, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @KC_INS, align 4
  %134 = call i32 @tap_code(i32 %133)
  br label %135

135:                                              ; preds = %132, %127
  store i32 0, i32* @l2_locked, align 4
  %136 = call i32 @layer_off(i32 2)
  br label %137

137:                                              ; preds = %135, %124
  br label %216

138:                                              ; preds = %2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = call i32 (...) @timer_read()
  store i32 %145, i32* @key_timer_2, align 4
  %146 = call i32 @layer_on(i32 2)
  br label %160

147:                                              ; preds = %138
  %148 = load i32, i32* @key_timer_2, align 4
  %149 = call i32 @timer_elapsed(i32 %148)
  %150 = load i32, i32* @KEY_DELAY, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* @l2_locked, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  store i32 1, i32* @l2_locked, align 4
  %156 = call i32 @layer_on(i32 2)
  br label %159

157:                                              ; preds = %152, %147
  store i32 0, i32* @l2_locked, align 4
  %158 = call i32 @layer_off(i32 2)
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %144
  br label %216

161:                                              ; preds = %2
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* @BP_Z, align 4
  %169 = call i32 @C(i32 %168)
  %170 = call i32 @tap_code16(i32 %169)
  br label %171

171:                                              ; preds = %167, %161
  br label %216

172:                                              ; preds = %2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* @BP_X, align 4
  %180 = call i32 @C(i32 %179)
  %181 = call i32 @tap_code16(i32 %180)
  br label %182

182:                                              ; preds = %178, %172
  br label %216

183:                                              ; preds = %2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32, i32* @BP_C, align 4
  %191 = call i32 @C(i32 %190)
  %192 = call i32 @tap_code16(i32 %191)
  br label %193

193:                                              ; preds = %189, %183
  br label %216

194:                                              ; preds = %2
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @BP_V, align 4
  %202 = call i32 @C(i32 %201)
  %203 = call i32 @tap_code16(i32 %202)
  br label %204

204:                                              ; preds = %200, %194
  br label %216

205:                                              ; preds = %2
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i32, i32* @BP_F, align 4
  %213 = call i32 @C(i32 %212)
  %214 = call i32 @tap_code16(i32 %213)
  br label %215

215:                                              ; preds = %211, %205
  br label %216

216:                                              ; preds = %2, %215, %204, %193, %182, %171, %160, %137, %117, %98, %79, %60, %49, %29
  ret i32 1
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @hold_shift(...) #1

declare dso_local i32 @release_shift(...) #1

declare dso_local i32 @press_space(...) #1

declare dso_local i32 @press_enter(...) #1

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
