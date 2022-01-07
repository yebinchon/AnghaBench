; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/adi/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/adi/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@LGUI = common dso_local global i32 0, align 4
@LBRC = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@LALT = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@RBRC = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@RSFT = common dso_local global i32 0, align 4
@LCTRL = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@MINS = common dso_local global i32 0, align 4
@EQL = common dso_local global i32 0, align 4
@ENT = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@PSCR = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_6__* %8 to i8*
  %13 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = call i32 (...) @eeconfig_is_enabled()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @eeconfig_init()
  br label %18

18:                                               ; preds = %16, %3
  store i32 1, i32* %9, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %431 [
    i32 137, label %27
    i32 135, label %66
    i32 131, label %105
    i32 133, label %152
    i32 128, label %195
    i32 129, label %234
    i32 136, label %273
    i32 130, label %312
    i32 134, label %353
    i32 132, label %392
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* @LGUI, align 4
  %36 = call i32 @D(i32 %35)
  %37 = load i32, i32* @LBRC, align 4
  %38 = call i32 @T(i32 %37)
  %39 = load i32, i32* @LGUI, align 4
  %40 = call i32 @U(i32 %39)
  %41 = load i32, i32* @END, align 4
  %42 = call i32* (i32, ...) @MACRO(i32 %36, i32 %38, i32 %40, i32 %41)
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @END, align 4
  %45 = call i32* (i32, ...) @MACRO(i32 %44)
  br label %46

46:                                               ; preds = %43, %34
  %47 = phi i32* [ %42, %34 ], [ %45, %43 ]
  store i32* %47, i32** %4, align 8
  br label %434

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @LALT, align 4
  %54 = call i32 @D(i32 %53)
  %55 = load i32, i32* @LEFT, align 4
  %56 = call i32 @T(i32 %55)
  %57 = load i32, i32* @LALT, align 4
  %58 = call i32 @U(i32 %57)
  %59 = load i32, i32* @END, align 4
  %60 = call i32* (i32, ...) @MACRO(i32 %54, i32 %56, i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @END, align 4
  %63 = call i32* (i32, ...) @MACRO(i32 %62)
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi i32* [ %60, %52 ], [ %63, %61 ]
  store i32* %65, i32** %4, align 8
  br label %434

66:                                               ; preds = %25
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @LGUI, align 4
  %75 = call i32 @D(i32 %74)
  %76 = load i32, i32* @RBRC, align 4
  %77 = call i32 @T(i32 %76)
  %78 = load i32, i32* @LGUI, align 4
  %79 = call i32 @U(i32 %78)
  %80 = load i32, i32* @END, align 4
  %81 = call i32* (i32, ...) @MACRO(i32 %75, i32 %77, i32 %79, i32 %80)
  br label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @END, align 4
  %84 = call i32* (i32, ...) @MACRO(i32 %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = phi i32* [ %81, %73 ], [ %84, %82 ]
  store i32* %86, i32** %4, align 8
  br label %434

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* @LALT, align 4
  %93 = call i32 @D(i32 %92)
  %94 = load i32, i32* @RIGHT, align 4
  %95 = call i32 @T(i32 %94)
  %96 = load i32, i32* @LALT, align 4
  %97 = call i32 @U(i32 %96)
  %98 = load i32, i32* @END, align 4
  %99 = call i32* (i32, ...) @MACRO(i32 %93, i32 %95, i32 %97, i32 %98)
  br label %103

100:                                              ; preds = %87
  %101 = load i32, i32* @END, align 4
  %102 = call i32* (i32, ...) @MACRO(i32 %101)
  br label %103

103:                                              ; preds = %100, %91
  %104 = phi i32* [ %99, %91 ], [ %102, %100 ]
  store i32* %104, i32** %4, align 8
  br label %434

105:                                              ; preds = %25
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load i32, i32* @LGUI, align 4
  %114 = call i32 @D(i32 %113)
  %115 = load i32, i32* @RSFT, align 4
  %116 = call i32 @D(i32 %115)
  %117 = load i32, i32* @LBRC, align 4
  %118 = call i32 @T(i32 %117)
  %119 = load i32, i32* @RSFT, align 4
  %120 = call i32 @U(i32 %119)
  %121 = load i32, i32* @LGUI, align 4
  %122 = call i32 @U(i32 %121)
  %123 = load i32, i32* @END, align 4
  %124 = call i32* (i32, ...) @MACRO(i32 %114, i32 %116, i32 %118, i32 %120, i32 %122, i32 %123)
  br label %128

125:                                              ; preds = %108
  %126 = load i32, i32* @END, align 4
  %127 = call i32* (i32, ...) @MACRO(i32 %126)
  br label %128

128:                                              ; preds = %125, %112
  %129 = phi i32* [ %124, %112 ], [ %127, %125 ]
  store i32* %129, i32** %4, align 8
  br label %434

130:                                              ; preds = %105
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i32, i32* @LCTRL, align 4
  %136 = call i32 @D(i32 %135)
  %137 = load i32, i32* @RSFT, align 4
  %138 = call i32 @D(i32 %137)
  %139 = load i32, i32* @TAB, align 4
  %140 = call i32 @T(i32 %139)
  %141 = load i32, i32* @RSFT, align 4
  %142 = call i32 @U(i32 %141)
  %143 = load i32, i32* @LCTRL, align 4
  %144 = call i32 @U(i32 %143)
  %145 = load i32, i32* @END, align 4
  %146 = call i32* (i32, ...) @MACRO(i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %145)
  br label %150

147:                                              ; preds = %130
  %148 = load i32, i32* @END, align 4
  %149 = call i32* (i32, ...) @MACRO(i32 %148)
  br label %150

150:                                              ; preds = %147, %134
  %151 = phi i32* [ %146, %134 ], [ %149, %147 ]
  store i32* %151, i32** %4, align 8
  br label %434

152:                                              ; preds = %25
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i32, i32* @LGUI, align 4
  %161 = call i32 @D(i32 %160)
  %162 = load i32, i32* @RSFT, align 4
  %163 = call i32 @D(i32 %162)
  %164 = load i32, i32* @RBRC, align 4
  %165 = call i32 @T(i32 %164)
  %166 = load i32, i32* @RSFT, align 4
  %167 = call i32 @U(i32 %166)
  %168 = load i32, i32* @LGUI, align 4
  %169 = call i32 @U(i32 %168)
  %170 = load i32, i32* @END, align 4
  %171 = call i32* (i32, ...) @MACRO(i32 %161, i32 %163, i32 %165, i32 %167, i32 %169, i32 %170)
  br label %175

172:                                              ; preds = %155
  %173 = load i32, i32* @END, align 4
  %174 = call i32* (i32, ...) @MACRO(i32 %173)
  br label %175

175:                                              ; preds = %172, %159
  %176 = phi i32* [ %171, %159 ], [ %174, %172 ]
  store i32* %176, i32** %4, align 8
  br label %434

177:                                              ; preds = %152
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* @LCTRL, align 4
  %183 = call i32 @D(i32 %182)
  %184 = load i32, i32* @TAB, align 4
  %185 = call i32 @T(i32 %184)
  %186 = load i32, i32* @LCTRL, align 4
  %187 = call i32 @U(i32 %186)
  %188 = load i32, i32* @END, align 4
  %189 = call i32* (i32, ...) @MACRO(i32 %183, i32 %185, i32 %187, i32 %188)
  br label %193

190:                                              ; preds = %177
  %191 = load i32, i32* @END, align 4
  %192 = call i32* (i32, ...) @MACRO(i32 %191)
  br label %193

193:                                              ; preds = %190, %181
  %194 = phi i32* [ %189, %181 ], [ %192, %190 ]
  store i32* %194, i32** %4, align 8
  br label %434

195:                                              ; preds = %25
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = load i32, i32* @LGUI, align 4
  %204 = call i32 @D(i32 %203)
  %205 = load i32, i32* @MINS, align 4
  %206 = call i32 @T(i32 %205)
  %207 = load i32, i32* @LGUI, align 4
  %208 = call i32 @U(i32 %207)
  %209 = load i32, i32* @END, align 4
  %210 = call i32* (i32, ...) @MACRO(i32 %204, i32 %206, i32 %208, i32 %209)
  br label %214

211:                                              ; preds = %198
  %212 = load i32, i32* @END, align 4
  %213 = call i32* (i32, ...) @MACRO(i32 %212)
  br label %214

214:                                              ; preds = %211, %202
  %215 = phi i32* [ %210, %202 ], [ %213, %211 ]
  store i32* %215, i32** %4, align 8
  br label %434

216:                                              ; preds = %195
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32, i32* @LCTRL, align 4
  %222 = call i32 @D(i32 %221)
  %223 = load i32, i32* @MINS, align 4
  %224 = call i32 @T(i32 %223)
  %225 = load i32, i32* @LCTRL, align 4
  %226 = call i32 @U(i32 %225)
  %227 = load i32, i32* @END, align 4
  %228 = call i32* (i32, ...) @MACRO(i32 %222, i32 %224, i32 %226, i32 %227)
  br label %232

229:                                              ; preds = %216
  %230 = load i32, i32* @END, align 4
  %231 = call i32* (i32, ...) @MACRO(i32 %230)
  br label %232

232:                                              ; preds = %229, %220
  %233 = phi i32* [ %228, %220 ], [ %231, %229 ]
  store i32* %233, i32** %4, align 8
  br label %434

234:                                              ; preds = %25
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %237
  %242 = load i32, i32* @LGUI, align 4
  %243 = call i32 @D(i32 %242)
  %244 = load i32, i32* @EQL, align 4
  %245 = call i32 @T(i32 %244)
  %246 = load i32, i32* @LGUI, align 4
  %247 = call i32 @U(i32 %246)
  %248 = load i32, i32* @END, align 4
  %249 = call i32* (i32, ...) @MACRO(i32 %243, i32 %245, i32 %247, i32 %248)
  br label %253

250:                                              ; preds = %237
  %251 = load i32, i32* @END, align 4
  %252 = call i32* (i32, ...) @MACRO(i32 %251)
  br label %253

253:                                              ; preds = %250, %241
  %254 = phi i32* [ %249, %241 ], [ %252, %250 ]
  store i32* %254, i32** %4, align 8
  br label %434

255:                                              ; preds = %234
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  %260 = load i32, i32* @LCTRL, align 4
  %261 = call i32 @D(i32 %260)
  %262 = load i32, i32* @EQL, align 4
  %263 = call i32 @T(i32 %262)
  %264 = load i32, i32* @LCTRL, align 4
  %265 = call i32 @U(i32 %264)
  %266 = load i32, i32* @END, align 4
  %267 = call i32* (i32, ...) @MACRO(i32 %261, i32 %263, i32 %265, i32 %266)
  br label %271

268:                                              ; preds = %255
  %269 = load i32, i32* @END, align 4
  %270 = call i32* (i32, ...) @MACRO(i32 %269)
  br label %271

271:                                              ; preds = %268, %259
  %272 = phi i32* [ %267, %259 ], [ %270, %268 ]
  store i32* %272, i32** %4, align 8
  br label %434

273:                                              ; preds = %25
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = load i32, i32* @LGUI, align 4
  %282 = call i32 @D(i32 %281)
  %283 = load i32, i32* @ENT, align 4
  %284 = call i32 @T(i32 %283)
  %285 = load i32, i32* @LGUI, align 4
  %286 = call i32 @U(i32 %285)
  %287 = load i32, i32* @END, align 4
  %288 = call i32* (i32, ...) @MACRO(i32 %282, i32 %284, i32 %286, i32 %287)
  br label %292

289:                                              ; preds = %276
  %290 = load i32, i32* @END, align 4
  %291 = call i32* (i32, ...) @MACRO(i32 %290)
  br label %292

292:                                              ; preds = %289, %280
  %293 = phi i32* [ %288, %280 ], [ %291, %289 ]
  store i32* %293, i32** %4, align 8
  br label %434

294:                                              ; preds = %273
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32, i32* @LCTRL, align 4
  %300 = call i32 @D(i32 %299)
  %301 = load i32, i32* @ENT, align 4
  %302 = call i32 @T(i32 %301)
  %303 = load i32, i32* @LCTRL, align 4
  %304 = call i32 @U(i32 %303)
  %305 = load i32, i32* @END, align 4
  %306 = call i32* (i32, ...) @MACRO(i32 %300, i32 %302, i32 %304, i32 %305)
  br label %310

307:                                              ; preds = %294
  %308 = load i32, i32* @END, align 4
  %309 = call i32* (i32, ...) @MACRO(i32 %308)
  br label %310

310:                                              ; preds = %307, %298
  %311 = phi i32* [ %306, %298 ], [ %309, %307 ]
  store i32* %311, i32** %4, align 8
  br label %434

312:                                              ; preds = %25
  %313 = load i32, i32* %9, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %340

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %335

319:                                              ; preds = %315
  %320 = load i32, i32* @LGUI, align 4
  %321 = call i32 @D(i32 %320)
  %322 = load i32, i32* @LCTRL, align 4
  %323 = call i32 @D(i32 %322)
  %324 = load i32, i32* @LSFT, align 4
  %325 = call i32 @D(i32 %324)
  %326 = call i32 @T(i32 4)
  %327 = load i32, i32* @LSFT, align 4
  %328 = call i32 @U(i32 %327)
  %329 = load i32, i32* @LGUI, align 4
  %330 = call i32 @U(i32 %329)
  %331 = load i32, i32* @LCTRL, align 4
  %332 = call i32 @U(i32 %331)
  %333 = load i32, i32* @END, align 4
  %334 = call i32* (i32, ...) @MACRO(i32 %321, i32 %323, i32 %325, i32 %326, i32 %328, i32 %330, i32 %332, i32 %333)
  br label %338

335:                                              ; preds = %315
  %336 = load i32, i32* @END, align 4
  %337 = call i32* (i32, ...) @MACRO(i32 %336)
  br label %338

338:                                              ; preds = %335, %319
  %339 = phi i32* [ %334, %319 ], [ %337, %335 ]
  store i32* %339, i32** %4, align 8
  br label %434

340:                                              ; preds = %312
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i32, i32* @PSCR, align 4
  %346 = call i32 @T(i32 %345)
  %347 = call i32* (i32, ...) @MACRO(i32 %346)
  br label %351

348:                                              ; preds = %340
  %349 = load i32, i32* @END, align 4
  %350 = call i32* (i32, ...) @MACRO(i32 %349)
  br label %351

351:                                              ; preds = %348, %344
  %352 = phi i32* [ %347, %344 ], [ %350, %348 ]
  store i32* %352, i32** %4, align 8
  br label %434

353:                                              ; preds = %25
  %354 = load i32, i32* %9, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %374

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %356
  %361 = load i32, i32* @LCTRL, align 4
  %362 = call i32 @D(i32 %361)
  %363 = load i32, i32* @RIGHT, align 4
  %364 = call i32 @T(i32 %363)
  %365 = load i32, i32* @LCTRL, align 4
  %366 = call i32 @U(i32 %365)
  %367 = load i32, i32* @END, align 4
  %368 = call i32* (i32, ...) @MACRO(i32 %362, i32 %364, i32 %366, i32 %367)
  br label %372

369:                                              ; preds = %356
  %370 = load i32, i32* @END, align 4
  %371 = call i32* (i32, ...) @MACRO(i32 %370)
  br label %372

372:                                              ; preds = %369, %360
  %373 = phi i32* [ %368, %360 ], [ %371, %369 ]
  store i32* %373, i32** %4, align 8
  br label %434

374:                                              ; preds = %353
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %374
  %379 = load i32, i32* @LGUI, align 4
  %380 = call i32 @D(i32 %379)
  %381 = load i32, i32* @RIGHT, align 4
  %382 = call i32 @T(i32 %381)
  %383 = load i32, i32* @LGUI, align 4
  %384 = call i32 @U(i32 %383)
  %385 = load i32, i32* @END, align 4
  %386 = call i32* (i32, ...) @MACRO(i32 %380, i32 %382, i32 %384, i32 %385)
  br label %390

387:                                              ; preds = %374
  %388 = load i32, i32* @END, align 4
  %389 = call i32* (i32, ...) @MACRO(i32 %388)
  br label %390

390:                                              ; preds = %387, %378
  %391 = phi i32* [ %386, %378 ], [ %389, %387 ]
  store i32* %391, i32** %4, align 8
  br label %434

392:                                              ; preds = %25
  %393 = load i32, i32* %9, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %413

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load i32, i32* @LCTRL, align 4
  %401 = call i32 @D(i32 %400)
  %402 = load i32, i32* @LEFT, align 4
  %403 = call i32 @T(i32 %402)
  %404 = load i32, i32* @LCTRL, align 4
  %405 = call i32 @U(i32 %404)
  %406 = load i32, i32* @END, align 4
  %407 = call i32* (i32, ...) @MACRO(i32 %401, i32 %403, i32 %405, i32 %406)
  br label %411

408:                                              ; preds = %395
  %409 = load i32, i32* @END, align 4
  %410 = call i32* (i32, ...) @MACRO(i32 %409)
  br label %411

411:                                              ; preds = %408, %399
  %412 = phi i32* [ %407, %399 ], [ %410, %408 ]
  store i32* %412, i32** %4, align 8
  br label %434

413:                                              ; preds = %392
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %426

417:                                              ; preds = %413
  %418 = load i32, i32* @LGUI, align 4
  %419 = call i32 @D(i32 %418)
  %420 = load i32, i32* @LEFT, align 4
  %421 = call i32 @T(i32 %420)
  %422 = load i32, i32* @LGUI, align 4
  %423 = call i32 @U(i32 %422)
  %424 = load i32, i32* @END, align 4
  %425 = call i32* (i32, ...) @MACRO(i32 %419, i32 %421, i32 %423, i32 %424)
  br label %429

426:                                              ; preds = %413
  %427 = load i32, i32* @END, align 4
  %428 = call i32* (i32, ...) @MACRO(i32 %427)
  br label %429

429:                                              ; preds = %426, %417
  %430 = phi i32* [ %425, %417 ], [ %428, %426 ]
  store i32* %430, i32** %4, align 8
  br label %434

431:                                              ; preds = %25
  br label %432

432:                                              ; preds = %431
  %433 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %433, i32** %4, align 8
  br label %434

434:                                              ; preds = %432, %429, %411, %390, %372, %351, %338, %310, %292, %271, %253, %232, %214, %193, %175, %150, %128, %103, %85, %64, %46
  %435 = load i32*, i32** %4, align 8
  ret i32* %435
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @eeconfig_is_enabled(...) #2

declare dso_local i32 @eeconfig_init(...) #2

declare dso_local i32* @MACRO(i32, ...) #2

declare dso_local i32 @D(i32) #2

declare dso_local i32 @T(i32) #2

declare dso_local i32 @U(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
