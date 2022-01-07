; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/workman_osx_mdw/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/workman_osx_mdw/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_RSFT = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@FN4 = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@SLSH = common dso_local global i32 0, align 4
@EQL = common dso_local global i32 0, align 4
@MINS = common dso_local global i32 0, align 4
@LBRC = common dso_local global i32 0, align 4
@RBRC = common dso_local global i32 0, align 4
@QUOT = common dso_local global i32 0, align 4
@BSLS = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %312 [
    i32 0, label %9
    i32 100, label %22
    i32 101, label %33
    i32 102, label %44
    i32 103, label %56
    i32 104, label %68
    i32 105, label %79
    i32 106, label %90
    i32 107, label %102
    i32 108, label %110
    i32 130, label %118
    i32 109, label %129
    i32 110, label %137
    i32 111, label %148
    i32 112, label %156
    i32 113, label %163
    i32 114, label %175
    i32 115, label %187
    i32 116, label %194
    i32 117, label %205
    i32 118, label %216
    i32 119, label %224
    i32 120, label %236
    i32 121, label %243
    i32 122, label %250
    i32 123, label %257
    i32 124, label %264
    i32 125, label %276
    i32 126, label %284
    i32 127, label %291
    i32 128, label %298
    i32 129, label %305
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @KC_RSFT, align 4
  %17 = call i32 @register_code(i32 %16)
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @KC_RSFT, align 4
  %20 = call i32 @unregister_code(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %314

22:                                               ; preds = %3
  %23 = call i32 (...) @layer_clear()
  %24 = load i32, i32* @LSFT, align 4
  %25 = call i32 @D(i32 %24)
  %26 = call i32 @T(i32 5)
  %27 = load i32, i32* @LSFT, align 4
  %28 = call i32 @U(i32 %27)
  %29 = load i32, i32* @FN4, align 4
  %30 = call i32 @T(i32 %29)
  %31 = load i32, i32* @END, align 4
  %32 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %25, i32 %26, i32 %28, i32 %30, i32 %31)
  store i32* %32, i32** %4, align 8
  br label %316

33:                                               ; preds = %3
  %34 = call i32 (...) @layer_clear()
  %35 = load i32, i32* @LSFT, align 4
  %36 = call i32 @D(i32 %35)
  %37 = call i32 @T(i32 7)
  %38 = load i32, i32* @LSFT, align 4
  %39 = call i32 @U(i32 %38)
  %40 = load i32, i32* @FN4, align 4
  %41 = call i32 @T(i32 %40)
  %42 = load i32, i32* @END, align 4
  %43 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %36, i32 %37, i32 %39, i32 %41, i32 %42)
  store i32* %43, i32** %4, align 8
  br label %316

44:                                               ; preds = %3
  %45 = call i32 (...) @layer_clear()
  %46 = load i32, i32* @LSFT, align 4
  %47 = call i32 @D(i32 %46)
  %48 = load i32, i32* @SLSH, align 4
  %49 = call i32 @T(i32 %48)
  %50 = load i32, i32* @LSFT, align 4
  %51 = call i32 @U(i32 %50)
  %52 = load i32, i32* @FN4, align 4
  %53 = call i32 @T(i32 %52)
  %54 = load i32, i32* @END, align 4
  %55 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %47, i32 %49, i32 %51, i32 %53, i32 %54)
  store i32* %55, i32** %4, align 8
  br label %316

56:                                               ; preds = %3
  %57 = call i32 (...) @layer_clear()
  %58 = load i32, i32* @LSFT, align 4
  %59 = call i32 @D(i32 %58)
  %60 = load i32, i32* @EQL, align 4
  %61 = call i32 @T(i32 %60)
  %62 = load i32, i32* @LSFT, align 4
  %63 = call i32 @U(i32 %62)
  %64 = load i32, i32* @FN4, align 4
  %65 = call i32 @T(i32 %64)
  %66 = load i32, i32* @END, align 4
  %67 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %59, i32 %61, i32 %63, i32 %65, i32 %66)
  store i32* %67, i32** %4, align 8
  br label %316

68:                                               ; preds = %3
  %69 = call i32 (...) @layer_clear()
  %70 = load i32, i32* @LSFT, align 4
  %71 = call i32 @D(i32 %70)
  %72 = call i32 @T(i32 2)
  %73 = load i32, i32* @LSFT, align 4
  %74 = call i32 @U(i32 %73)
  %75 = load i32, i32* @FN4, align 4
  %76 = call i32 @T(i32 %75)
  %77 = load i32, i32* @END, align 4
  %78 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %71, i32 %72, i32 %74, i32 %76, i32 %77)
  store i32* %78, i32** %4, align 8
  br label %316

79:                                               ; preds = %3
  %80 = call i32 (...) @layer_clear()
  %81 = load i32, i32* @LSFT, align 4
  %82 = call i32 @D(i32 %81)
  %83 = call i32 @T(i32 4)
  %84 = load i32, i32* @LSFT, align 4
  %85 = call i32 @U(i32 %84)
  %86 = load i32, i32* @FN4, align 4
  %87 = call i32 @T(i32 %86)
  %88 = load i32, i32* @END, align 4
  %89 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %82, i32 %83, i32 %85, i32 %87, i32 %88)
  store i32* %89, i32** %4, align 8
  br label %316

90:                                               ; preds = %3
  %91 = call i32 (...) @layer_clear()
  %92 = load i32, i32* @LSFT, align 4
  %93 = call i32 @D(i32 %92)
  %94 = load i32, i32* @MINS, align 4
  %95 = call i32 @T(i32 %94)
  %96 = load i32, i32* @LSFT, align 4
  %97 = call i32 @U(i32 %96)
  %98 = load i32, i32* @FN4, align 4
  %99 = call i32 @T(i32 %98)
  %100 = load i32, i32* @END, align 4
  %101 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %93, i32 %95, i32 %97, i32 %99, i32 %100)
  store i32* %101, i32** %4, align 8
  br label %316

102:                                              ; preds = %3
  %103 = call i32 (...) @layer_clear()
  %104 = load i32, i32* @LBRC, align 4
  %105 = call i32 @T(i32 %104)
  %106 = load i32, i32* @FN4, align 4
  %107 = call i32 @T(i32 %106)
  %108 = load i32, i32* @END, align 4
  %109 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %105, i32 %107, i32 %108)
  store i32* %109, i32** %4, align 8
  br label %316

110:                                              ; preds = %3
  %111 = call i32 (...) @layer_clear()
  %112 = load i32, i32* @RBRC, align 4
  %113 = call i32 @T(i32 %112)
  %114 = load i32, i32* @FN4, align 4
  %115 = call i32 @T(i32 %114)
  %116 = load i32, i32* @END, align 4
  %117 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %113, i32 %115, i32 %116)
  store i32* %117, i32** %4, align 8
  br label %316

118:                                              ; preds = %3
  %119 = call i32 (...) @layer_clear()
  %120 = load i32, i32* @LSFT, align 4
  %121 = call i32 @D(i32 %120)
  %122 = call i32 @T(i32 1)
  %123 = load i32, i32* @LSFT, align 4
  %124 = call i32 @U(i32 %123)
  %125 = load i32, i32* @FN4, align 4
  %126 = call i32 @T(i32 %125)
  %127 = load i32, i32* @END, align 4
  %128 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %121, i32 %122, i32 %124, i32 %126, i32 %127)
  store i32* %128, i32** %4, align 8
  br label %316

129:                                              ; preds = %3
  %130 = call i32 (...) @layer_clear()
  %131 = load i32, i32* @SLSH, align 4
  %132 = call i32 @T(i32 %131)
  %133 = load i32, i32* @FN4, align 4
  %134 = call i32 @T(i32 %133)
  %135 = load i32, i32* @END, align 4
  %136 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %132, i32 %134, i32 %135)
  store i32* %136, i32** %4, align 8
  br label %316

137:                                              ; preds = %3
  %138 = call i32 (...) @layer_clear()
  %139 = load i32, i32* @LSFT, align 4
  %140 = call i32 @D(i32 %139)
  %141 = call i32 @T(i32 9)
  %142 = load i32, i32* @LSFT, align 4
  %143 = call i32 @U(i32 %142)
  %144 = load i32, i32* @FN4, align 4
  %145 = call i32 @T(i32 %144)
  %146 = load i32, i32* @END, align 4
  %147 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %140, i32 %141, i32 %143, i32 %145, i32 %146)
  store i32* %147, i32** %4, align 8
  br label %316

148:                                              ; preds = %3
  %149 = call i32 (...) @layer_clear()
  %150 = load i32, i32* @EQL, align 4
  %151 = call i32 @T(i32 %150)
  %152 = load i32, i32* @FN4, align 4
  %153 = call i32 @T(i32 %152)
  %154 = load i32, i32* @END, align 4
  %155 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %151, i32 %153, i32 %154)
  store i32* %155, i32** %4, align 8
  br label %316

156:                                              ; preds = %3
  %157 = call i32 (...) @layer_clear()
  %158 = call i32 @T(i32 0)
  %159 = load i32, i32* @FN4, align 4
  %160 = call i32 @T(i32 %159)
  %161 = load i32, i32* @END, align 4
  %162 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %158, i32 %160, i32 %161)
  store i32* %162, i32** %4, align 8
  br label %316

163:                                              ; preds = %3
  %164 = call i32 (...) @layer_clear()
  %165 = load i32, i32* @LSFT, align 4
  %166 = call i32 @D(i32 %165)
  %167 = load i32, i32* @LBRC, align 4
  %168 = call i32 @T(i32 %167)
  %169 = load i32, i32* @LSFT, align 4
  %170 = call i32 @U(i32 %169)
  %171 = load i32, i32* @FN4, align 4
  %172 = call i32 @T(i32 %171)
  %173 = load i32, i32* @END, align 4
  %174 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %166, i32 %168, i32 %170, i32 %172, i32 %173)
  store i32* %174, i32** %4, align 8
  br label %316

175:                                              ; preds = %3
  %176 = call i32 (...) @layer_clear()
  %177 = load i32, i32* @LSFT, align 4
  %178 = call i32 @D(i32 %177)
  %179 = load i32, i32* @RBRC, align 4
  %180 = call i32 @T(i32 %179)
  %181 = load i32, i32* @LSFT, align 4
  %182 = call i32 @U(i32 %181)
  %183 = load i32, i32* @FN4, align 4
  %184 = call i32 @T(i32 %183)
  %185 = load i32, i32* @END, align 4
  %186 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %178, i32 %180, i32 %182, i32 %184, i32 %185)
  store i32* %186, i32** %4, align 8
  br label %316

187:                                              ; preds = %3
  %188 = call i32 (...) @layer_clear()
  %189 = call i32 @T(i32 1)
  %190 = load i32, i32* @FN4, align 4
  %191 = call i32 @T(i32 %190)
  %192 = load i32, i32* @END, align 4
  %193 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %189, i32 %191, i32 %192)
  store i32* %193, i32** %4, align 8
  br label %316

194:                                              ; preds = %3
  %195 = call i32 (...) @layer_clear()
  %196 = load i32, i32* @LSFT, align 4
  %197 = call i32 @D(i32 %196)
  %198 = call i32 @T(i32 8)
  %199 = load i32, i32* @LSFT, align 4
  %200 = call i32 @U(i32 %199)
  %201 = load i32, i32* @FN4, align 4
  %202 = call i32 @T(i32 %201)
  %203 = load i32, i32* @END, align 4
  %204 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %197, i32 %198, i32 %200, i32 %202, i32 %203)
  store i32* %204, i32** %4, align 8
  br label %316

205:                                              ; preds = %3
  %206 = call i32 (...) @layer_clear()
  %207 = load i32, i32* @LSFT, align 4
  %208 = call i32 @D(i32 %207)
  %209 = call i32 @T(i32 0)
  %210 = load i32, i32* @LSFT, align 4
  %211 = call i32 @U(i32 %210)
  %212 = load i32, i32* @FN4, align 4
  %213 = call i32 @T(i32 %212)
  %214 = load i32, i32* @END, align 4
  %215 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %208, i32 %209, i32 %211, i32 %213, i32 %214)
  store i32* %215, i32** %4, align 8
  br label %316

216:                                              ; preds = %3
  %217 = call i32 (...) @layer_clear()
  %218 = load i32, i32* @MINS, align 4
  %219 = call i32 @T(i32 %218)
  %220 = load i32, i32* @FN4, align 4
  %221 = call i32 @T(i32 %220)
  %222 = load i32, i32* @END, align 4
  %223 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %219, i32 %221, i32 %222)
  store i32* %223, i32** %4, align 8
  br label %316

224:                                              ; preds = %3
  %225 = call i32 (...) @layer_clear()
  %226 = load i32, i32* @LSFT, align 4
  %227 = call i32 @D(i32 %226)
  %228 = load i32, i32* @QUOT, align 4
  %229 = call i32 @T(i32 %228)
  %230 = load i32, i32* @LSFT, align 4
  %231 = call i32 @U(i32 %230)
  %232 = load i32, i32* @FN4, align 4
  %233 = call i32 @T(i32 %232)
  %234 = load i32, i32* @END, align 4
  %235 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %227, i32 %229, i32 %231, i32 %233, i32 %234)
  store i32* %235, i32** %4, align 8
  br label %316

236:                                              ; preds = %3
  %237 = call i32 (...) @layer_clear()
  %238 = call i32 @T(i32 6)
  %239 = load i32, i32* @FN4, align 4
  %240 = call i32 @T(i32 %239)
  %241 = load i32, i32* @END, align 4
  %242 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %238, i32 %240, i32 %241)
  store i32* %242, i32** %4, align 8
  br label %316

243:                                              ; preds = %3
  %244 = call i32 (...) @layer_clear()
  %245 = call i32 @T(i32 7)
  %246 = load i32, i32* @FN4, align 4
  %247 = call i32 @T(i32 %246)
  %248 = load i32, i32* @END, align 4
  %249 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %245, i32 %247, i32 %248)
  store i32* %249, i32** %4, align 8
  br label %316

250:                                              ; preds = %3
  %251 = call i32 (...) @layer_clear()
  %252 = call i32 @T(i32 8)
  %253 = load i32, i32* @FN4, align 4
  %254 = call i32 @T(i32 %253)
  %255 = load i32, i32* @END, align 4
  %256 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %252, i32 %254, i32 %255)
  store i32* %256, i32** %4, align 8
  br label %316

257:                                              ; preds = %3
  %258 = call i32 (...) @layer_clear()
  %259 = call i32 @T(i32 9)
  %260 = load i32, i32* @FN4, align 4
  %261 = call i32 @T(i32 %260)
  %262 = load i32, i32* @END, align 4
  %263 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %259, i32 %261, i32 %262)
  store i32* %263, i32** %4, align 8
  br label %316

264:                                              ; preds = %3
  %265 = call i32 (...) @layer_clear()
  %266 = load i32, i32* @LSFT, align 4
  %267 = call i32 @D(i32 %266)
  %268 = load i32, i32* @BSLS, align 4
  %269 = call i32 @T(i32 %268)
  %270 = load i32, i32* @LSFT, align 4
  %271 = call i32 @U(i32 %270)
  %272 = load i32, i32* @FN4, align 4
  %273 = call i32 @T(i32 %272)
  %274 = load i32, i32* @END, align 4
  %275 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %267, i32 %269, i32 %271, i32 %273, i32 %274)
  store i32* %275, i32** %4, align 8
  br label %316

276:                                              ; preds = %3
  %277 = call i32 (...) @layer_clear()
  %278 = load i32, i32* @BSLS, align 4
  %279 = call i32 @T(i32 %278)
  %280 = load i32, i32* @FN4, align 4
  %281 = call i32 @T(i32 %280)
  %282 = load i32, i32* @END, align 4
  %283 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %279, i32 %281, i32 %282)
  store i32* %283, i32** %4, align 8
  br label %316

284:                                              ; preds = %3
  %285 = call i32 (...) @layer_clear()
  %286 = call i32 @T(i32 2)
  %287 = load i32, i32* @FN4, align 4
  %288 = call i32 @T(i32 %287)
  %289 = load i32, i32* @END, align 4
  %290 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %286, i32 %288, i32 %289)
  store i32* %290, i32** %4, align 8
  br label %316

291:                                              ; preds = %3
  %292 = call i32 (...) @layer_clear()
  %293 = call i32 @T(i32 3)
  %294 = load i32, i32* @FN4, align 4
  %295 = call i32 @T(i32 %294)
  %296 = load i32, i32* @END, align 4
  %297 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %293, i32 %295, i32 %296)
  store i32* %297, i32** %4, align 8
  br label %316

298:                                              ; preds = %3
  %299 = call i32 (...) @layer_clear()
  %300 = call i32 @T(i32 4)
  %301 = load i32, i32* @FN4, align 4
  %302 = call i32 @T(i32 %301)
  %303 = load i32, i32* @END, align 4
  %304 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %300, i32 %302, i32 %303)
  store i32* %304, i32** %4, align 8
  br label %316

305:                                              ; preds = %3
  %306 = call i32 (...) @layer_clear()
  %307 = call i32 @T(i32 5)
  %308 = load i32, i32* @FN4, align 4
  %309 = call i32 @T(i32 %308)
  %310 = load i32, i32* @END, align 4
  %311 = call i32* (i32, i32, i32, ...) @MACRODOWN(i32 %307, i32 %309, i32 %310)
  store i32* %311, i32** %4, align 8
  br label %316

312:                                              ; preds = %3
  %313 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %313, i32** %4, align 8
  br label %316

314:                                              ; preds = %21
  %315 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %315, i32** %4, align 8
  br label %316

316:                                              ; preds = %314, %312, %305, %298, %291, %284, %276, %264, %257, %250, %243, %236, %224, %216, %205, %194, %187, %175, %163, %156, %148, %137, %129, %118, %110, %102, %90, %79, %68, %56, %44, %33, %22
  %317 = load i32*, i32** %4, align 8
  ret i32* %317
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_clear(...) #1

declare dso_local i32* @MACRODOWN(i32, i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
