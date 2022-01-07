; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/samuel/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/samuel/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_DVORAK = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i32 0, align 4
@KC_9 = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_0 = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4
@KC_GRAVE = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_BSLASH = common dso_local global i32 0, align 4
@KC_RGUI = common dso_local global i32 0, align 4
@KC_LBRACKET = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_RBRACKET = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_EQUAL = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_MINUS = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@tap_timer = common dso_local global i32 0, align 4
@last_mod = common dso_local global i32 0, align 4
@_RISE = common dso_local global i32 0, align 4
@TAPPING_TERM = common dso_local global i32 0, align 4
@KC_DELETE = common dso_local global i32 0, align 4
@KC_SLASH = common dso_local global i32 0, align 4
@MOD_LSFT = common dso_local global i32 0, align 4
@MOD_LCTL = common dso_local global i32 0, align 4
@MOD_LALT = common dso_local global i32 0, align 4
@MOD_LGUI = common dso_local global i32 0, align 4
@KC_RGHT = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@KC_DOWN = common dso_local global i32 0, align 4
@KC_UP = common dso_local global i32 0, align 4
@KC_Z = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_X = common dso_local global i32 0, align 4
@KC_V = common dso_local global i32 0, align 4
@_COMMAND = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@ONESHOT_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mhostley\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mhostley@gmail.com\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Samuel Jahnke\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"home/mhostley/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %397 [
    i32 154, label %7
    i32 139, label %17
    i32 138, label %27
    i32 133, label %44
    i32 136, label %61
    i32 131, label %76
    i32 137, label %91
    i32 132, label %106
    i32 134, label %121
    i32 129, label %136
    i32 135, label %151
    i32 130, label %176
    i32 143, label %201
    i32 150, label %211
    i32 152, label %221
    i32 147, label %231
    i32 144, label %241
    i32 146, label %256
    i32 148, label %271
    i32 141, label %286
    i32 142, label %301
    i32 151, label %312
    i32 149, label %323
    i32 145, label %334
    i32 156, label %345
    i32 128, label %361
    i32 153, label %370
    i32 140, label %379
    i32 155, label %388
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_DVORAK, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 1, i32* %3, align 4
  br label %398

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_QWERTY, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 1, i32* %3, align 4
  br label %398

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @KC_9, align 4
  %35 = call i32 @S(i32 %34)
  %36 = load i32, i32* @KC_LALT, align 4
  %37 = call i32 @mod_press(i32 %35, i32 %36, i32 0)
  br label %43

38:                                               ; preds = %27
  %39 = load i32, i32* @KC_9, align 4
  %40 = call i32 @S(i32 %39)
  %41 = load i32, i32* @KC_LALT, align 4
  %42 = call i32 @mod_lift(i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %398

44:                                               ; preds = %2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @KC_0, align 4
  %52 = call i32 @S(i32 %51)
  %53 = load i32, i32* @KC_RALT, align 4
  %54 = call i32 @mod_press(i32 %52, i32 %53, i32 1)
  br label %60

55:                                               ; preds = %44
  %56 = load i32, i32* @KC_0, align 4
  %57 = call i32 @S(i32 %56)
  %58 = load i32, i32* @KC_RALT, align 4
  %59 = call i32 @mod_lift(i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %398

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @KC_GRAVE, align 4
  %69 = load i32, i32* @KC_LGUI, align 4
  %70 = call i32 @mod_press(i32 %68, i32 %69, i32 2)
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @KC_GRAVE, align 4
  %73 = load i32, i32* @KC_LGUI, align 4
  %74 = call i32 @mod_lift(i32 %72, i32 %73, i32 2)
  br label %75

75:                                               ; preds = %71, %67
  store i32 0, i32* %3, align 4
  br label %398

76:                                               ; preds = %2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @KC_BSLASH, align 4
  %84 = load i32, i32* @KC_RGUI, align 4
  %85 = call i32 @mod_press(i32 %83, i32 %84, i32 3)
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @KC_BSLASH, align 4
  %88 = load i32, i32* @KC_RGUI, align 4
  %89 = call i32 @mod_lift(i32 %87, i32 %88, i32 3)
  br label %90

90:                                               ; preds = %86, %82
  store i32 0, i32* %3, align 4
  br label %398

91:                                               ; preds = %2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @KC_LBRACKET, align 4
  %99 = load i32, i32* @KC_LCTL, align 4
  %100 = call i32 @mod_press(i32 %98, i32 %99, i32 4)
  br label %105

101:                                              ; preds = %91
  %102 = load i32, i32* @KC_LBRACKET, align 4
  %103 = load i32, i32* @KC_LCTL, align 4
  %104 = call i32 @mod_lift(i32 %102, i32 %103, i32 4)
  br label %105

105:                                              ; preds = %101, %97
  store i32 0, i32* %3, align 4
  br label %398

106:                                              ; preds = %2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @KC_RBRACKET, align 4
  %114 = load i32, i32* @KC_RCTL, align 4
  %115 = call i32 @mod_press(i32 %113, i32 %114, i32 5)
  br label %120

116:                                              ; preds = %106
  %117 = load i32, i32* @KC_RBRACKET, align 4
  %118 = load i32, i32* @KC_RCTL, align 4
  %119 = call i32 @mod_lift(i32 %117, i32 %118, i32 5)
  br label %120

120:                                              ; preds = %116, %112
  store i32 0, i32* %3, align 4
  br label %398

121:                                              ; preds = %2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @KC_EQUAL, align 4
  %129 = load i32, i32* @KC_LSFT, align 4
  %130 = call i32 @mod_press(i32 %128, i32 %129, i32 6)
  br label %135

131:                                              ; preds = %121
  %132 = load i32, i32* @KC_EQUAL, align 4
  %133 = load i32, i32* @KC_LSFT, align 4
  %134 = call i32 @mod_lift(i32 %132, i32 %133, i32 6)
  br label %135

135:                                              ; preds = %131, %127
  store i32 0, i32* %3, align 4
  br label %398

136:                                              ; preds = %2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* @KC_MINUS, align 4
  %144 = load i32, i32* @KC_RSFT, align 4
  %145 = call i32 @mod_press(i32 %143, i32 %144, i32 7)
  br label %150

146:                                              ; preds = %136
  %147 = load i32, i32* @KC_MINUS, align 4
  %148 = load i32, i32* @KC_RSFT, align 4
  %149 = call i32 @mod_lift(i32 %147, i32 %148, i32 7)
  br label %150

150:                                              ; preds = %146, %142
  store i32 0, i32* %3, align 4
  br label %398

151:                                              ; preds = %2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = call i32 (...) @timer_read()
  store i32 %158, i32* @tap_timer, align 4
  store i32 8, i32* @last_mod, align 4
  %159 = load i32, i32* @_RISE, align 4
  %160 = call i32 @layer_on(i32 %159)
  br label %175

161:                                              ; preds = %151
  %162 = load i32, i32* @_RISE, align 4
  %163 = call i32 @layer_off(i32 %162)
  %164 = load i32, i32* @last_mod, align 4
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i32, i32* @tap_timer, align 4
  %168 = call i32 @timer_elapsed(i32 %167)
  %169 = load i32, i32* @TAPPING_TERM, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @KC_DELETE, align 4
  %173 = call i32 @tap_code16(i32 %172)
  store i32 10, i32* @last_mod, align 4
  br label %174

174:                                              ; preds = %171, %166, %161
  br label %175

175:                                              ; preds = %174, %157
  store i32 0, i32* %3, align 4
  br label %398

176:                                              ; preds = %2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = call i32 (...) @timer_read()
  store i32 %183, i32* @tap_timer, align 4
  store i32 9, i32* @last_mod, align 4
  %184 = load i32, i32* @_RISE, align 4
  %185 = call i32 @layer_on(i32 %184)
  br label %200

186:                                              ; preds = %176
  %187 = load i32, i32* @_RISE, align 4
  %188 = call i32 @layer_off(i32 %187)
  %189 = load i32, i32* @last_mod, align 4
  %190 = icmp eq i32 %189, 9
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i32, i32* @tap_timer, align 4
  %193 = call i32 @timer_elapsed(i32 %192)
  %194 = load i32, i32* @TAPPING_TERM, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* @KC_SLASH, align 4
  %198 = call i32 @tap_code16(i32 %197)
  store i32 10, i32* @last_mod, align 4
  br label %199

199:                                              ; preds = %196, %191, %186
  br label %200

200:                                              ; preds = %199, %182
  store i32 0, i32* %3, align 4
  br label %398

201:                                              ; preds = %2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* @MOD_LSFT, align 4
  %209 = call i32 @set_oneshot_mods(i32 %208)
  store i32 10, i32* @last_mod, align 4
  br label %210

210:                                              ; preds = %207, %201
  store i32 0, i32* %3, align 4
  br label %398

211:                                              ; preds = %2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* @MOD_LCTL, align 4
  %219 = call i32 @set_oneshot_mods(i32 %218)
  store i32 10, i32* @last_mod, align 4
  br label %220

220:                                              ; preds = %217, %211
  store i32 0, i32* %3, align 4
  br label %398

221:                                              ; preds = %2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i32, i32* @MOD_LALT, align 4
  %229 = call i32 @set_oneshot_mods(i32 %228)
  store i32 10, i32* @last_mod, align 4
  br label %230

230:                                              ; preds = %227, %221
  store i32 0, i32* %3, align 4
  br label %398

231:                                              ; preds = %2
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* @MOD_LGUI, align 4
  %239 = call i32 @set_oneshot_mods(i32 %238)
  store i32 10, i32* @last_mod, align 4
  br label %240

240:                                              ; preds = %237, %231
  store i32 0, i32* %3, align 4
  br label %398

241:                                              ; preds = %2
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %241
  %248 = load i32, i32* @KC_LCTL, align 4
  %249 = call i32 @register_code(i32 %248)
  %250 = load i32, i32* @KC_RGHT, align 4
  %251 = call i32 @S(i32 %250)
  %252 = call i32 @tap_code16(i32 %251)
  %253 = load i32, i32* @KC_LCTL, align 4
  %254 = call i32 @unregister_code(i32 %253)
  store i32 10, i32* @last_mod, align 4
  br label %255

255:                                              ; preds = %247, %241
  store i32 0, i32* %3, align 4
  br label %398

256:                                              ; preds = %2
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %256
  %263 = load i32, i32* @KC_LCTL, align 4
  %264 = call i32 @register_code(i32 %263)
  %265 = load i32, i32* @KC_LEFT, align 4
  %266 = call i32 @S(i32 %265)
  %267 = call i32 @tap_code16(i32 %266)
  %268 = load i32, i32* @KC_LCTL, align 4
  %269 = call i32 @unregister_code(i32 %268)
  store i32 10, i32* @last_mod, align 4
  br label %270

270:                                              ; preds = %262, %256
  store i32 0, i32* %3, align 4
  br label %398

271:                                              ; preds = %2
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %271
  %278 = load i32, i32* @KC_LCTL, align 4
  %279 = call i32 @register_code(i32 %278)
  %280 = load i32, i32* @KC_DOWN, align 4
  %281 = call i32 @S(i32 %280)
  %282 = call i32 @tap_code16(i32 %281)
  %283 = load i32, i32* @KC_LCTL, align 4
  %284 = call i32 @unregister_code(i32 %283)
  store i32 10, i32* @last_mod, align 4
  br label %285

285:                                              ; preds = %277, %271
  store i32 0, i32* %3, align 4
  br label %398

286:                                              ; preds = %2
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %286
  %293 = load i32, i32* @KC_LCTL, align 4
  %294 = call i32 @register_code(i32 %293)
  %295 = load i32, i32* @KC_UP, align 4
  %296 = call i32 @S(i32 %295)
  %297 = call i32 @tap_code16(i32 %296)
  %298 = load i32, i32* @KC_LCTL, align 4
  %299 = call i32 @unregister_code(i32 %298)
  store i32 10, i32* @last_mod, align 4
  br label %300

300:                                              ; preds = %292, %286
  store i32 0, i32* %3, align 4
  br label %398

301:                                              ; preds = %2
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %301
  %308 = load i32, i32* @KC_Z, align 4
  %309 = call i32 @C(i32 %308)
  %310 = call i32 @tap_code16(i32 %309)
  store i32 10, i32* @last_mod, align 4
  br label %311

311:                                              ; preds = %307, %301
  store i32 0, i32* %3, align 4
  br label %398

312:                                              ; preds = %2
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = load i32, i32* @KC_C, align 4
  %320 = call i32 @C(i32 %319)
  %321 = call i32 @tap_code16(i32 %320)
  store i32 10, i32* @last_mod, align 4
  br label %322

322:                                              ; preds = %318, %312
  store i32 0, i32* %3, align 4
  br label %398

323:                                              ; preds = %2
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load i32, i32* @KC_X, align 4
  %331 = call i32 @C(i32 %330)
  %332 = call i32 @tap_code16(i32 %331)
  store i32 10, i32* @last_mod, align 4
  br label %333

333:                                              ; preds = %329, %323
  store i32 0, i32* %3, align 4
  br label %398

334:                                              ; preds = %2
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %334
  %341 = load i32, i32* @KC_V, align 4
  %342 = call i32 @C(i32 %341)
  %343 = call i32 @tap_code16(i32 %342)
  store i32 10, i32* @last_mod, align 4
  br label %344

344:                                              ; preds = %340, %334
  store i32 0, i32* %3, align 4
  br label %398

345:                                              ; preds = %2
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %345
  %352 = load i32, i32* @_COMMAND, align 4
  %353 = call i32 @layer_on(i32 %352)
  %354 = load i32, i32* @_COMMAND, align 4
  %355 = load i32, i32* @ONESHOT_START, align 4
  %356 = call i32 @set_oneshot_layer(i32 %354, i32 %355)
  store i32 10, i32* @last_mod, align 4
  br label %360

357:                                              ; preds = %345
  %358 = load i32, i32* @ONESHOT_PRESSED, align 4
  %359 = call i32 @clear_oneshot_layer_state(i32 %358)
  br label %360

360:                                              ; preds = %357, %351
  store i32 0, i32* %3, align 4
  br label %398

361:                                              ; preds = %2
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %361
  %368 = call i32 @send_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* @last_mod, align 4
  br label %369

369:                                              ; preds = %367, %361
  store i32 1, i32* %3, align 4
  br label %398

370:                                              ; preds = %2
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = call i32 @send_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 10, i32* @last_mod, align 4
  br label %378

378:                                              ; preds = %376, %370
  store i32 1, i32* %3, align 4
  br label %398

379:                                              ; preds = %2
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %379
  %386 = call i32 @send_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 10, i32* @last_mod, align 4
  br label %387

387:                                              ; preds = %385, %379
  store i32 1, i32* %3, align 4
  br label %398

388:                                              ; preds = %2
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %388
  %395 = call i32 @send_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 10, i32* @last_mod, align 4
  br label %396

396:                                              ; preds = %394, %388
  store i32 1, i32* %3, align 4
  br label %398

397:                                              ; preds = %2
  store i32 10, i32* @last_mod, align 4
  store i32 1, i32* %3, align 4
  br label %398

398:                                              ; preds = %397, %396, %387, %378, %369, %360, %344, %333, %322, %311, %300, %285, %270, %255, %240, %230, %220, %210, %200, %175, %150, %135, %120, %105, %90, %75, %60, %43, %26, %16
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @mod_press(i32, i32, i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @mod_lift(i32, i32, i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @set_oneshot_mods(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @C(i32) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @send_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
