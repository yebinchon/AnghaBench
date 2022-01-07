; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@layer_state = common dso_local global i32 0, align 4
@key_timer = common dso_local global i32 0, align 4
@singular_key = common dso_local global i32 0, align 4
@_FUNCTION = common dso_local global i32 0, align 4
@LAYER_TOGGLE_DELAY = common dso_local global i32 0, align 4
@_SHIFTED = common dso_local global i32 0, align 4
@_FUNCSHIFT = common dso_local global i64 0, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@LONGPRESS_DELAY = common dso_local global i32 0, align 4
@KC_MPLY = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_MNXT = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4
@KC_APP = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4
@KC_F1 = common dso_local global i32 0, align 4
@KC_F12 = common dso_local global i32 0, align 4
@KC_RBRC = common dso_local global i32 0, align 4
@MOD_LSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32, i32* @layer_state, align 4
  %8 = call i64 @biton32(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %131 [
    i32 132, label %10
    i32 128, label %37
    i32 129, label %68
    i32 130, label %89
    i32 131, label %110
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = call i32 (...) @timer_read()
  store i32 %17, i32* @key_timer, align 4
  store i32 1, i32* @singular_key, align 4
  %18 = load i32, i32* @_FUNCTION, align 4
  %19 = call i32 @layer_on(i32 %18)
  br label %32

20:                                               ; preds = %10
  %21 = load i32, i32* @key_timer, align 4
  %22 = call i32 @timer_elapsed(i32 %21)
  %23 = load i32, i32* @LAYER_TOGGLE_DELAY, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @singular_key, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @_FUNCTION, align 4
  %30 = call i32 @layer_off(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* @_FUNCTION, align 4
  %34 = load i32, i32* @_SHIFTED, align 4
  %35 = load i64, i64* @_FUNCSHIFT, align 8
  %36 = call i32 @update_tri_layer(i32 %33, i32 %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %163

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = call i32 (...) @timer_read()
  store i32 %44, i32* @key_timer, align 4
  store i32 1, i32* @singular_key, align 4
  %45 = load i32, i32* @_SHIFTED, align 4
  %46 = call i32 @layer_on(i32 %45)
  %47 = load i32, i32* @KC_LSFT, align 4
  %48 = call i32 @register_code(i32 %47)
  br label %63

49:                                               ; preds = %37
  %50 = load i32, i32* @key_timer, align 4
  %51 = call i32 @timer_elapsed(i32 %50)
  %52 = load i32, i32* @LAYER_TOGGLE_DELAY, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @singular_key, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @_SHIFTED, align 4
  %59 = call i32 @layer_off(i32 %58)
  %60 = load i32, i32* @KC_LSFT, align 4
  %61 = call i32 @unregister_code(i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* @_FUNCTION, align 4
  %65 = load i32, i32* @_SHIFTED, align 4
  %66 = load i64, i64* @_FUNCSHIFT, align 8
  %67 = call i32 @update_tri_layer(i32 %64, i32 %65, i64 %66)
  store i32 0, i32* %3, align 4
  br label %163

68:                                               ; preds = %2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (...) @timer_read()
  store i32 %75, i32* @key_timer, align 4
  br label %88

76:                                               ; preds = %68
  %77 = load i32, i32* @key_timer, align 4
  %78 = call i32 @timer_elapsed(i32 %77)
  %79 = load i32, i32* @LONGPRESS_DELAY, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @KC_MPLY, align 4
  %83 = call i32 @tap_code(i32 %82)
  br label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @KC_VOLU, align 4
  %86 = call i32 @tap_code(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %74
  store i32 0, i32* %3, align 4
  br label %163

89:                                               ; preds = %2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 (...) @timer_read()
  store i32 %96, i32* @key_timer, align 4
  br label %109

97:                                               ; preds = %89
  %98 = load i32, i32* @key_timer, align 4
  %99 = call i32 @timer_elapsed(i32 %98)
  %100 = load i32, i32* @LONGPRESS_DELAY, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @KC_MNXT, align 4
  %104 = call i32 @tap_code(i32 %103)
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @KC_VOLD, align 4
  %107 = call i32 @tap_code(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %95
  store i32 0, i32* %3, align 4
  br label %163

110:                                              ; preds = %2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (...) @timer_read()
  store i32 %117, i32* @key_timer, align 4
  br label %130

118:                                              ; preds = %110
  %119 = load i32, i32* @key_timer, align 4
  %120 = call i32 @timer_elapsed(i32 %119)
  %121 = load i32, i32* @LONGPRESS_DELAY, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @KC_APP, align 4
  %125 = call i32 @tap_code(i32 %124)
  br label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @KC_ESC, align 4
  %128 = call i32 @tap_code(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %116
  store i32 0, i32* %3, align 4
  br label %163

131:                                              ; preds = %2
  store i32 0, i32* @singular_key, align 4
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @_FUNCSHIFT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %132
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @KC_F1, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @KC_F12, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @KC_RBRC, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144, %140
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @MOD_LSFT, align 4
  %156 = call i32 @unregister_mods(i32 %155)
  br label %160

157:                                              ; preds = %148
  %158 = load i32, i32* @MOD_LSFT, align 4
  %159 = call i32 @register_mods(i32 %158)
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %144
  br label %162

162:                                              ; preds = %161, %132
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %130, %109, %88, %63, %32
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i64) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @register_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
