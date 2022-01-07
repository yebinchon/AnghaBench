; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@VIM_QUEUE = common dso_local global i32 0, align 4
@INSERT_MODE = common dso_local global i32 0, align 4
@VERSION_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @KC_LSFT, align 4
  %11 = call i32 @MOD_BIT(i32 %10)
  %12 = and i32 %9, %11
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KC_RSFT, align 4
  %17 = call i32 @MOD_BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = or i32 %12, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %356 [
    i32 149, label %21
    i32 148, label %37
    i32 147, label %55
    i32 145, label %76
    i32 143, label %97
    i32 142, label %115
    i32 141, label %133
    i32 140, label %152
    i32 139, label %177
    i32 138, label %195
    i32 137, label %213
    i32 136, label %229
    i32 135, label %245
    i32 134, label %261
    i32 133, label %270
    i32 131, label %279
    i32 130, label %303
    i32 129, label %312
    i32 152, label %328
    i32 128, label %337
    i32 150, label %347
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @VIM_APPEND_LINE()
  br label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @VIM_APPEND()
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %21
  store i32 0, i32* %3, align 4
  br label %357

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %44, label %53 [
    i32 151, label %45
    i32 147, label %47
    i32 145, label %49
    i32 133, label %51
  ]

45:                                               ; preds = %43
  %46 = call i32 (...) @VIM_BACK()
  br label %53

47:                                               ; preds = %43
  %48 = call i32 (...) @VIM_CHANGE_BACK()
  br label %53

49:                                               ; preds = %43
  %50 = call i32 (...) @VIM_DELETE_BACK()
  br label %53

51:                                               ; preds = %43
  %52 = call i32 (...) @VIM_VISUAL_BACK()
  br label %53

53:                                               ; preds = %43, %51, %49, %47, %45
  br label %54

54:                                               ; preds = %53, %37
  store i32 0, i32* %3, align 4
  br label %357

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %62, label %74 [
    i32 151, label %63
    i32 147, label %72
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @VIM_CHANGE_LINE()
  br label %70

68:                                               ; preds = %63
  %69 = call i32 @VIM_LEADER(i32 147)
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  br label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @VIM_CHANGE_WHOLE_LINE()
  br label %74

74:                                               ; preds = %61, %72, %70
  br label %75

75:                                               ; preds = %74, %55
  store i32 0, i32* %3, align 4
  br label %357

76:                                               ; preds = %2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %83, label %95 [
    i32 151, label %84
    i32 145, label %93
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @VIM_DELETE_LINE()
  br label %91

89:                                               ; preds = %84
  %90 = call i32 @VIM_LEADER(i32 145)
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  br label %95

93:                                               ; preds = %82
  %94 = call i32 (...) @VIM_DELETE_WHOLE_LINE()
  br label %95

95:                                               ; preds = %82, %93, %91
  br label %96

96:                                               ; preds = %95, %76
  store i32 0, i32* %3, align 4
  br label %357

97:                                               ; preds = %2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %104, label %113 [
    i32 151, label %105
    i32 147, label %107
    i32 145, label %109
    i32 133, label %111
  ]

105:                                              ; preds = %103
  %106 = call i32 (...) @VIM_END()
  br label %113

107:                                              ; preds = %103
  %108 = call i32 (...) @VIM_CHANGE_END()
  br label %113

109:                                              ; preds = %103
  %110 = call i32 (...) @VIM_DELETE_END()
  br label %113

111:                                              ; preds = %103
  %112 = call i32 (...) @VIM_VISUAL_END()
  br label %113

113:                                              ; preds = %103, %111, %109, %107, %105
  br label %114

114:                                              ; preds = %113, %97
  store i32 0, i32* %3, align 4
  br label %357

115:                                              ; preds = %2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %122, label %131 [
    i32 151, label %123
    i32 147, label %125
    i32 145, label %127
    i32 133, label %129
  ]

123:                                              ; preds = %121
  %124 = call i32 (...) @VIM_LEFT()
  br label %131

125:                                              ; preds = %121
  %126 = call i32 (...) @VIM_CHANGE_LEFT()
  br label %131

127:                                              ; preds = %121
  %128 = call i32 (...) @VIM_DELETE_LEFT()
  br label %131

129:                                              ; preds = %121
  %130 = call i32 (...) @VIM_VISUAL_LEFT()
  br label %131

131:                                              ; preds = %121, %129, %127, %125, %123
  br label %132

132:                                              ; preds = %131, %115
  store i32 0, i32* %3, align 4
  br label %357

133:                                              ; preds = %2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %140, label %150 [
    i32 151, label %141
    i32 147, label %144
    i32 145, label %146
    i32 133, label %148
  ]

141:                                              ; preds = %139
  %142 = load i32, i32* @INSERT_MODE, align 4
  %143 = call i32 @layer_on(i32 %142)
  br label %150

144:                                              ; preds = %139
  %145 = call i32 @VIM_LEADER(i32 146)
  br label %150

146:                                              ; preds = %139
  %147 = call i32 @VIM_LEADER(i32 144)
  br label %150

148:                                              ; preds = %139
  %149 = call i32 @VIM_LEADER(i32 132)
  br label %150

150:                                              ; preds = %139, %148, %146, %144, %141
  br label %151

151:                                              ; preds = %150, %133
  store i32 0, i32* %3, align 4
  br label %357

152:                                              ; preds = %2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %152
  %159 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %159, label %175 [
    i32 151, label %160
    i32 147, label %169
    i32 145, label %171
    i32 133, label %173
  ]

160:                                              ; preds = %158
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (...) @VIM_JOIN()
  br label %167

165:                                              ; preds = %160
  %166 = call i32 (...) @VIM_DOWN()
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  br label %175

169:                                              ; preds = %158
  %170 = call i32 (...) @VIM_CHANGE_DOWN()
  br label %175

171:                                              ; preds = %158
  %172 = call i32 (...) @VIM_DELETE_DOWN()
  br label %175

173:                                              ; preds = %158
  %174 = call i32 (...) @VIM_VISUAL_DOWN()
  br label %175

175:                                              ; preds = %158, %173, %171, %169, %167
  br label %176

176:                                              ; preds = %175, %152
  store i32 0, i32* %3, align 4
  br label %357

177:                                              ; preds = %2
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %177
  %184 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %184, label %193 [
    i32 151, label %185
    i32 147, label %187
    i32 145, label %189
    i32 133, label %191
  ]

185:                                              ; preds = %183
  %186 = call i32 (...) @VIM_UP()
  br label %193

187:                                              ; preds = %183
  %188 = call i32 (...) @VIM_CHANGE_UP()
  br label %193

189:                                              ; preds = %183
  %190 = call i32 (...) @VIM_DELETE_UP()
  br label %193

191:                                              ; preds = %183
  %192 = call i32 (...) @VIM_VISUAL_UP()
  br label %193

193:                                              ; preds = %183, %191, %189, %187, %185
  br label %194

194:                                              ; preds = %193, %177
  store i32 0, i32* %3, align 4
  br label %357

195:                                              ; preds = %2
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %195
  %202 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %202, label %211 [
    i32 151, label %203
    i32 147, label %205
    i32 145, label %207
    i32 133, label %209
  ]

203:                                              ; preds = %201
  %204 = call i32 (...) @VIM_RIGHT()
  br label %211

205:                                              ; preds = %201
  %206 = call i32 (...) @VIM_CHANGE_RIGHT()
  br label %211

207:                                              ; preds = %201
  %208 = call i32 (...) @VIM_DELETE_RIGHT()
  br label %211

209:                                              ; preds = %201
  %210 = call i32 (...) @VIM_VISUAL_RIGHT()
  br label %211

211:                                              ; preds = %201, %209, %207, %205, %203
  br label %212

212:                                              ; preds = %211, %195
  store i32 0, i32* %3, align 4
  br label %357

213:                                              ; preds = %2
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 (...) @VIM_OPEN_ABOVE()
  br label %226

224:                                              ; preds = %219
  %225 = call i32 (...) @VIM_OPEN()
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  br label %228

228:                                              ; preds = %226, %213
  store i32 0, i32* %3, align 4
  br label %357

229:                                              ; preds = %2
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 (...) @VIM_PUT_BEFORE()
  br label %242

240:                                              ; preds = %235
  %241 = call i32 (...) @VIM_PUT()
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  br label %244

244:                                              ; preds = %242, %229
  store i32 0, i32* %3, align 4
  br label %357

245:                                              ; preds = %2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %245
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 (...) @VIM_CHANGE_WHOLE_LINE()
  br label %258

256:                                              ; preds = %251
  %257 = call i32 (...) @VIM_SUBSTITUTE()
  br label %258

258:                                              ; preds = %256, %254
  %259 = phi i32 [ %255, %254 ], [ %257, %256 ]
  br label %260

260:                                              ; preds = %258, %245
  store i32 0, i32* %3, align 4
  br label %357

261:                                              ; preds = %2
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = call i32 (...) @VIM_UNDO()
  br label %269

269:                                              ; preds = %267, %261
  store i32 0, i32* %3, align 4
  br label %357

270:                                              ; preds = %2
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = call i32 @VIM_LEADER(i32 133)
  br label %278

278:                                              ; preds = %276, %270
  store i32 0, i32* %3, align 4
  br label %357

279:                                              ; preds = %2
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %302

285:                                              ; preds = %279
  %286 = load i32, i32* @VIM_QUEUE, align 4
  switch i32 %286, label %301 [
    i32 151, label %287
    i32 147, label %289
    i32 146, label %291
    i32 145, label %293
    i32 144, label %295
    i32 133, label %297
    i32 132, label %299
  ]

287:                                              ; preds = %285
  %288 = call i32 (...) @VIM_WORD()
  br label %301

289:                                              ; preds = %285
  %290 = call i32 (...) @VIM_CHANGE_WORD()
  br label %301

291:                                              ; preds = %285
  %292 = call i32 (...) @VIM_CHANGE_INNER_WORD()
  br label %301

293:                                              ; preds = %285
  %294 = call i32 (...) @VIM_DELETE_WORD()
  br label %301

295:                                              ; preds = %285
  %296 = call i32 (...) @VIM_DELETE_INNER_WORD()
  br label %301

297:                                              ; preds = %285
  %298 = call i32 (...) @VIM_VISUAL_WORD()
  br label %301

299:                                              ; preds = %285
  %300 = call i32 (...) @VIM_VISUAL_INNER_WORD()
  br label %301

301:                                              ; preds = %285, %299, %297, %295, %293, %291, %289, %287
  br label %302

302:                                              ; preds = %301, %279
  store i32 0, i32* %3, align 4
  br label %357

303:                                              ; preds = %2
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = call i32 (...) @VIM_CUT()
  br label %311

311:                                              ; preds = %309, %303
  store i32 0, i32* %3, align 4
  br label %357

312:                                              ; preds = %2
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %327

318:                                              ; preds = %312
  %319 = load i32, i32* %6, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = call i32 (...) @VIM_YANK_LINE()
  br label %325

323:                                              ; preds = %318
  %324 = call i32 (...) @VIM_YANK()
  br label %325

325:                                              ; preds = %323, %321
  %326 = phi i32 [ %322, %321 ], [ %324, %323 ]
  br label %327

327:                                              ; preds = %325, %312
  store i32 0, i32* %3, align 4
  br label %357

328:                                              ; preds = %2
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %328
  %335 = call i32 (...) @eeconfig_init()
  br label %336

336:                                              ; preds = %334, %328
  store i32 0, i32* %3, align 4
  br label %357

337:                                              ; preds = %2
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %337
  %344 = load i32, i32* @VERSION_STRING, align 4
  %345 = call i32 @SEND_STRING(i32 %344)
  br label %346

346:                                              ; preds = %343, %337
  store i32 0, i32* %3, align 4
  br label %357

347:                                              ; preds = %2
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %347
  %354 = call i32 @rgblight_mode(i32 1)
  br label %355

355:                                              ; preds = %353, %347
  store i32 0, i32* %3, align 4
  br label %357

356:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %357

357:                                              ; preds = %356, %355, %346, %336, %327, %311, %302, %278, %269, %260, %244, %228, %212, %194, %176, %151, %132, %114, %96, %75, %54, %36
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @VIM_APPEND_LINE(...) #1

declare dso_local i32 @VIM_APPEND(...) #1

declare dso_local i32 @VIM_BACK(...) #1

declare dso_local i32 @VIM_CHANGE_BACK(...) #1

declare dso_local i32 @VIM_DELETE_BACK(...) #1

declare dso_local i32 @VIM_VISUAL_BACK(...) #1

declare dso_local i32 @VIM_CHANGE_LINE(...) #1

declare dso_local i32 @VIM_LEADER(i32) #1

declare dso_local i32 @VIM_CHANGE_WHOLE_LINE(...) #1

declare dso_local i32 @VIM_DELETE_LINE(...) #1

declare dso_local i32 @VIM_DELETE_WHOLE_LINE(...) #1

declare dso_local i32 @VIM_END(...) #1

declare dso_local i32 @VIM_CHANGE_END(...) #1

declare dso_local i32 @VIM_DELETE_END(...) #1

declare dso_local i32 @VIM_VISUAL_END(...) #1

declare dso_local i32 @VIM_LEFT(...) #1

declare dso_local i32 @VIM_CHANGE_LEFT(...) #1

declare dso_local i32 @VIM_DELETE_LEFT(...) #1

declare dso_local i32 @VIM_VISUAL_LEFT(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @VIM_JOIN(...) #1

declare dso_local i32 @VIM_DOWN(...) #1

declare dso_local i32 @VIM_CHANGE_DOWN(...) #1

declare dso_local i32 @VIM_DELETE_DOWN(...) #1

declare dso_local i32 @VIM_VISUAL_DOWN(...) #1

declare dso_local i32 @VIM_UP(...) #1

declare dso_local i32 @VIM_CHANGE_UP(...) #1

declare dso_local i32 @VIM_DELETE_UP(...) #1

declare dso_local i32 @VIM_VISUAL_UP(...) #1

declare dso_local i32 @VIM_RIGHT(...) #1

declare dso_local i32 @VIM_CHANGE_RIGHT(...) #1

declare dso_local i32 @VIM_DELETE_RIGHT(...) #1

declare dso_local i32 @VIM_VISUAL_RIGHT(...) #1

declare dso_local i32 @VIM_OPEN_ABOVE(...) #1

declare dso_local i32 @VIM_OPEN(...) #1

declare dso_local i32 @VIM_PUT_BEFORE(...) #1

declare dso_local i32 @VIM_PUT(...) #1

declare dso_local i32 @VIM_SUBSTITUTE(...) #1

declare dso_local i32 @VIM_UNDO(...) #1

declare dso_local i32 @VIM_WORD(...) #1

declare dso_local i32 @VIM_CHANGE_WORD(...) #1

declare dso_local i32 @VIM_CHANGE_INNER_WORD(...) #1

declare dso_local i32 @VIM_DELETE_WORD(...) #1

declare dso_local i32 @VIM_DELETE_INNER_WORD(...) #1

declare dso_local i32 @VIM_VISUAL_WORD(...) #1

declare dso_local i32 @VIM_VISUAL_INNER_WORD(...) #1

declare dso_local i32 @VIM_CUT(...) #1

declare dso_local i32 @VIM_YANK_LINE(...) #1

declare dso_local i32 @VIM_YANK(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
