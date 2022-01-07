; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/hieax/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/hieax/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@base_n = common dso_local global i32 0, align 4
@BASE_1 = common dso_local global i32 0, align 4
@BASE_12 = common dso_local global i32 0, align 4
@BASE_2 = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@NOSHIFT = common dso_local global i32 0, align 4
@KC_SPC = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@_SYMBOL = common dso_local global i32 0, align 4
@_NUMBER = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@_LSHIFT = common dso_local global i32 0, align 4
@KC_6 = common dso_local global i32 0, align 4
@KC_4 = common dso_local global i32 0, align 4
@KC_G = common dso_local global i32 0, align 4
@KC_H = common dso_local global i32 0, align 4
@KC_W = common dso_local global i32 0, align 4
@KC_5 = common dso_local global i32 0, align 4
@_MOUSE = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@KC_DEL = common dso_local global i32 0, align 4
@KC_TAB = common dso_local global i32 0, align 4
@_FNCKEY = common dso_local global i32 0, align 4
@_RSHIFT = common dso_local global i32 0, align 4
@KC_A = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@KC_T = common dso_local global i32 0, align 4
@tt_keycode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %180 [
    i32 166, label %7
    i32 165, label %29
    i32 167, label %51
    i32 158, label %55
    i32 157, label %59
    i32 140, label %63
    i32 147, label %70
    i32 146, label %74
    i32 132, label %74
    i32 145, label %83
    i32 144, label %87
    i32 143, label %91
    i32 138, label %95
    i32 137, label %100
    i32 136, label %105
    i32 135, label %111
    i32 133, label %117
    i32 134, label %123
    i32 148, label %128
    i32 141, label %137
    i32 131, label %148
    i32 139, label %159
    i32 130, label %164
    i32 129, label %168
    i32 142, label %177
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
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
  br label %181

29:                                               ; preds = %2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
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
  br label %181

51:                                               ; preds = %2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i32, i32* @KC_LALT, align 4
  %54 = call i32 @tap_mods(%struct.TYPE_13__* %52, i32 %53)
  br label %180

55:                                               ; preds = %2
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = load i32, i32* @KC_LGUI, align 4
  %58 = call i32 @tap_mods(%struct.TYPE_13__* %56, i32 %57)
  br label %180

59:                                               ; preds = %2
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = load i32, i32* @KC_LCTL, align 4
  %62 = call i32 @tap_mods(%struct.TYPE_13__* %60, i32 %61)
  br label %180

63:                                               ; preds = %2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* @NOSHIFT, align 4
  %66 = load i32, i32* @KC_SPC, align 4
  %67 = load i32, i32* @KC_LSFT, align 4
  %68 = load i32, i32* @_SYMBOL, align 4
  %69 = call i32 @lt(%struct.TYPE_13__* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %180

70:                                               ; preds = %2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i32, i32* @_NUMBER, align 4
  %73 = call i32 @tap_layer(%struct.TYPE_13__* %71, i32 %72)
  br label %180

74:                                               ; preds = %2, %2
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = load i32, i32* @_SYMBOL, align 4
  %77 = call i32 @tap_layer(%struct.TYPE_13__* %75, i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = load i32, i32* @RIGHT, align 4
  %80 = load i32, i32* @_SYMBOL, align 4
  %81 = load i32, i32* @_LSHIFT, align 4
  %82 = call i32 @thumb_layer(%struct.TYPE_13__* %78, i32 %79, i32 0, i32 0, i32 %80, i32 %81)
  br label %180

83:                                               ; preds = %2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = load i32, i32* @KC_LALT, align 4
  %86 = call i32 @tap_mods(%struct.TYPE_13__* %84, i32 %85)
  br label %180

87:                                               ; preds = %2
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = load i32, i32* @KC_LCTL, align 4
  %90 = call i32 @tap_mods(%struct.TYPE_13__* %88, i32 %89)
  br label %180

91:                                               ; preds = %2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = load i32, i32* @KC_LGUI, align 4
  %94 = call i32 @tap_mods(%struct.TYPE_13__* %92, i32 %93)
  br label %180

95:                                               ; preds = %2
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = load i32, i32* @KC_LGUI, align 4
  %98 = load i32, i32* @KC_6, align 4
  %99 = call i32 @mt_shift(%struct.TYPE_13__* %96, i32 %97, i32 0, i32 %98)
  br label %180

100:                                              ; preds = %2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = load i32, i32* @KC_LSFT, align 4
  %103 = load i32, i32* @KC_4, align 4
  %104 = call i32 @mt_shift(%struct.TYPE_13__* %101, i32 %102, i32 0, i32 %103)
  br label %180

105:                                              ; preds = %2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = load i32, i32* @KC_LALT, align 4
  %108 = load i32, i32* @KC_LSFT, align 4
  %109 = load i32, i32* @KC_G, align 4
  %110 = call i32 @mt_shift(%struct.TYPE_13__* %106, i32 %107, i32 %108, i32 %109)
  br label %180

111:                                              ; preds = %2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = load i32, i32* @KC_LCTL, align 4
  %114 = load i32, i32* @KC_LSFT, align 4
  %115 = load i32, i32* @KC_H, align 4
  %116 = call i32 @mt_shift(%struct.TYPE_13__* %112, i32 %113, i32 %114, i32 %115)
  br label %180

117:                                              ; preds = %2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = load i32, i32* @KC_LGUI, align 4
  %120 = load i32, i32* @KC_LSFT, align 4
  %121 = load i32, i32* @KC_W, align 4
  %122 = call i32 @mt_shift(%struct.TYPE_13__* %118, i32 %119, i32 %120, i32 %121)
  br label %180

123:                                              ; preds = %2
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = load i32, i32* @KC_LALT, align 4
  %126 = load i32, i32* @KC_5, align 4
  %127 = call i32 @mt_shift(%struct.TYPE_13__* %124, i32 %125, i32 0, i32 %126)
  br label %180

128:                                              ; preds = %2
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = load i32, i32* @_MOUSE, align 4
  %131 = call i32 @tap_layer(%struct.TYPE_13__* %129, i32 %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = load i32, i32* @LEFT, align 4
  %134 = load i32, i32* @_MOUSE, align 4
  %135 = load i32, i32* @_SYMBOL, align 4
  %136 = call i32 @thumb_layer(%struct.TYPE_13__* %132, i32 %133, i32 0, i32 0, i32 %134, i32 %135)
  br label %180

137:                                              ; preds = %2
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = load i32, i32* @_MOUSE, align 4
  %140 = call i32 @tap_layer(%struct.TYPE_13__* %138, i32 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = load i32, i32* @RIGHT, align 4
  %143 = load i32, i32* @SHIFT, align 4
  %144 = load i32, i32* @KC_LEFT, align 4
  %145 = load i32, i32* @_MOUSE, align 4
  %146 = load i32, i32* @_LSHIFT, align 4
  %147 = call i32 @thumb_layer(%struct.TYPE_13__* %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  br label %180

148:                                              ; preds = %2
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = load i32, i32* @_MOUSE, align 4
  %151 = call i32 @tap_layer(%struct.TYPE_13__* %149, i32 %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = load i32, i32* @RIGHT, align 4
  %154 = load i32, i32* @NOSHIFT, align 4
  %155 = load i32, i32* @KC_DEL, align 4
  %156 = load i32, i32* @_MOUSE, align 4
  %157 = load i32, i32* @_LSHIFT, align 4
  %158 = call i32 @thumb_layer(%struct.TYPE_13__* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  br label %180

159:                                              ; preds = %2
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = load i32, i32* @KC_TAB, align 4
  %162 = load i32, i32* @_FNCKEY, align 4
  %163 = call i32 @lt_shift(%struct.TYPE_13__* %160, i32 %161, i32 %162)
  br label %180

164:                                              ; preds = %2
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = load i32, i32* @_RSHIFT, align 4
  %167 = call i32 @tap_layer(%struct.TYPE_13__* %165, i32 %166)
  br label %180

168:                                              ; preds = %2
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = load i32, i32* @_LSHIFT, align 4
  %171 = call i32 @tap_layer(%struct.TYPE_13__* %169, i32 %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %173 = load i32, i32* @LEFT, align 4
  %174 = load i32, i32* @_LSHIFT, align 4
  %175 = load i32, i32* @_SYMBOL, align 4
  %176 = call i32 @thumb_layer(%struct.TYPE_13__* %172, i32 %173, i32 0, i32 0, i32 %174, i32 %175)
  br label %180

177:                                              ; preds = %2
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = call i32 @steno(%struct.TYPE_13__* %178)
  store i32 0, i32* %3, align 4
  br label %181

180:                                              ; preds = %2, %168, %164, %159, %148, %137, %128, %123, %117, %111, %105, %100, %95, %91, %87, %83, %74, %70, %63, %59, %55, %51
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %177, %50, %28
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @base_layer(...) #1

declare dso_local i32 @tap_mods(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lt(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @tap_layer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @thumb_layer(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mt_shift(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @lt_shift(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @steno(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
