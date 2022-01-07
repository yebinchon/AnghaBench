; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/mjt/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/mjt/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@_ADJUST = common dso_local global i32 0, align 4
@DYN_REC_STOP = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_POWER = common dso_local global i32 0, align 4
@key_timer = common dso_local global i32 0, align 4
@singular_key = common dso_local global i32 0, align 4
@function_layer = common dso_local global i32 0, align 4
@LAYER_TOGGLE_DELAY = common dso_local global i32 0, align 4
@_SHIFTED = common dso_local global i32 0, align 4
@_FUNCSHIFT = common dso_local global i64 0, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@_FUNCTIONPC = common dso_local global i32 0, align 4
@_FUNCTIONMAC = common dso_local global i32 0, align 4
@KC_A = common dso_local global i32 0, align 4
@KC_F1 = common dso_local global i32 0, align 4
@KC_F12 = common dso_local global i32 0, align 4
@KC_RBRC = common dso_local global i32 0, align 4
@MOD_LSFT = common dso_local global i32 0, align 4
@KC_M = common dso_local global i32 0, align 4
@music_scale = common dso_local global i32 0, align 4
@tone_fnmac = common dso_local global i32 0, align 4
@tone_fnpc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @_ADJUST, align 4
  %10 = call i32 @MO(i32 %9)
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DYN_REC_STOP, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @process_record_dynamic_macro(i32 %18, %struct.TYPE_6__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %170

23:                                               ; preds = %16
  %24 = load i32, i32* @layer_state, align 4
  %25 = call i64 @biton32(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %138 [
    i32 129, label %27
    i32 132, label %47
    i32 128, label %74
    i32 130, label %105
    i32 131, label %115
    i32 133, label %125
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32, i32* @KC_RSFT, align 4
  %35 = call i32 @register_code(i32 %34)
  %36 = load i32, i32* @KC_RCTL, align 4
  %37 = call i32 @register_code(i32 %36)
  %38 = load i32, i32* @KC_POWER, align 4
  %39 = call i32 @register_code(i32 %38)
  %40 = load i32, i32* @KC_POWER, align 4
  %41 = call i32 @unregister_code(i32 %40)
  %42 = load i32, i32* @KC_RCTL, align 4
  %43 = call i32 @unregister_code(i32 %42)
  %44 = load i32, i32* @KC_RSFT, align 4
  %45 = call i32 @unregister_code(i32 %44)
  br label %46

46:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %170

47:                                               ; preds = %23
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 (...) @timer_read()
  store i32 %54, i32* @key_timer, align 4
  store i32 1, i32* @singular_key, align 4
  %55 = load i32, i32* @function_layer, align 4
  %56 = call i32 @layer_on(i32 %55)
  br label %69

57:                                               ; preds = %47
  %58 = load i32, i32* @key_timer, align 4
  %59 = call i32 @timer_elapsed(i32 %58)
  %60 = load i32, i32* @LAYER_TOGGLE_DELAY, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @singular_key, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* @function_layer, align 4
  %67 = call i32 @layer_off(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* @function_layer, align 4
  %71 = load i32, i32* @_SHIFTED, align 4
  %72 = load i64, i64* @_FUNCSHIFT, align 8
  %73 = call i32 @update_tri_layer(i32 %70, i32 %71, i64 %72)
  store i32 0, i32* %3, align 4
  br label %170

74:                                               ; preds = %23
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = call i32 (...) @timer_read()
  store i32 %81, i32* @key_timer, align 4
  store i32 1, i32* @singular_key, align 4
  %82 = load i32, i32* @_SHIFTED, align 4
  %83 = call i32 @layer_on(i32 %82)
  %84 = load i32, i32* @KC_LSFT, align 4
  %85 = call i32 @register_code(i32 %84)
  br label %100

86:                                               ; preds = %74
  %87 = load i32, i32* @key_timer, align 4
  %88 = call i32 @timer_elapsed(i32 %87)
  %89 = load i32, i32* @LAYER_TOGGLE_DELAY, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @singular_key, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* @_SHIFTED, align 4
  %96 = call i32 @layer_off(i32 %95)
  %97 = load i32, i32* @KC_LSFT, align 4
  %98 = call i32 @unregister_code(i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %99, %80
  %101 = load i32, i32* @function_layer, align 4
  %102 = load i32, i32* @_SHIFTED, align 4
  %103 = load i64, i64* @_FUNCSHIFT, align 8
  %104 = call i32 @update_tri_layer(i32 %101, i32 %102, i64 %103)
  store i32 0, i32* %3, align 4
  br label %170

105:                                              ; preds = %23
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @_FUNCTIONPC, align 4
  %113 = call i32 @persistent_function_layer_set(i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  store i32 0, i32* %3, align 4
  br label %170

115:                                              ; preds = %23
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @_FUNCTIONMAC, align 4
  %123 = call i32 @persistent_function_layer_set(i32 %122)
  br label %124

124:                                              ; preds = %121, %115
  store i32 0, i32* %3, align 4
  br label %170

125:                                              ; preds = %23
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @KC_A, align 4
  %133 = call i32 @register_code(i32 %132)
  br label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @KC_A, align 4
  %136 = call i32 @unregister_code(i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  store i32 0, i32* %3, align 4
  br label %170

138:                                              ; preds = %23
  store i32 0, i32* @singular_key, align 4
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @_FUNCSHIFT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %169

143:                                              ; preds = %139
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @KC_F1, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @KC_F12, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @KC_RBRC, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151, %147
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @MOD_LSFT, align 4
  %163 = call i32 @unregister_mods(i32 %162)
  br label %167

164:                                              ; preds = %155
  %165 = load i32, i32* @MOD_LSFT, align 4
  %166 = call i32 @register_mods(i32 %165)
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %151
  br label %169

169:                                              ; preds = %168, %139
  store i32 1, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %137, %124, %114, %100, %69, %46, %22
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @MO(i32) #1

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i64) #1

declare dso_local i32 @persistent_function_layer_set(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @register_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
