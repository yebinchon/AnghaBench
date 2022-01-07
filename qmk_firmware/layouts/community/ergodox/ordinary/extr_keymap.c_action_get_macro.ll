; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ordinary/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ordinary/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@symb_shift = common dso_local global i32 0, align 4
@spec_shift = common dso_local global i32 0, align 4
@symb_lock = common dso_local global i32 0, align 4
@SYMB = common dso_local global i32 0, align 4
@mdia_shift = common dso_local global i32 0, align 4
@mdia_lock = common dso_local global i32 0, align 4
@KC_TAB = common dso_local global i32 0, align 4
@MDIA = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@SPEC = common dso_local global i32 0, align 4
@KC_QUOT = common dso_local global i32 0, align 4
@KC_BSLS = common dso_local global i32 0, align 4
@KC_EQL = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@EQL = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@COMM = common dso_local global i32 0, align 4
@DOT = common dso_local global i32 0, align 4
@MINS = common dso_local global i32 0, align 4
@KC_MS_UP = common dso_local global i32 0, align 4
@KC_MS_LEFT = common dso_local global i32 0, align 4
@KC_MS_RIGHT = common dso_local global i32 0, align 4
@KC_MS_DOWN = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %592 [
    i32 137, label %9
    i32 139, label %47
    i32 138, label %123
    i32 128, label %206
    i32 130, label %282
    i32 129, label %358
    i32 131, label %441
    i32 140, label %459
    i32 136, label %478
    i32 141, label %497
    i32 133, label %516
    i32 132, label %535
    i32 135, label %554
    i32 134, label %573
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32, i32* @symb_shift, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @symb_shift, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 2, i32* @symb_shift, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* @spec_shift, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @symb_lock, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @symb_lock, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @SYMB, align 4
  %30 = call i32 @layer_on(i32 %29)
  br label %46

31:                                               ; preds = %9
  %32 = load i32, i32* @symb_shift, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* @symb_shift, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* @symb_shift, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* @symb_shift, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @symb_lock, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @SYMB, align 4
  %44 = call i32 @layer_off(i32 %43)
  br label %45

45:                                               ; preds = %42, %39, %36
  br label %46

46:                                               ; preds = %45, %28
  br label %593

47:                                               ; preds = %3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* @mdia_shift, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @mdia_lock, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @spec_shift, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @KC_TAB, align 4
  %70 = call i32 @register_code(i32 %69)
  br label %87

71:                                               ; preds = %65, %62, %59, %53
  %72 = load i32, i32* @spec_shift, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* @mdia_lock, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* @mdia_lock, align 4
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* @mdia_shift, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @mdia_shift, align 4
  %82 = icmp sgt i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 2, i32* @mdia_shift, align 4
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, i32* @MDIA, align 4
  %86 = call i32 @layer_on(i32 %85)
  br label %87

87:                                               ; preds = %84, %68
  br label %122

88:                                               ; preds = %47
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32, i32* @mdia_shift, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @mdia_lock, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @spec_shift, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @KC_TAB, align 4
  %105 = call i32 @unregister_code(i32 %104)
  br label %121

106:                                              ; preds = %100, %97, %94, %88
  %107 = load i32, i32* @mdia_shift, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* @mdia_shift, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* @mdia_shift, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = load i32, i32* @mdia_shift, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @mdia_lock, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @MDIA, align 4
  %119 = call i32 @layer_off(i32 %118)
  br label %120

120:                                              ; preds = %117, %114, %111
  br label %121

121:                                              ; preds = %120, %103
  br label %122

122:                                              ; preds = %121, %87
  br label %593

123:                                              ; preds = %3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %174

129:                                              ; preds = %123
  %130 = load i32, i32* @symb_shift, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* @symb_lock, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* @symb_lock, align 4
  br label %173

137:                                              ; preds = %129
  %138 = load i32, i32* @mdia_shift, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @mdia_lock, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  store i32 %144, i32* @mdia_lock, align 4
  br label %172

145:                                              ; preds = %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @spec_shift, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @KC_GRV, align 4
  %162 = call i32 @register_code(i32 %161)
  br label %171

163:                                              ; preds = %157, %151, %145
  %164 = load i32, i32* @spec_shift, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* @spec_shift, align 4
  %166 = icmp sgt i32 %165, 2
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 2, i32* @spec_shift, align 4
  br label %168

168:                                              ; preds = %167, %163
  %169 = load i32, i32* @SPEC, align 4
  %170 = call i32 @layer_on(i32 %169)
  br label %171

171:                                              ; preds = %168, %160
  br label %172

172:                                              ; preds = %171, %140
  br label %173

173:                                              ; preds = %172, %132
  br label %205

174:                                              ; preds = %123
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* @spec_shift, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @KC_GRV, align 4
  %191 = call i32 @unregister_code(i32 %190)
  br label %204

192:                                              ; preds = %186, %180, %174
  %193 = load i32, i32* @spec_shift, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* @spec_shift, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 0, i32* @spec_shift, align 4
  br label %197

197:                                              ; preds = %196, %192
  %198 = load i32, i32* @spec_shift, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @SPEC, align 4
  %202 = call i32 @layer_off(i32 %201)
  br label %203

203:                                              ; preds = %200, %197
  br label %204

204:                                              ; preds = %203, %189
  br label %205

205:                                              ; preds = %204, %173
  br label %593

206:                                              ; preds = %3
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %247

212:                                              ; preds = %206
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %212
  %219 = load i32, i32* @symb_shift, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @symb_lock, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* @spec_shift, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* @KC_QUOT, align 4
  %229 = call i32 @register_code(i32 %228)
  br label %246

230:                                              ; preds = %224, %221, %218, %212
  %231 = load i32, i32* @symb_shift, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* @symb_shift, align 4
  %233 = icmp sgt i32 %232, 2
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 2, i32* @symb_shift, align 4
  br label %235

235:                                              ; preds = %234, %230
  %236 = load i32, i32* @spec_shift, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* @symb_lock, align 4
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  store i32 %242, i32* @symb_lock, align 4
  br label %243

243:                                              ; preds = %238, %235
  %244 = load i32, i32* @SYMB, align 4
  %245 = call i32 @layer_on(i32 %244)
  br label %246

246:                                              ; preds = %243, %227
  br label %281

247:                                              ; preds = %206
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %247
  %254 = load i32, i32* @symb_shift, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %265, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* @symb_lock, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* @spec_shift, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* @KC_QUOT, align 4
  %264 = call i32 @unregister_code(i32 %263)
  br label %280

265:                                              ; preds = %259, %256, %253, %247
  %266 = load i32, i32* @symb_shift, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* @symb_shift, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 0, i32* @symb_shift, align 4
  br label %270

270:                                              ; preds = %269, %265
  %271 = load i32, i32* @symb_shift, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %279, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* @symb_lock, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* @SYMB, align 4
  %278 = call i32 @layer_off(i32 %277)
  br label %279

279:                                              ; preds = %276, %273, %270
  br label %280

280:                                              ; preds = %279, %262
  br label %281

281:                                              ; preds = %280, %246
  br label %593

282:                                              ; preds = %3
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %323

288:                                              ; preds = %282
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %288
  %295 = load i32, i32* @mdia_shift, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* @mdia_lock, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* @spec_shift, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @KC_BSLS, align 4
  %305 = call i32 @register_code(i32 %304)
  br label %322

306:                                              ; preds = %300, %297, %294, %288
  %307 = load i32, i32* @mdia_shift, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* @mdia_shift, align 4
  %309 = icmp sgt i32 %308, 2
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  store i32 2, i32* @mdia_shift, align 4
  br label %311

311:                                              ; preds = %310, %306
  %312 = load i32, i32* @spec_shift, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* @mdia_lock, align 4
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  store i32 %318, i32* @mdia_lock, align 4
  br label %319

319:                                              ; preds = %314, %311
  %320 = load i32, i32* @MDIA, align 4
  %321 = call i32 @layer_on(i32 %320)
  br label %322

322:                                              ; preds = %319, %303
  br label %357

323:                                              ; preds = %282
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %323
  %330 = load i32, i32* @mdia_shift, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* @mdia_lock, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* @spec_shift, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* @KC_BSLS, align 4
  %340 = call i32 @unregister_code(i32 %339)
  br label %356

341:                                              ; preds = %335, %332, %329, %323
  %342 = load i32, i32* @mdia_shift, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* @mdia_shift, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  store i32 0, i32* @mdia_shift, align 4
  br label %346

346:                                              ; preds = %345, %341
  %347 = load i32, i32* @mdia_shift, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* @mdia_lock, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* @MDIA, align 4
  %354 = call i32 @layer_off(i32 %353)
  br label %355

355:                                              ; preds = %352, %349, %346
  br label %356

356:                                              ; preds = %355, %338
  br label %357

357:                                              ; preds = %356, %322
  br label %593

358:                                              ; preds = %3
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %409

364:                                              ; preds = %358
  %365 = load i32, i32* @symb_shift, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i32, i32* @symb_lock, align 4
  %369 = icmp ne i32 %368, 0
  %370 = xor i1 %369, true
  %371 = zext i1 %370 to i32
  store i32 %371, i32* @symb_lock, align 4
  br label %408

372:                                              ; preds = %364
  %373 = load i32, i32* @mdia_shift, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  %376 = load i32, i32* @mdia_lock, align 4
  %377 = icmp ne i32 %376, 0
  %378 = xor i1 %377, true
  %379 = zext i1 %378 to i32
  store i32 %379, i32* @mdia_lock, align 4
  br label %407

380:                                              ; preds = %372
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %398

386:                                              ; preds = %380
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %398, label %392

392:                                              ; preds = %386
  %393 = load i32, i32* @spec_shift, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* @KC_EQL, align 4
  %397 = call i32 @register_code(i32 %396)
  br label %406

398:                                              ; preds = %392, %386, %380
  %399 = load i32, i32* @spec_shift, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* @spec_shift, align 4
  %401 = icmp sgt i32 %400, 2
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  store i32 2, i32* @spec_shift, align 4
  br label %403

403:                                              ; preds = %402, %398
  %404 = load i32, i32* @SPEC, align 4
  %405 = call i32 @layer_on(i32 %404)
  br label %406

406:                                              ; preds = %403, %395
  br label %407

407:                                              ; preds = %406, %375
  br label %408

408:                                              ; preds = %407, %367
  br label %440

409:                                              ; preds = %358
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %427

415:                                              ; preds = %409
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %415
  %422 = load i32, i32* @spec_shift, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = load i32, i32* @KC_EQL, align 4
  %426 = call i32 @unregister_code(i32 %425)
  br label %439

427:                                              ; preds = %421, %415, %409
  %428 = load i32, i32* @spec_shift, align 4
  %429 = add nsw i32 %428, -1
  store i32 %429, i32* @spec_shift, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 0, i32* @spec_shift, align 4
  br label %432

432:                                              ; preds = %431, %427
  %433 = load i32, i32* @spec_shift, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %432
  %436 = load i32, i32* @SPEC, align 4
  %437 = call i32 @layer_off(i32 %436)
  br label %438

438:                                              ; preds = %435, %432
  br label %439

439:                                              ; preds = %438, %424
  br label %440

440:                                              ; preds = %439, %408
  br label %593

441:                                              ; preds = %3
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %458

447:                                              ; preds = %441
  %448 = call i32 @I(i32 10)
  %449 = load i32, i32* @LSFT, align 4
  %450 = call i32 @D(i32 %449)
  %451 = call i32 @T(i32 1)
  %452 = load i32, i32* @LSFT, align 4
  %453 = call i32 @U(i32 %452)
  %454 = load i32, i32* @EQL, align 4
  %455 = call i32 @T(i32 %454)
  %456 = load i32, i32* @END, align 4
  %457 = call i32* @MACRO(i32 %448, i32 %450, i32 %451, i32 %453, i32 %455, i32 %456)
  store i32* %457, i32** %4, align 8
  br label %595

458:                                              ; preds = %441
  br label %593

459:                                              ; preds = %3
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %477

465:                                              ; preds = %459
  %466 = call i32 @I(i32 10)
  %467 = load i32, i32* @LSFT, align 4
  %468 = call i32 @D(i32 %467)
  %469 = load i32, i32* @COMM, align 4
  %470 = call i32 @T(i32 %469)
  %471 = load i32, i32* @LSFT, align 4
  %472 = call i32 @U(i32 %471)
  %473 = load i32, i32* @EQL, align 4
  %474 = call i32 @T(i32 %473)
  %475 = load i32, i32* @END, align 4
  %476 = call i32* @MACRO(i32 %466, i32 %468, i32 %470, i32 %472, i32 %474, i32 %475)
  store i32* %476, i32** %4, align 8
  br label %595

477:                                              ; preds = %459
  br label %593

478:                                              ; preds = %3
  %479 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %478
  %485 = call i32 @I(i32 10)
  %486 = load i32, i32* @LSFT, align 4
  %487 = call i32 @D(i32 %486)
  %488 = load i32, i32* @DOT, align 4
  %489 = call i32 @T(i32 %488)
  %490 = load i32, i32* @LSFT, align 4
  %491 = call i32 @U(i32 %490)
  %492 = load i32, i32* @EQL, align 4
  %493 = call i32 @T(i32 %492)
  %494 = load i32, i32* @END, align 4
  %495 = call i32* @MACRO(i32 %485, i32 %487, i32 %489, i32 %491, i32 %493, i32 %494)
  store i32* %495, i32** %4, align 8
  br label %595

496:                                              ; preds = %478
  br label %593

497:                                              ; preds = %3
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %515

503:                                              ; preds = %497
  %504 = call i32 @I(i32 10)
  %505 = load i32, i32* @MINS, align 4
  %506 = call i32 @T(i32 %505)
  %507 = load i32, i32* @LSFT, align 4
  %508 = call i32 @D(i32 %507)
  %509 = load i32, i32* @DOT, align 4
  %510 = call i32 @T(i32 %509)
  %511 = load i32, i32* @LSFT, align 4
  %512 = call i32 @U(i32 %511)
  %513 = load i32, i32* @END, align 4
  %514 = call i32* @MACRO(i32 %504, i32 %506, i32 %508, i32 %510, i32 %512, i32 %513)
  store i32* %514, i32** %4, align 8
  br label %595

515:                                              ; preds = %497
  br label %593

516:                                              ; preds = %3
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %516
  %523 = load i32, i32* @KC_MS_UP, align 4
  %524 = call i32 @mousekey_on(i32 %523)
  %525 = load i32, i32* @KC_MS_LEFT, align 4
  %526 = call i32 @mousekey_on(i32 %525)
  %527 = call i32 (...) @mousekey_send()
  br label %534

528:                                              ; preds = %516
  %529 = load i32, i32* @KC_MS_UP, align 4
  %530 = call i32 @mousekey_off(i32 %529)
  %531 = load i32, i32* @KC_MS_LEFT, align 4
  %532 = call i32 @mousekey_off(i32 %531)
  %533 = call i32 (...) @mousekey_send()
  br label %534

534:                                              ; preds = %528, %522
  br label %593

535:                                              ; preds = %3
  %536 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %547

541:                                              ; preds = %535
  %542 = load i32, i32* @KC_MS_UP, align 4
  %543 = call i32 @mousekey_on(i32 %542)
  %544 = load i32, i32* @KC_MS_RIGHT, align 4
  %545 = call i32 @mousekey_on(i32 %544)
  %546 = call i32 (...) @mousekey_send()
  br label %553

547:                                              ; preds = %535
  %548 = load i32, i32* @KC_MS_UP, align 4
  %549 = call i32 @mousekey_off(i32 %548)
  %550 = load i32, i32* @KC_MS_RIGHT, align 4
  %551 = call i32 @mousekey_off(i32 %550)
  %552 = call i32 (...) @mousekey_send()
  br label %553

553:                                              ; preds = %547, %541
  br label %593

554:                                              ; preds = %3
  %555 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %554
  %561 = load i32, i32* @KC_MS_DOWN, align 4
  %562 = call i32 @mousekey_on(i32 %561)
  %563 = load i32, i32* @KC_MS_LEFT, align 4
  %564 = call i32 @mousekey_on(i32 %563)
  %565 = call i32 (...) @mousekey_send()
  br label %572

566:                                              ; preds = %554
  %567 = load i32, i32* @KC_MS_DOWN, align 4
  %568 = call i32 @mousekey_off(i32 %567)
  %569 = load i32, i32* @KC_MS_LEFT, align 4
  %570 = call i32 @mousekey_off(i32 %569)
  %571 = call i32 (...) @mousekey_send()
  br label %572

572:                                              ; preds = %566, %560
  br label %593

573:                                              ; preds = %3
  %574 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %585

579:                                              ; preds = %573
  %580 = load i32, i32* @KC_MS_DOWN, align 4
  %581 = call i32 @mousekey_on(i32 %580)
  %582 = load i32, i32* @KC_MS_RIGHT, align 4
  %583 = call i32 @mousekey_on(i32 %582)
  %584 = call i32 (...) @mousekey_send()
  br label %591

585:                                              ; preds = %573
  %586 = load i32, i32* @KC_MS_DOWN, align 4
  %587 = call i32 @mousekey_off(i32 %586)
  %588 = load i32, i32* @KC_MS_RIGHT, align 4
  %589 = call i32 @mousekey_off(i32 %588)
  %590 = call i32 (...) @mousekey_send()
  br label %591

591:                                              ; preds = %585, %579
  br label %593

592:                                              ; preds = %3
  br label %593

593:                                              ; preds = %592, %591, %572, %553, %534, %515, %496, %477, %458, %440, %357, %281, %205, %122, %46
  %594 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %594, i32** %4, align 8
  br label %595

595:                                              ; preds = %593, %503, %484, %465, %447
  %596 = load i32*, i32** %4, align 8
  ret i32* %596
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

declare dso_local i32 @mousekey_on(i32) #1

declare dso_local i32 @mousekey_send(...) #1

declare dso_local i32 @mousekey_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
