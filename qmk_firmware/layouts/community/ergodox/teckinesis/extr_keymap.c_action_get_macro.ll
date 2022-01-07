; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/teckinesis/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/teckinesis/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@caps_shift = common dso_local global i32 0, align 4
@KC_CAPS = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@symb_shift = common dso_local global i32 0, align 4
@symb_lock = common dso_local global i32 0, align 4
@SYMB = common dso_local global i32 0, align 4
@mdia_shift = common dso_local global i32 0, align 4
@mdia_lock = common dso_local global i32 0, align 4
@KC_TAB = common dso_local global i32 0, align 4
@MDIA = common dso_local global i32 0, align 4
@KC_EQL = common dso_local global i32 0, align 4
@SPEC = common dso_local global i32 0, align 4
@KC_QUOT = common dso_local global i32 0, align 4
@KC_BSLS = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_MS_UP = common dso_local global i32 0, align 4
@KC_MS_LEFT = common dso_local global i32 0, align 4
@KC_MS_RIGHT = common dso_local global i32 0, align 4
@KC_MS_DOWN = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %485 [
    i32 139, label %8
    i32 131, label %8
    i32 136, label %54
    i32 138, label %97
    i32 137, label %172
    i32 128, label %217
    i32 130, label %289
    i32 129, label %364
    i32 133, label %409
    i32 132, label %428
    i32 135, label %447
    i32 134, label %466
  ]

8:                                                ; preds = %3, %3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @caps_shift, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @caps_shift, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 2, i32* @caps_shift, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* @caps_shift, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @KC_CAPS, align 4
  %30 = call i32 @register_code(i32 %29)
  %31 = load i32, i32* @KC_CAPS, align 4
  %32 = call i32 @unregister_code(i32 %31)
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @caps_shift, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @KC_LSFT, align 4
  %38 = call i32 @register_code(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %28
  br label %53

41:                                               ; preds = %14, %8
  %42 = load i32, i32* @caps_shift, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @caps_shift, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* @caps_shift, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* @caps_shift, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @KC_LSFT, align 4
  %51 = call i32 @unregister_code(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %40
  br label %486

54:                                               ; preds = %3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i32, i32* @symb_shift, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @symb_shift, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 2, i32* @symb_shift, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* @symb_shift, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* @symb_lock, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* @symb_lock, align 4
  br label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @symb_shift, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @SYMB, align 4
  %78 = call i32 @layer_on(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %68
  br label %96

81:                                               ; preds = %54
  %82 = load i32, i32* @symb_shift, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @symb_shift, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* @symb_shift, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, i32* @symb_shift, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @symb_lock, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @SYMB, align 4
  %94 = call i32 @layer_off(i32 %93)
  br label %95

95:                                               ; preds = %92, %89, %86
  br label %96

96:                                               ; preds = %95, %80
  br label %486

97:                                               ; preds = %3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %97
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* @mdia_shift, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @mdia_lock, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @KC_TAB, align 4
  %117 = call i32 @register_code(i32 %116)
  br label %139

118:                                              ; preds = %112, %109, %103
  %119 = load i32, i32* @mdia_shift, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @mdia_shift, align 4
  %121 = icmp sgt i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 2, i32* @mdia_shift, align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i32, i32* @mdia_shift, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* @mdia_lock, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* @mdia_lock, align 4
  br label %138

131:                                              ; preds = %123
  %132 = load i32, i32* @mdia_shift, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @MDIA, align 4
  %136 = call i32 @layer_on(i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %126
  br label %139

139:                                              ; preds = %138, %115
  br label %171

140:                                              ; preds = %97
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load i32, i32* @mdia_shift, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @mdia_lock, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @KC_TAB, align 4
  %154 = call i32 @unregister_code(i32 %153)
  br label %170

155:                                              ; preds = %149, %146, %140
  %156 = load i32, i32* @mdia_shift, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* @mdia_shift, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, i32* @mdia_shift, align 4
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, i32* @mdia_shift, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @mdia_lock, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @MDIA, align 4
  %168 = call i32 @layer_off(i32 %167)
  br label %169

169:                                              ; preds = %166, %163, %160
  br label %170

170:                                              ; preds = %169, %152
  br label %171

171:                                              ; preds = %170, %139
  br label %486

172:                                              ; preds = %3
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %172
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = load i32, i32* @KC_EQL, align 4
  %192 = call i32 @register_code(i32 %191)
  br label %196

193:                                              ; preds = %184, %178
  %194 = load i32, i32* @SPEC, align 4
  %195 = call i32 @layer_on(i32 %194)
  br label %196

196:                                              ; preds = %193, %190
  br label %216

197:                                              ; preds = %172
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = load i32, i32* @KC_EQL, align 4
  %211 = call i32 @unregister_code(i32 %210)
  br label %215

212:                                              ; preds = %203, %197
  %213 = load i32, i32* @SPEC, align 4
  %214 = call i32 @layer_off(i32 %213)
  br label %215

215:                                              ; preds = %212, %209
  br label %216

216:                                              ; preds = %215, %196
  br label %486

217:                                              ; preds = %3
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %260

223:                                              ; preds = %217
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load i32, i32* @symb_shift, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @symb_lock, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* @KC_QUOT, align 4
  %237 = call i32 @register_code(i32 %236)
  br label %259

238:                                              ; preds = %232, %229, %223
  %239 = load i32, i32* @symb_shift, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* @symb_shift, align 4
  %241 = icmp sgt i32 %240, 2
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i32 2, i32* @symb_shift, align 4
  br label %243

243:                                              ; preds = %242, %238
  %244 = load i32, i32* @symb_shift, align 4
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* @symb_lock, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  store i32 %250, i32* @symb_lock, align 4
  br label %258

251:                                              ; preds = %243
  %252 = load i32, i32* @symb_shift, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* @SYMB, align 4
  %256 = call i32 @layer_on(i32 %255)
  br label %257

257:                                              ; preds = %254, %251
  br label %258

258:                                              ; preds = %257, %246
  br label %259

259:                                              ; preds = %258, %235
  br label %288

260:                                              ; preds = %217
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %260
  %267 = load i32, i32* @symb_shift, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* @KC_QUOT, align 4
  %271 = call i32 @unregister_code(i32 %270)
  br label %287

272:                                              ; preds = %266, %260
  %273 = load i32, i32* @symb_shift, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* @symb_shift, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  store i32 0, i32* @symb_shift, align 4
  br label %277

277:                                              ; preds = %276, %272
  %278 = load i32, i32* @symb_shift, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* @symb_lock, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* @SYMB, align 4
  %285 = call i32 @layer_off(i32 %284)
  br label %286

286:                                              ; preds = %283, %280, %277
  br label %287

287:                                              ; preds = %286, %269
  br label %288

288:                                              ; preds = %287, %259
  br label %486

289:                                              ; preds = %3
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %332

295:                                              ; preds = %289
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %295
  %302 = load i32, i32* @mdia_shift, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %301
  %305 = load i32, i32* @mdia_lock, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* @KC_BSLS, align 4
  %309 = call i32 @register_code(i32 %308)
  br label %331

310:                                              ; preds = %304, %301, %295
  %311 = load i32, i32* @mdia_shift, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* @mdia_shift, align 4
  %313 = icmp sgt i32 %312, 2
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  store i32 2, i32* @mdia_shift, align 4
  br label %315

315:                                              ; preds = %314, %310
  %316 = load i32, i32* @mdia_shift, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32, i32* @mdia_lock, align 4
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  store i32 %322, i32* @mdia_lock, align 4
  br label %330

323:                                              ; preds = %315
  %324 = load i32, i32* @mdia_shift, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* @MDIA, align 4
  %328 = call i32 @layer_on(i32 %327)
  br label %329

329:                                              ; preds = %326, %323
  br label %330

330:                                              ; preds = %329, %318
  br label %331

331:                                              ; preds = %330, %307
  br label %363

332:                                              ; preds = %289
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %332
  %339 = load i32, i32* @mdia_shift, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* @mdia_lock, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* @KC_BSLS, align 4
  %346 = call i32 @unregister_code(i32 %345)
  br label %362

347:                                              ; preds = %341, %338, %332
  %348 = load i32, i32* @mdia_shift, align 4
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* @mdia_shift, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %347
  store i32 0, i32* @mdia_shift, align 4
  br label %352

352:                                              ; preds = %351, %347
  %353 = load i32, i32* @mdia_shift, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* @mdia_lock, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* @MDIA, align 4
  %360 = call i32 @layer_off(i32 %359)
  br label %361

361:                                              ; preds = %358, %355, %352
  br label %362

362:                                              ; preds = %361, %344
  br label %363

363:                                              ; preds = %362, %331
  br label %486

364:                                              ; preds = %3
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %389

370:                                              ; preds = %364
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %370
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %376
  %383 = load i32, i32* @KC_MINS, align 4
  %384 = call i32 @register_code(i32 %383)
  br label %388

385:                                              ; preds = %376, %370
  %386 = load i32, i32* @SPEC, align 4
  %387 = call i32 @layer_on(i32 %386)
  br label %388

388:                                              ; preds = %385, %382
  br label %408

389:                                              ; preds = %364
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %389
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %395
  %402 = load i32, i32* @KC_MINS, align 4
  %403 = call i32 @unregister_code(i32 %402)
  br label %407

404:                                              ; preds = %395, %389
  %405 = load i32, i32* @SPEC, align 4
  %406 = call i32 @layer_off(i32 %405)
  br label %407

407:                                              ; preds = %404, %401
  br label %408

408:                                              ; preds = %407, %388
  br label %486

409:                                              ; preds = %3
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %409
  %416 = load i32, i32* @KC_MS_UP, align 4
  %417 = call i32 @mousekey_on(i32 %416)
  %418 = load i32, i32* @KC_MS_LEFT, align 4
  %419 = call i32 @mousekey_on(i32 %418)
  %420 = call i32 (...) @mousekey_send()
  br label %427

421:                                              ; preds = %409
  %422 = load i32, i32* @KC_MS_UP, align 4
  %423 = call i32 @mousekey_off(i32 %422)
  %424 = load i32, i32* @KC_MS_LEFT, align 4
  %425 = call i32 @mousekey_off(i32 %424)
  %426 = call i32 (...) @mousekey_send()
  br label %427

427:                                              ; preds = %421, %415
  br label %486

428:                                              ; preds = %3
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %428
  %435 = load i32, i32* @KC_MS_UP, align 4
  %436 = call i32 @mousekey_on(i32 %435)
  %437 = load i32, i32* @KC_MS_RIGHT, align 4
  %438 = call i32 @mousekey_on(i32 %437)
  %439 = call i32 (...) @mousekey_send()
  br label %446

440:                                              ; preds = %428
  %441 = load i32, i32* @KC_MS_UP, align 4
  %442 = call i32 @mousekey_off(i32 %441)
  %443 = load i32, i32* @KC_MS_RIGHT, align 4
  %444 = call i32 @mousekey_off(i32 %443)
  %445 = call i32 (...) @mousekey_send()
  br label %446

446:                                              ; preds = %440, %434
  br label %486

447:                                              ; preds = %3
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %447
  %454 = load i32, i32* @KC_MS_DOWN, align 4
  %455 = call i32 @mousekey_on(i32 %454)
  %456 = load i32, i32* @KC_MS_LEFT, align 4
  %457 = call i32 @mousekey_on(i32 %456)
  %458 = call i32 (...) @mousekey_send()
  br label %465

459:                                              ; preds = %447
  %460 = load i32, i32* @KC_MS_DOWN, align 4
  %461 = call i32 @mousekey_off(i32 %460)
  %462 = load i32, i32* @KC_MS_LEFT, align 4
  %463 = call i32 @mousekey_off(i32 %462)
  %464 = call i32 (...) @mousekey_send()
  br label %465

465:                                              ; preds = %459, %453
  br label %486

466:                                              ; preds = %3
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %466
  %473 = load i32, i32* @KC_MS_DOWN, align 4
  %474 = call i32 @mousekey_on(i32 %473)
  %475 = load i32, i32* @KC_MS_RIGHT, align 4
  %476 = call i32 @mousekey_on(i32 %475)
  %477 = call i32 (...) @mousekey_send()
  br label %484

478:                                              ; preds = %466
  %479 = load i32, i32* @KC_MS_DOWN, align 4
  %480 = call i32 @mousekey_off(i32 %479)
  %481 = load i32, i32* @KC_MS_RIGHT, align 4
  %482 = call i32 @mousekey_off(i32 %481)
  %483 = call i32 (...) @mousekey_send()
  br label %484

484:                                              ; preds = %478, %472
  br label %486

485:                                              ; preds = %3
  br label %486

486:                                              ; preds = %485, %484, %465, %446, %427, %408, %363, %288, %216, %171, %96, %53
  %487 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %487
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @mousekey_on(i32) #1

declare dso_local i32 @mousekey_send(...) #1

declare dso_local i32 @mousekey_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
