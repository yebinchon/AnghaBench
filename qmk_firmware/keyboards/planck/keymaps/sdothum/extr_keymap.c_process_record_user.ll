; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sdothum/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/sdothum/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@base_n = common dso_local global i32 0, align 4
@BASE_1 = common dso_local global i32 0, align 4
@BASE_12 = common dso_local global i32 0, align 4
@BASE_2 = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@_NUMBER = common dso_local global i32 0, align 4
@_SYMBOL = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@_LSHIFT = common dso_local global i32 0, align 4
@KC_6 = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_4 = common dso_local global i32 0, align 4
@KC_G = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_5 = common dso_local global i32 0, align 4
@_MOUSE = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@NOSHIFT = common dso_local global i32 0, align 4
@KC_DEL = common dso_local global i32 0, align 4
@KC_BSLS = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_TAB = common dso_local global i32 0, align 4
@_FNCKEY = common dso_local global i32 0, align 4
@_RSHIFT = common dso_local global i32 0, align 4
@tt_keycode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %183 [
    i32 169, label %7
    i32 168, label %29
    i32 170, label %51
    i32 161, label %55
    i32 160, label %59
    i32 148, label %63
    i32 147, label %67
    i32 132, label %67
    i32 146, label %76
    i32 145, label %80
    i32 144, label %84
    i32 137, label %88
    i32 136, label %93
    i32 135, label %98
    i32 134, label %104
    i32 133, label %109
    i32 149, label %114
    i32 140, label %123
    i32 131, label %134
    i32 139, label %145
    i32 138, label %150
    i32 130, label %155
    i32 129, label %159
    i32 141, label %168
    i32 142, label %177
    i32 143, label %180
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load i32, i32* @base_n, align 4
  %15 = load i32, i32* @BASE_1, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* @base_n, align 4
  %17 = load i32, i32* @base_n, align 4
  %18 = load i32, i32* @BASE_12, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @base_layer()
  br label %22

22:                                               ; preds = %20, %13
  br label %28

23:                                               ; preds = %7
  %24 = load i32, i32* @base_n, align 4
  %25 = load i32, i32* @BASE_1, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* @base_n, align 4
  br label %28

28:                                               ; preds = %23, %22
  store i32 0, i32* %3, align 4
  br label %184

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* @base_n, align 4
  %37 = load i32, i32* @BASE_2, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* @base_n, align 4
  %39 = load i32, i32* @base_n, align 4
  %40 = load i32, i32* @BASE_12, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (...) @base_layer()
  br label %44

44:                                               ; preds = %42, %35
  br label %50

45:                                               ; preds = %29
  %46 = load i32, i32* @base_n, align 4
  %47 = load i32, i32* @BASE_2, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* @base_n, align 4
  br label %50

50:                                               ; preds = %45, %44
  store i32 0, i32* %3, align 4
  br label %184

51:                                               ; preds = %2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = load i32, i32* @KC_LALT, align 4
  %54 = call i32 @tap_mods(%struct.TYPE_12__* %52, i32 %53)
  br label %183

55:                                               ; preds = %2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load i32, i32* @KC_LCTL, align 4
  %58 = call i32 @tap_mods(%struct.TYPE_12__* %56, i32 %57)
  br label %183

59:                                               ; preds = %2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i32, i32* @KC_LGUI, align 4
  %62 = call i32 @tap_mods(%struct.TYPE_12__* %60, i32 %61)
  br label %183

63:                                               ; preds = %2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = load i32, i32* @_NUMBER, align 4
  %66 = call i32 @tap_layer(%struct.TYPE_12__* %64, i32 %65)
  br label %183

67:                                               ; preds = %2, %2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = load i32, i32* @_SYMBOL, align 4
  %70 = call i32 @tap_layer(%struct.TYPE_12__* %68, i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i32, i32* @RIGHT, align 4
  %73 = load i32, i32* @_SYMBOL, align 4
  %74 = load i32, i32* @_LSHIFT, align 4
  %75 = call i32 @thumb_layer(%struct.TYPE_12__* %71, i32 %72, i32 0, i32 0, i32 %73, i32 %74)
  br label %183

76:                                               ; preds = %2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = load i32, i32* @KC_LALT, align 4
  %79 = call i32 @tap_mods(%struct.TYPE_12__* %77, i32 %78)
  br label %183

80:                                               ; preds = %2
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = load i32, i32* @KC_LCTL, align 4
  %83 = call i32 @tap_mods(%struct.TYPE_12__* %81, i32 %82)
  br label %183

84:                                               ; preds = %2
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load i32, i32* @KC_LGUI, align 4
  %87 = call i32 @tap_mods(%struct.TYPE_12__* %85, i32 %86)
  br label %183

88:                                               ; preds = %2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load i32, i32* @KC_LGUI, align 4
  %91 = load i32, i32* @KC_6, align 4
  %92 = call i32 @mt_shift(%struct.TYPE_12__* %89, i32 %90, i32 0, i32 %91)
  br label %183

93:                                               ; preds = %2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = load i32, i32* @KC_LSFT, align 4
  %96 = load i32, i32* @KC_4, align 4
  %97 = call i32 @mt_shift(%struct.TYPE_12__* %94, i32 %95, i32 0, i32 %96)
  br label %183

98:                                               ; preds = %2
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = load i32, i32* @KC_LALT, align 4
  %101 = load i32, i32* @KC_LSFT, align 4
  %102 = load i32, i32* @KC_G, align 4
  %103 = call i32 @mt_shift(%struct.TYPE_12__* %99, i32 %100, i32 %101, i32 %102)
  br label %183

104:                                              ; preds = %2
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load i32, i32* @KC_LCTL, align 4
  %107 = load i32, i32* @KC_9, align 4
  %108 = call i32 @mt_shift(%struct.TYPE_12__* %105, i32 %106, i32 0, i32 %107)
  br label %183

109:                                              ; preds = %2
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = load i32, i32* @KC_LALT, align 4
  %112 = load i32, i32* @KC_5, align 4
  %113 = call i32 @mt_shift(%struct.TYPE_12__* %110, i32 %111, i32 0, i32 %112)
  br label %183

114:                                              ; preds = %2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = load i32, i32* @_MOUSE, align 4
  %117 = call i32 @tap_layer(%struct.TYPE_12__* %115, i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = load i32, i32* @LEFT, align 4
  %120 = load i32, i32* @_MOUSE, align 4
  %121 = load i32, i32* @_SYMBOL, align 4
  %122 = call i32 @thumb_layer(%struct.TYPE_12__* %118, i32 %119, i32 0, i32 0, i32 %120, i32 %121)
  br label %183

123:                                              ; preds = %2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = load i32, i32* @_MOUSE, align 4
  %126 = call i32 @tap_layer(%struct.TYPE_12__* %124, i32 %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = load i32, i32* @RIGHT, align 4
  %129 = load i32, i32* @SHIFT, align 4
  %130 = load i32, i32* @KC_LEFT, align 4
  %131 = load i32, i32* @_MOUSE, align 4
  %132 = load i32, i32* @_LSHIFT, align 4
  %133 = call i32 @thumb_layer(%struct.TYPE_12__* %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132)
  br label %183

134:                                              ; preds = %2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = load i32, i32* @_MOUSE, align 4
  %137 = call i32 @tap_layer(%struct.TYPE_12__* %135, i32 %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = load i32, i32* @RIGHT, align 4
  %140 = load i32, i32* @NOSHIFT, align 4
  %141 = load i32, i32* @KC_DEL, align 4
  %142 = load i32, i32* @_MOUSE, align 4
  %143 = load i32, i32* @_LSHIFT, align 4
  %144 = call i32 @thumb_layer(%struct.TYPE_12__* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  br label %183

145:                                              ; preds = %2
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = load i32, i32* @KC_BSLS, align 4
  %148 = load i32, i32* @_ADJUST, align 4
  %149 = call i32 @lt_shift(%struct.TYPE_12__* %146, i32 %147, i32 %148)
  br label %183

150:                                              ; preds = %2
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = load i32, i32* @KC_TAB, align 4
  %153 = load i32, i32* @_FNCKEY, align 4
  %154 = call i32 @lt_shift(%struct.TYPE_12__* %151, i32 %152, i32 %153)
  br label %183

155:                                              ; preds = %2
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = load i32, i32* @_RSHIFT, align 4
  %158 = call i32 @tap_layer(%struct.TYPE_12__* %156, i32 %157)
  br label %183

159:                                              ; preds = %2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = load i32, i32* @_LSHIFT, align 4
  %162 = call i32 @tap_layer(%struct.TYPE_12__* %160, i32 %161)
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = load i32, i32* @LEFT, align 4
  %165 = load i32, i32* @_LSHIFT, align 4
  %166 = load i32, i32* @_SYMBOL, align 4
  %167 = call i32 @thumb_layer(%struct.TYPE_12__* %163, i32 %164, i32 0, i32 0, i32 %165, i32 %166)
  br label %183

168:                                              ; preds = %2
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 (...) @base_layer()
  br label %176

176:                                              ; preds = %174, %168
  store i32 0, i32* %3, align 4
  br label %184

177:                                              ; preds = %2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = call i32 @steno(%struct.TYPE_12__* %178)
  store i32 0, i32* %3, align 4
  br label %184

180:                                              ; preds = %2
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = call i32 @steno_exit(%struct.TYPE_12__* %181)
  store i32 0, i32* %3, align 4
  br label %184

183:                                              ; preds = %2, %159, %155, %150, %145, %134, %123, %114, %109, %104, %98, %93, %88, %84, %80, %76, %67, %63, %59, %55, %51
  store i32 1, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %180, %177, %176, %50, %28
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @base_layer(...) #1

declare dso_local i32 @tap_mods(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @tap_layer(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @thumb_layer(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mt_shift(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @lt_shift(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @steno(%struct.TYPE_12__*) #1

declare dso_local i32 @steno_exit(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
