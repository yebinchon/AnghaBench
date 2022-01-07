; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sentraq/s60_x/keymaps/bluebear/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sentraq/s60_x/keymaps/bluebear/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@mc_shift_on = common dso_local global i32 0, align 4
@MINS = common dso_local global i32 0, align 4
@DOT = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
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
  switch i32 %8, label %1103 [
    i32 0, label %9
    i32 1, label %51
    i32 2, label %93
    i32 3, label %135
    i32 4, label %157
    i32 5, label %201
    i32 6, label %223
    i32 7, label %245
    i32 8, label %285
    i32 9, label %307
    i32 10, label %347
    i32 11, label %363
    i32 12, label %383
    i32 13, label %403
    i32 14, label %421
    i32 15, label %435
    i32 16, label %455
    i32 17, label %473
    i32 18, label %493
    i32 19, label %509
    i32 20, label %529
    i32 21, label %547
    i32 22, label %567
    i32 23, label %583
    i32 24, label %599
    i32 25, label %617
    i32 26, label %637
    i32 27, label %657
    i32 28, label %675
    i32 29, label %693
    i32 30, label %707
    i32 31, label %725
    i32 32, label %745
    i32 33, label %763
    i32 34, label %783
    i32 35, label %807
    i32 36, label %827
    i32 37, label %851
    i32 38, label %875
    i32 39, label %919
    i32 40, label %961
    i32 41, label %1005
    i32 42, label %1045
    i32 43, label %1089
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  %16 = load i32, i32* @mc_shift_on, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* @MINS, align 4
  %20 = call i32 @T(i32 %19)
  %21 = load i32, i32* @DOT, align 4
  %22 = call i32 @T(i32 %21)
  %23 = load i32, i32* @MINS, align 4
  %24 = call i32 @T(i32 %23)
  %25 = load i32, i32* @MINS, align 4
  %26 = call i32 @T(i32 %25)
  %27 = load i32, i32* @DOT, align 4
  %28 = call i32 @T(i32 %27)
  %29 = load i32, i32* @MINS, align 4
  %30 = call i32 @T(i32 %29)
  %31 = load i32, i32* @SPACE, align 4
  %32 = call i32 @T(i32 %31)
  %33 = load i32, i32* @END, align 4
  %34 = call i32* (i32, i32, i32, ...) @MACRO(i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  br label %1105

35:                                               ; preds = %15
  %36 = load i32, i32* @MINS, align 4
  %37 = call i32 @T(i32 %36)
  %38 = load i32, i32* @MINS, align 4
  %39 = call i32 @T(i32 %38)
  %40 = load i32, i32* @MINS, align 4
  %41 = call i32 @T(i32 %40)
  %42 = load i32, i32* @MINS, align 4
  %43 = call i32 @T(i32 %42)
  %44 = load i32, i32* @MINS, align 4
  %45 = call i32 @T(i32 %44)
  %46 = load i32, i32* @SPACE, align 4
  %47 = call i32 @T(i32 %46)
  %48 = load i32, i32* @END, align 4
  %49 = call i32* (i32, i32, i32, ...) @MACRO(i32 %37, i32 %39, i32 %41, i32 %43, i32 %45, i32 %47, i32 %48)
  store i32* %49, i32** %4, align 8
  br label %1105

50:                                               ; preds = %9
  br label %1103

51:                                               ; preds = %3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load i32, i32* @mc_shift_on, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i32, i32* @MINS, align 4
  %62 = call i32 @T(i32 %61)
  %63 = load i32, i32* @DOT, align 4
  %64 = call i32 @T(i32 %63)
  %65 = load i32, i32* @MINS, align 4
  %66 = call i32 @T(i32 %65)
  %67 = load i32, i32* @DOT, align 4
  %68 = call i32 @T(i32 %67)
  %69 = load i32, i32* @MINS, align 4
  %70 = call i32 @T(i32 %69)
  %71 = load i32, i32* @MINS, align 4
  %72 = call i32 @T(i32 %71)
  %73 = load i32, i32* @SPACE, align 4
  %74 = call i32 @T(i32 %73)
  %75 = load i32, i32* @END, align 4
  %76 = call i32* (i32, i32, i32, ...) @MACRO(i32 %62, i32 %64, i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %75)
  store i32* %76, i32** %4, align 8
  br label %1105

77:                                               ; preds = %57
  %78 = load i32, i32* @DOT, align 4
  %79 = call i32 @T(i32 %78)
  %80 = load i32, i32* @MINS, align 4
  %81 = call i32 @T(i32 %80)
  %82 = load i32, i32* @MINS, align 4
  %83 = call i32 @T(i32 %82)
  %84 = load i32, i32* @MINS, align 4
  %85 = call i32 @T(i32 %84)
  %86 = load i32, i32* @MINS, align 4
  %87 = call i32 @T(i32 %86)
  %88 = load i32, i32* @SPACE, align 4
  %89 = call i32 @T(i32 %88)
  %90 = load i32, i32* @END, align 4
  %91 = call i32* (i32, i32, i32, ...) @MACRO(i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %90)
  store i32* %91, i32** %4, align 8
  br label %1105

92:                                               ; preds = %51
  br label %1103

93:                                               ; preds = %3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %93
  %100 = load i32, i32* @mc_shift_on, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load i32, i32* @DOT, align 4
  %104 = call i32 @T(i32 %103)
  %105 = load i32, i32* @MINS, align 4
  %106 = call i32 @T(i32 %105)
  %107 = load i32, i32* @MINS, align 4
  %108 = call i32 @T(i32 %107)
  %109 = load i32, i32* @DOT, align 4
  %110 = call i32 @T(i32 %109)
  %111 = load i32, i32* @MINS, align 4
  %112 = call i32 @T(i32 %111)
  %113 = load i32, i32* @DOT, align 4
  %114 = call i32 @T(i32 %113)
  %115 = load i32, i32* @SPACE, align 4
  %116 = call i32 @T(i32 %115)
  %117 = load i32, i32* @END, align 4
  %118 = call i32* (i32, i32, i32, ...) @MACRO(i32 %104, i32 %106, i32 %108, i32 %110, i32 %112, i32 %114, i32 %116, i32 %117)
  store i32* %118, i32** %4, align 8
  br label %1105

119:                                              ; preds = %99
  %120 = load i32, i32* @DOT, align 4
  %121 = call i32 @T(i32 %120)
  %122 = load i32, i32* @DOT, align 4
  %123 = call i32 @T(i32 %122)
  %124 = load i32, i32* @MINS, align 4
  %125 = call i32 @T(i32 %124)
  %126 = load i32, i32* @MINS, align 4
  %127 = call i32 @T(i32 %126)
  %128 = load i32, i32* @MINS, align 4
  %129 = call i32 @T(i32 %128)
  %130 = load i32, i32* @SPACE, align 4
  %131 = call i32 @T(i32 %130)
  %132 = load i32, i32* @END, align 4
  %133 = call i32* (i32, i32, i32, ...) @MACRO(i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %131, i32 %132)
  store i32* %133, i32** %4, align 8
  br label %1105

134:                                              ; preds = %93
  br label %1103

135:                                              ; preds = %3
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load i32, i32* @DOT, align 4
  %143 = call i32 @T(i32 %142)
  %144 = load i32, i32* @DOT, align 4
  %145 = call i32 @T(i32 %144)
  %146 = load i32, i32* @DOT, align 4
  %147 = call i32 @T(i32 %146)
  %148 = load i32, i32* @MINS, align 4
  %149 = call i32 @T(i32 %148)
  %150 = load i32, i32* @MINS, align 4
  %151 = call i32 @T(i32 %150)
  %152 = load i32, i32* @SPACE, align 4
  %153 = call i32 @T(i32 %152)
  %154 = load i32, i32* @END, align 4
  %155 = call i32* (i32, i32, i32, ...) @MACRO(i32 %143, i32 %145, i32 %147, i32 %149, i32 %151, i32 %153, i32 %154)
  store i32* %155, i32** %4, align 8
  br label %1105

156:                                              ; preds = %135
  br label %1103

157:                                              ; preds = %3
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %200

163:                                              ; preds = %157
  %164 = load i32, i32* @mc_shift_on, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32, i32* @DOT, align 4
  %168 = call i32 @T(i32 %167)
  %169 = load i32, i32* @DOT, align 4
  %170 = call i32 @T(i32 %169)
  %171 = load i32, i32* @DOT, align 4
  %172 = call i32 @T(i32 %171)
  %173 = load i32, i32* @MINS, align 4
  %174 = call i32 @T(i32 %173)
  %175 = load i32, i32* @DOT, align 4
  %176 = call i32 @T(i32 %175)
  %177 = load i32, i32* @DOT, align 4
  %178 = call i32 @T(i32 %177)
  %179 = load i32, i32* @MINS, align 4
  %180 = call i32 @T(i32 %179)
  %181 = load i32, i32* @SPACE, align 4
  %182 = call i32 @T(i32 %181)
  %183 = load i32, i32* @END, align 4
  %184 = call i32* (i32, i32, i32, ...) @MACRO(i32 %168, i32 %170, i32 %172, i32 %174, i32 %176, i32 %178, i32 %180, i32 %182, i32 %183)
  store i32* %184, i32** %4, align 8
  br label %1105

185:                                              ; preds = %163
  %186 = load i32, i32* @DOT, align 4
  %187 = call i32 @T(i32 %186)
  %188 = load i32, i32* @DOT, align 4
  %189 = call i32 @T(i32 %188)
  %190 = load i32, i32* @DOT, align 4
  %191 = call i32 @T(i32 %190)
  %192 = load i32, i32* @DOT, align 4
  %193 = call i32 @T(i32 %192)
  %194 = load i32, i32* @MINS, align 4
  %195 = call i32 @T(i32 %194)
  %196 = load i32, i32* @SPACE, align 4
  %197 = call i32 @T(i32 %196)
  %198 = load i32, i32* @END, align 4
  %199 = call i32* (i32, i32, i32, ...) @MACRO(i32 %187, i32 %189, i32 %191, i32 %193, i32 %195, i32 %197, i32 %198)
  store i32* %199, i32** %4, align 8
  br label %1105

200:                                              ; preds = %157
  br label %1103

201:                                              ; preds = %3
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %201
  %208 = load i32, i32* @DOT, align 4
  %209 = call i32 @T(i32 %208)
  %210 = load i32, i32* @DOT, align 4
  %211 = call i32 @T(i32 %210)
  %212 = load i32, i32* @DOT, align 4
  %213 = call i32 @T(i32 %212)
  %214 = load i32, i32* @DOT, align 4
  %215 = call i32 @T(i32 %214)
  %216 = load i32, i32* @DOT, align 4
  %217 = call i32 @T(i32 %216)
  %218 = load i32, i32* @SPACE, align 4
  %219 = call i32 @T(i32 %218)
  %220 = load i32, i32* @END, align 4
  %221 = call i32* (i32, i32, i32, ...) @MACRO(i32 %209, i32 %211, i32 %213, i32 %215, i32 %217, i32 %219, i32 %220)
  store i32* %221, i32** %4, align 8
  br label %1105

222:                                              ; preds = %201
  br label %1103

223:                                              ; preds = %3
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %223
  %230 = load i32, i32* @MINS, align 4
  %231 = call i32 @T(i32 %230)
  %232 = load i32, i32* @DOT, align 4
  %233 = call i32 @T(i32 %232)
  %234 = load i32, i32* @DOT, align 4
  %235 = call i32 @T(i32 %234)
  %236 = load i32, i32* @DOT, align 4
  %237 = call i32 @T(i32 %236)
  %238 = load i32, i32* @DOT, align 4
  %239 = call i32 @T(i32 %238)
  %240 = load i32, i32* @SPACE, align 4
  %241 = call i32 @T(i32 %240)
  %242 = load i32, i32* @END, align 4
  %243 = call i32* (i32, i32, i32, ...) @MACRO(i32 %231, i32 %233, i32 %235, i32 %237, i32 %239, i32 %241, i32 %242)
  store i32* %243, i32** %4, align 8
  br label %1105

244:                                              ; preds = %223
  br label %1103

245:                                              ; preds = %3
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %284

251:                                              ; preds = %245
  %252 = load i32, i32* @mc_shift_on, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i32, i32* @DOT, align 4
  %256 = call i32 @T(i32 %255)
  %257 = load i32, i32* @MINS, align 4
  %258 = call i32 @T(i32 %257)
  %259 = load i32, i32* @DOT, align 4
  %260 = call i32 @T(i32 %259)
  %261 = load i32, i32* @DOT, align 4
  %262 = call i32 @T(i32 %261)
  %263 = load i32, i32* @DOT, align 4
  %264 = call i32 @T(i32 %263)
  %265 = load i32, i32* @SPACE, align 4
  %266 = call i32 @T(i32 %265)
  %267 = load i32, i32* @END, align 4
  %268 = call i32* (i32, i32, i32, ...) @MACRO(i32 %256, i32 %258, i32 %260, i32 %262, i32 %264, i32 %266, i32 %267)
  store i32* %268, i32** %4, align 8
  br label %1105

269:                                              ; preds = %251
  %270 = load i32, i32* @MINS, align 4
  %271 = call i32 @T(i32 %270)
  %272 = load i32, i32* @MINS, align 4
  %273 = call i32 @T(i32 %272)
  %274 = load i32, i32* @DOT, align 4
  %275 = call i32 @T(i32 %274)
  %276 = load i32, i32* @DOT, align 4
  %277 = call i32 @T(i32 %276)
  %278 = load i32, i32* @DOT, align 4
  %279 = call i32 @T(i32 %278)
  %280 = load i32, i32* @SPACE, align 4
  %281 = call i32 @T(i32 %280)
  %282 = load i32, i32* @END, align 4
  %283 = call i32* (i32, i32, i32, ...) @MACRO(i32 %271, i32 %273, i32 %275, i32 %277, i32 %279, i32 %281, i32 %282)
  store i32* %283, i32** %4, align 8
  br label %1105

284:                                              ; preds = %245
  br label %1103

285:                                              ; preds = %3
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %285
  %292 = load i32, i32* @MINS, align 4
  %293 = call i32 @T(i32 %292)
  %294 = load i32, i32* @MINS, align 4
  %295 = call i32 @T(i32 %294)
  %296 = load i32, i32* @MINS, align 4
  %297 = call i32 @T(i32 %296)
  %298 = load i32, i32* @DOT, align 4
  %299 = call i32 @T(i32 %298)
  %300 = load i32, i32* @DOT, align 4
  %301 = call i32 @T(i32 %300)
  %302 = load i32, i32* @SPACE, align 4
  %303 = call i32 @T(i32 %302)
  %304 = load i32, i32* @END, align 4
  %305 = call i32* (i32, i32, i32, ...) @MACRO(i32 %293, i32 %295, i32 %297, i32 %299, i32 %301, i32 %303, i32 %304)
  store i32* %305, i32** %4, align 8
  br label %1105

306:                                              ; preds = %285
  br label %1103

307:                                              ; preds = %3
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %346

313:                                              ; preds = %307
  %314 = load i32, i32* @mc_shift_on, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %331

316:                                              ; preds = %313
  %317 = load i32, i32* @MINS, align 4
  %318 = call i32 @T(i32 %317)
  %319 = load i32, i32* @DOT, align 4
  %320 = call i32 @T(i32 %319)
  %321 = load i32, i32* @MINS, align 4
  %322 = call i32 @T(i32 %321)
  %323 = load i32, i32* @MINS, align 4
  %324 = call i32 @T(i32 %323)
  %325 = load i32, i32* @DOT, align 4
  %326 = call i32 @T(i32 %325)
  %327 = load i32, i32* @SPACE, align 4
  %328 = call i32 @T(i32 %327)
  %329 = load i32, i32* @END, align 4
  %330 = call i32* (i32, i32, i32, ...) @MACRO(i32 %318, i32 %320, i32 %322, i32 %324, i32 %326, i32 %328, i32 %329)
  store i32* %330, i32** %4, align 8
  br label %1105

331:                                              ; preds = %313
  %332 = load i32, i32* @MINS, align 4
  %333 = call i32 @T(i32 %332)
  %334 = load i32, i32* @MINS, align 4
  %335 = call i32 @T(i32 %334)
  %336 = load i32, i32* @MINS, align 4
  %337 = call i32 @T(i32 %336)
  %338 = load i32, i32* @MINS, align 4
  %339 = call i32 @T(i32 %338)
  %340 = load i32, i32* @DOT, align 4
  %341 = call i32 @T(i32 %340)
  %342 = load i32, i32* @SPACE, align 4
  %343 = call i32 @T(i32 %342)
  %344 = load i32, i32* @END, align 4
  %345 = call i32* (i32, i32, i32, ...) @MACRO(i32 %333, i32 %335, i32 %337, i32 %339, i32 %341, i32 %343, i32 %344)
  store i32* %345, i32** %4, align 8
  br label %1105

346:                                              ; preds = %307
  br label %1103

347:                                              ; preds = %3
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %347
  %354 = load i32, i32* @DOT, align 4
  %355 = call i32 @T(i32 %354)
  %356 = load i32, i32* @MINS, align 4
  %357 = call i32 @T(i32 %356)
  %358 = load i32, i32* @SPACE, align 4
  %359 = call i32 @T(i32 %358)
  %360 = load i32, i32* @END, align 4
  %361 = call i32* (i32, i32, i32, ...) @MACRO(i32 %355, i32 %357, i32 %359, i32 %360)
  store i32* %361, i32** %4, align 8
  br label %1105

362:                                              ; preds = %347
  br label %1103

363:                                              ; preds = %3
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %363
  %370 = load i32, i32* @MINS, align 4
  %371 = call i32 @T(i32 %370)
  %372 = load i32, i32* @DOT, align 4
  %373 = call i32 @T(i32 %372)
  %374 = load i32, i32* @DOT, align 4
  %375 = call i32 @T(i32 %374)
  %376 = load i32, i32* @DOT, align 4
  %377 = call i32 @T(i32 %376)
  %378 = load i32, i32* @SPACE, align 4
  %379 = call i32 @T(i32 %378)
  %380 = load i32, i32* @END, align 4
  %381 = call i32* (i32, i32, i32, ...) @MACRO(i32 %371, i32 %373, i32 %375, i32 %377, i32 %379, i32 %380)
  store i32* %381, i32** %4, align 8
  br label %1105

382:                                              ; preds = %363
  br label %1103

383:                                              ; preds = %3
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %402

389:                                              ; preds = %383
  %390 = load i32, i32* @MINS, align 4
  %391 = call i32 @T(i32 %390)
  %392 = load i32, i32* @DOT, align 4
  %393 = call i32 @T(i32 %392)
  %394 = load i32, i32* @MINS, align 4
  %395 = call i32 @T(i32 %394)
  %396 = load i32, i32* @DOT, align 4
  %397 = call i32 @T(i32 %396)
  %398 = load i32, i32* @SPACE, align 4
  %399 = call i32 @T(i32 %398)
  %400 = load i32, i32* @END, align 4
  %401 = call i32* (i32, i32, i32, ...) @MACRO(i32 %391, i32 %393, i32 %395, i32 %397, i32 %399, i32 %400)
  store i32* %401, i32** %4, align 8
  br label %1105

402:                                              ; preds = %383
  br label %1103

403:                                              ; preds = %3
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %420

409:                                              ; preds = %403
  %410 = load i32, i32* @MINS, align 4
  %411 = call i32 @T(i32 %410)
  %412 = load i32, i32* @DOT, align 4
  %413 = call i32 @T(i32 %412)
  %414 = load i32, i32* @DOT, align 4
  %415 = call i32 @T(i32 %414)
  %416 = load i32, i32* @SPACE, align 4
  %417 = call i32 @T(i32 %416)
  %418 = load i32, i32* @END, align 4
  %419 = call i32* (i32, i32, i32, ...) @MACRO(i32 %411, i32 %413, i32 %415, i32 %417, i32 %418)
  store i32* %419, i32** %4, align 8
  br label %1105

420:                                              ; preds = %403
  br label %1103

421:                                              ; preds = %3
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %434

427:                                              ; preds = %421
  %428 = load i32, i32* @DOT, align 4
  %429 = call i32 @T(i32 %428)
  %430 = load i32, i32* @SPACE, align 4
  %431 = call i32 @T(i32 %430)
  %432 = load i32, i32* @END, align 4
  %433 = call i32* (i32, i32, i32, ...) @MACRO(i32 %429, i32 %431, i32 %432)
  store i32* %433, i32** %4, align 8
  br label %1105

434:                                              ; preds = %421
  br label %1103

435:                                              ; preds = %3
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %454

441:                                              ; preds = %435
  %442 = load i32, i32* @DOT, align 4
  %443 = call i32 @T(i32 %442)
  %444 = load i32, i32* @DOT, align 4
  %445 = call i32 @T(i32 %444)
  %446 = load i32, i32* @MINS, align 4
  %447 = call i32 @T(i32 %446)
  %448 = load i32, i32* @DOT, align 4
  %449 = call i32 @T(i32 %448)
  %450 = load i32, i32* @SPACE, align 4
  %451 = call i32 @T(i32 %450)
  %452 = load i32, i32* @END, align 4
  %453 = call i32* (i32, i32, i32, ...) @MACRO(i32 %443, i32 %445, i32 %447, i32 %449, i32 %451, i32 %452)
  store i32* %453, i32** %4, align 8
  br label %1105

454:                                              ; preds = %435
  br label %1103

455:                                              ; preds = %3
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %472

461:                                              ; preds = %455
  %462 = load i32, i32* @MINS, align 4
  %463 = call i32 @T(i32 %462)
  %464 = load i32, i32* @MINS, align 4
  %465 = call i32 @T(i32 %464)
  %466 = load i32, i32* @DOT, align 4
  %467 = call i32 @T(i32 %466)
  %468 = load i32, i32* @SPACE, align 4
  %469 = call i32 @T(i32 %468)
  %470 = load i32, i32* @END, align 4
  %471 = call i32* (i32, i32, i32, ...) @MACRO(i32 %463, i32 %465, i32 %467, i32 %469, i32 %470)
  store i32* %471, i32** %4, align 8
  br label %1105

472:                                              ; preds = %455
  br label %1103

473:                                              ; preds = %3
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %492

479:                                              ; preds = %473
  %480 = load i32, i32* @DOT, align 4
  %481 = call i32 @T(i32 %480)
  %482 = load i32, i32* @DOT, align 4
  %483 = call i32 @T(i32 %482)
  %484 = load i32, i32* @DOT, align 4
  %485 = call i32 @T(i32 %484)
  %486 = load i32, i32* @DOT, align 4
  %487 = call i32 @T(i32 %486)
  %488 = load i32, i32* @SPACE, align 4
  %489 = call i32 @T(i32 %488)
  %490 = load i32, i32* @END, align 4
  %491 = call i32* (i32, i32, i32, ...) @MACRO(i32 %481, i32 %483, i32 %485, i32 %487, i32 %489, i32 %490)
  store i32* %491, i32** %4, align 8
  br label %1105

492:                                              ; preds = %473
  br label %1103

493:                                              ; preds = %3
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %508

499:                                              ; preds = %493
  %500 = load i32, i32* @DOT, align 4
  %501 = call i32 @T(i32 %500)
  %502 = load i32, i32* @DOT, align 4
  %503 = call i32 @T(i32 %502)
  %504 = load i32, i32* @SPACE, align 4
  %505 = call i32 @T(i32 %504)
  %506 = load i32, i32* @END, align 4
  %507 = call i32* (i32, i32, i32, ...) @MACRO(i32 %501, i32 %503, i32 %505, i32 %506)
  store i32* %507, i32** %4, align 8
  br label %1105

508:                                              ; preds = %493
  br label %1103

509:                                              ; preds = %3
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %528

515:                                              ; preds = %509
  %516 = load i32, i32* @DOT, align 4
  %517 = call i32 @T(i32 %516)
  %518 = load i32, i32* @MINS, align 4
  %519 = call i32 @T(i32 %518)
  %520 = load i32, i32* @MINS, align 4
  %521 = call i32 @T(i32 %520)
  %522 = load i32, i32* @MINS, align 4
  %523 = call i32 @T(i32 %522)
  %524 = load i32, i32* @SPACE, align 4
  %525 = call i32 @T(i32 %524)
  %526 = load i32, i32* @END, align 4
  %527 = call i32* (i32, i32, i32, ...) @MACRO(i32 %517, i32 %519, i32 %521, i32 %523, i32 %525, i32 %526)
  store i32* %527, i32** %4, align 8
  br label %1105

528:                                              ; preds = %509
  br label %1103

529:                                              ; preds = %3
  %530 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %546

535:                                              ; preds = %529
  %536 = load i32, i32* @MINS, align 4
  %537 = call i32 @T(i32 %536)
  %538 = load i32, i32* @DOT, align 4
  %539 = call i32 @T(i32 %538)
  %540 = load i32, i32* @MINS, align 4
  %541 = call i32 @T(i32 %540)
  %542 = load i32, i32* @SPACE, align 4
  %543 = call i32 @T(i32 %542)
  %544 = load i32, i32* @END, align 4
  %545 = call i32* (i32, i32, i32, ...) @MACRO(i32 %537, i32 %539, i32 %541, i32 %543, i32 %544)
  store i32* %545, i32** %4, align 8
  br label %1105

546:                                              ; preds = %529
  br label %1103

547:                                              ; preds = %3
  %548 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %566

553:                                              ; preds = %547
  %554 = load i32, i32* @DOT, align 4
  %555 = call i32 @T(i32 %554)
  %556 = load i32, i32* @MINS, align 4
  %557 = call i32 @T(i32 %556)
  %558 = load i32, i32* @DOT, align 4
  %559 = call i32 @T(i32 %558)
  %560 = load i32, i32* @DOT, align 4
  %561 = call i32 @T(i32 %560)
  %562 = load i32, i32* @SPACE, align 4
  %563 = call i32 @T(i32 %562)
  %564 = load i32, i32* @END, align 4
  %565 = call i32* (i32, i32, i32, ...) @MACRO(i32 %555, i32 %557, i32 %559, i32 %561, i32 %563, i32 %564)
  store i32* %565, i32** %4, align 8
  br label %1105

566:                                              ; preds = %547
  br label %1103

567:                                              ; preds = %3
  %568 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %582

573:                                              ; preds = %567
  %574 = load i32, i32* @MINS, align 4
  %575 = call i32 @T(i32 %574)
  %576 = load i32, i32* @MINS, align 4
  %577 = call i32 @T(i32 %576)
  %578 = load i32, i32* @SPACE, align 4
  %579 = call i32 @T(i32 %578)
  %580 = load i32, i32* @END, align 4
  %581 = call i32* (i32, i32, i32, ...) @MACRO(i32 %575, i32 %577, i32 %579, i32 %580)
  store i32* %581, i32** %4, align 8
  br label %1105

582:                                              ; preds = %567
  br label %1103

583:                                              ; preds = %3
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %598

589:                                              ; preds = %583
  %590 = load i32, i32* @MINS, align 4
  %591 = call i32 @T(i32 %590)
  %592 = load i32, i32* @DOT, align 4
  %593 = call i32 @T(i32 %592)
  %594 = load i32, i32* @SPACE, align 4
  %595 = call i32 @T(i32 %594)
  %596 = load i32, i32* @END, align 4
  %597 = call i32* (i32, i32, i32, ...) @MACRO(i32 %591, i32 %593, i32 %595, i32 %596)
  store i32* %597, i32** %4, align 8
  br label %1105

598:                                              ; preds = %583
  br label %1103

599:                                              ; preds = %3
  %600 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %616

605:                                              ; preds = %599
  %606 = load i32, i32* @MINS, align 4
  %607 = call i32 @T(i32 %606)
  %608 = load i32, i32* @MINS, align 4
  %609 = call i32 @T(i32 %608)
  %610 = load i32, i32* @MINS, align 4
  %611 = call i32 @T(i32 %610)
  %612 = load i32, i32* @SPACE, align 4
  %613 = call i32 @T(i32 %612)
  %614 = load i32, i32* @END, align 4
  %615 = call i32* (i32, i32, i32, ...) @MACRO(i32 %607, i32 %609, i32 %611, i32 %613, i32 %614)
  store i32* %615, i32** %4, align 8
  br label %1105

616:                                              ; preds = %599
  br label %1103

617:                                              ; preds = %3
  %618 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %636

623:                                              ; preds = %617
  %624 = load i32, i32* @DOT, align 4
  %625 = call i32 @T(i32 %624)
  %626 = load i32, i32* @MINS, align 4
  %627 = call i32 @T(i32 %626)
  %628 = load i32, i32* @MINS, align 4
  %629 = call i32 @T(i32 %628)
  %630 = load i32, i32* @DOT, align 4
  %631 = call i32 @T(i32 %630)
  %632 = load i32, i32* @SPACE, align 4
  %633 = call i32 @T(i32 %632)
  %634 = load i32, i32* @END, align 4
  %635 = call i32* (i32, i32, i32, ...) @MACRO(i32 %625, i32 %627, i32 %629, i32 %631, i32 %633, i32 %634)
  store i32* %635, i32** %4, align 8
  br label %1105

636:                                              ; preds = %617
  br label %1103

637:                                              ; preds = %3
  %638 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %656

643:                                              ; preds = %637
  %644 = load i32, i32* @MINS, align 4
  %645 = call i32 @T(i32 %644)
  %646 = load i32, i32* @MINS, align 4
  %647 = call i32 @T(i32 %646)
  %648 = load i32, i32* @DOT, align 4
  %649 = call i32 @T(i32 %648)
  %650 = load i32, i32* @MINS, align 4
  %651 = call i32 @T(i32 %650)
  %652 = load i32, i32* @SPACE, align 4
  %653 = call i32 @T(i32 %652)
  %654 = load i32, i32* @END, align 4
  %655 = call i32* (i32, i32, i32, ...) @MACRO(i32 %645, i32 %647, i32 %649, i32 %651, i32 %653, i32 %654)
  store i32* %655, i32** %4, align 8
  br label %1105

656:                                              ; preds = %637
  br label %1103

657:                                              ; preds = %3
  %658 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %659 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %674

663:                                              ; preds = %657
  %664 = load i32, i32* @DOT, align 4
  %665 = call i32 @T(i32 %664)
  %666 = load i32, i32* @MINS, align 4
  %667 = call i32 @T(i32 %666)
  %668 = load i32, i32* @DOT, align 4
  %669 = call i32 @T(i32 %668)
  %670 = load i32, i32* @SPACE, align 4
  %671 = call i32 @T(i32 %670)
  %672 = load i32, i32* @END, align 4
  %673 = call i32* (i32, i32, i32, ...) @MACRO(i32 %665, i32 %667, i32 %669, i32 %671, i32 %672)
  store i32* %673, i32** %4, align 8
  br label %1105

674:                                              ; preds = %657
  br label %1103

675:                                              ; preds = %3
  %676 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %677 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %692

681:                                              ; preds = %675
  %682 = load i32, i32* @DOT, align 4
  %683 = call i32 @T(i32 %682)
  %684 = load i32, i32* @DOT, align 4
  %685 = call i32 @T(i32 %684)
  %686 = load i32, i32* @DOT, align 4
  %687 = call i32 @T(i32 %686)
  %688 = load i32, i32* @SPACE, align 4
  %689 = call i32 @T(i32 %688)
  %690 = load i32, i32* @END, align 4
  %691 = call i32* (i32, i32, i32, ...) @MACRO(i32 %683, i32 %685, i32 %687, i32 %689, i32 %690)
  store i32* %691, i32** %4, align 8
  br label %1105

692:                                              ; preds = %675
  br label %1103

693:                                              ; preds = %3
  %694 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %695 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %706

699:                                              ; preds = %693
  %700 = load i32, i32* @MINS, align 4
  %701 = call i32 @T(i32 %700)
  %702 = load i32, i32* @SPACE, align 4
  %703 = call i32 @T(i32 %702)
  %704 = load i32, i32* @END, align 4
  %705 = call i32* (i32, i32, i32, ...) @MACRO(i32 %701, i32 %703, i32 %704)
  store i32* %705, i32** %4, align 8
  br label %1105

706:                                              ; preds = %693
  br label %1103

707:                                              ; preds = %3
  %708 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %709 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %708, i32 0, i32 0
  %710 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %724

713:                                              ; preds = %707
  %714 = load i32, i32* @DOT, align 4
  %715 = call i32 @T(i32 %714)
  %716 = load i32, i32* @DOT, align 4
  %717 = call i32 @T(i32 %716)
  %718 = load i32, i32* @MINS, align 4
  %719 = call i32 @T(i32 %718)
  %720 = load i32, i32* @SPACE, align 4
  %721 = call i32 @T(i32 %720)
  %722 = load i32, i32* @END, align 4
  %723 = call i32* (i32, i32, i32, ...) @MACRO(i32 %715, i32 %717, i32 %719, i32 %721, i32 %722)
  store i32* %723, i32** %4, align 8
  br label %1105

724:                                              ; preds = %707
  br label %1103

725:                                              ; preds = %3
  %726 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %727 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %726, i32 0, i32 0
  %728 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %744

731:                                              ; preds = %725
  %732 = load i32, i32* @DOT, align 4
  %733 = call i32 @T(i32 %732)
  %734 = load i32, i32* @DOT, align 4
  %735 = call i32 @T(i32 %734)
  %736 = load i32, i32* @DOT, align 4
  %737 = call i32 @T(i32 %736)
  %738 = load i32, i32* @MINS, align 4
  %739 = call i32 @T(i32 %738)
  %740 = load i32, i32* @SPACE, align 4
  %741 = call i32 @T(i32 %740)
  %742 = load i32, i32* @END, align 4
  %743 = call i32* (i32, i32, i32, ...) @MACRO(i32 %733, i32 %735, i32 %737, i32 %739, i32 %741, i32 %742)
  store i32* %743, i32** %4, align 8
  br label %1105

744:                                              ; preds = %725
  br label %1103

745:                                              ; preds = %3
  %746 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %747 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %747, i32 0, i32 0
  %749 = load i32, i32* %748, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %762

751:                                              ; preds = %745
  %752 = load i32, i32* @DOT, align 4
  %753 = call i32 @T(i32 %752)
  %754 = load i32, i32* @MINS, align 4
  %755 = call i32 @T(i32 %754)
  %756 = load i32, i32* @MINS, align 4
  %757 = call i32 @T(i32 %756)
  %758 = load i32, i32* @SPACE, align 4
  %759 = call i32 @T(i32 %758)
  %760 = load i32, i32* @END, align 4
  %761 = call i32* (i32, i32, i32, ...) @MACRO(i32 %753, i32 %755, i32 %757, i32 %759, i32 %760)
  store i32* %761, i32** %4, align 8
  br label %1105

762:                                              ; preds = %745
  br label %1103

763:                                              ; preds = %3
  %764 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %765 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %764, i32 0, i32 0
  %766 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 4
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %782

769:                                              ; preds = %763
  %770 = load i32, i32* @MINS, align 4
  %771 = call i32 @T(i32 %770)
  %772 = load i32, i32* @DOT, align 4
  %773 = call i32 @T(i32 %772)
  %774 = load i32, i32* @DOT, align 4
  %775 = call i32 @T(i32 %774)
  %776 = load i32, i32* @MINS, align 4
  %777 = call i32 @T(i32 %776)
  %778 = load i32, i32* @SPACE, align 4
  %779 = call i32 @T(i32 %778)
  %780 = load i32, i32* @END, align 4
  %781 = call i32* (i32, i32, i32, ...) @MACRO(i32 %771, i32 %773, i32 %775, i32 %777, i32 %779, i32 %780)
  store i32* %781, i32** %4, align 8
  br label %1105

782:                                              ; preds = %763
  br label %1103

783:                                              ; preds = %3
  %784 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %785 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %784, i32 0, i32 0
  %786 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 4
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %806

789:                                              ; preds = %783
  %790 = load i32, i32* @mc_shift_on, align 4
  %791 = icmp eq i32 %790, 1
  br i1 %791, label %792, label %793

792:                                              ; preds = %789
  br label %793

793:                                              ; preds = %792, %789
  %794 = load i32, i32* @MINS, align 4
  %795 = call i32 @T(i32 %794)
  %796 = load i32, i32* @DOT, align 4
  %797 = call i32 @T(i32 %796)
  %798 = load i32, i32* @MINS, align 4
  %799 = call i32 @T(i32 %798)
  %800 = load i32, i32* @MINS, align 4
  %801 = call i32 @T(i32 %800)
  %802 = load i32, i32* @SPACE, align 4
  %803 = call i32 @T(i32 %802)
  %804 = load i32, i32* @END, align 4
  %805 = call i32* (i32, i32, i32, ...) @MACRO(i32 %795, i32 %797, i32 %799, i32 %801, i32 %803, i32 %804)
  store i32* %805, i32** %4, align 8
  br label %1105

806:                                              ; preds = %783
  br label %1103

807:                                              ; preds = %3
  %808 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %809 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %808, i32 0, i32 0
  %810 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %826

813:                                              ; preds = %807
  %814 = load i32, i32* @MINS, align 4
  %815 = call i32 @T(i32 %814)
  %816 = load i32, i32* @MINS, align 4
  %817 = call i32 @T(i32 %816)
  %818 = load i32, i32* @DOT, align 4
  %819 = call i32 @T(i32 %818)
  %820 = load i32, i32* @DOT, align 4
  %821 = call i32 @T(i32 %820)
  %822 = load i32, i32* @SPACE, align 4
  %823 = call i32 @T(i32 %822)
  %824 = load i32, i32* @END, align 4
  %825 = call i32* (i32, i32, i32, ...) @MACRO(i32 %815, i32 %817, i32 %819, i32 %821, i32 %823, i32 %824)
  store i32* %825, i32** %4, align 8
  br label %1105

826:                                              ; preds = %807
  br label %1103

827:                                              ; preds = %3
  %828 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %829 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %828, i32 0, i32 0
  %830 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 4
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %850

833:                                              ; preds = %827
  %834 = load i32, i32* @DOT, align 4
  %835 = call i32 @T(i32 %834)
  %836 = load i32, i32* @MINS, align 4
  %837 = call i32 @T(i32 %836)
  %838 = load i32, i32* @DOT, align 4
  %839 = call i32 @T(i32 %838)
  %840 = load i32, i32* @MINS, align 4
  %841 = call i32 @T(i32 %840)
  %842 = load i32, i32* @DOT, align 4
  %843 = call i32 @T(i32 %842)
  %844 = load i32, i32* @MINS, align 4
  %845 = call i32 @T(i32 %844)
  %846 = load i32, i32* @SPACE, align 4
  %847 = call i32 @T(i32 %846)
  %848 = load i32, i32* @END, align 4
  %849 = call i32* (i32, i32, i32, ...) @MACRO(i32 %835, i32 %837, i32 %839, i32 %841, i32 %843, i32 %845, i32 %847, i32 %848)
  store i32* %849, i32** %4, align 8
  br label %1105

850:                                              ; preds = %827
  br label %1103

851:                                              ; preds = %3
  %852 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %853 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %852, i32 0, i32 0
  %854 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %853, i32 0, i32 0
  %855 = load i32, i32* %854, align 4
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %874

857:                                              ; preds = %851
  %858 = load i32, i32* @MINS, align 4
  %859 = call i32 @T(i32 %858)
  %860 = load i32, i32* @MINS, align 4
  %861 = call i32 @T(i32 %860)
  %862 = load i32, i32* @DOT, align 4
  %863 = call i32 @T(i32 %862)
  %864 = load i32, i32* @DOT, align 4
  %865 = call i32 @T(i32 %864)
  %866 = load i32, i32* @MINS, align 4
  %867 = call i32 @T(i32 %866)
  %868 = load i32, i32* @MINS, align 4
  %869 = call i32 @T(i32 %868)
  %870 = load i32, i32* @SPACE, align 4
  %871 = call i32 @T(i32 %870)
  %872 = load i32, i32* @END, align 4
  %873 = call i32* (i32, i32, i32, ...) @MACRO(i32 %859, i32 %861, i32 %863, i32 %865, i32 %867, i32 %869, i32 %871, i32 %872)
  store i32* %873, i32** %4, align 8
  br label %1105

874:                                              ; preds = %851
  br label %1103

875:                                              ; preds = %3
  %876 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %877 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %876, i32 0, i32 0
  %878 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 4
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %881, label %918

881:                                              ; preds = %875
  %882 = load i32, i32* @mc_shift_on, align 4
  %883 = icmp eq i32 %882, 1
  br i1 %883, label %884, label %901

884:                                              ; preds = %881
  %885 = load i32, i32* @DOT, align 4
  %886 = call i32 @T(i32 %885)
  %887 = load i32, i32* @MINS, align 4
  %888 = call i32 @T(i32 %887)
  %889 = load i32, i32* @DOT, align 4
  %890 = call i32 @T(i32 %889)
  %891 = load i32, i32* @DOT, align 4
  %892 = call i32 @T(i32 %891)
  %893 = load i32, i32* @MINS, align 4
  %894 = call i32 @T(i32 %893)
  %895 = load i32, i32* @DOT, align 4
  %896 = call i32 @T(i32 %895)
  %897 = load i32, i32* @SPACE, align 4
  %898 = call i32 @T(i32 %897)
  %899 = load i32, i32* @END, align 4
  %900 = call i32* (i32, i32, i32, ...) @MACRO(i32 %886, i32 %888, i32 %890, i32 %892, i32 %894, i32 %896, i32 %898, i32 %899)
  store i32* %900, i32** %4, align 8
  br label %1105

901:                                              ; preds = %881
  %902 = load i32, i32* @DOT, align 4
  %903 = call i32 @T(i32 %902)
  %904 = load i32, i32* @MINS, align 4
  %905 = call i32 @T(i32 %904)
  %906 = load i32, i32* @MINS, align 4
  %907 = call i32 @T(i32 %906)
  %908 = load i32, i32* @MINS, align 4
  %909 = call i32 @T(i32 %908)
  %910 = load i32, i32* @MINS, align 4
  %911 = call i32 @T(i32 %910)
  %912 = load i32, i32* @DOT, align 4
  %913 = call i32 @T(i32 %912)
  %914 = load i32, i32* @SPACE, align 4
  %915 = call i32 @T(i32 %914)
  %916 = load i32, i32* @END, align 4
  %917 = call i32* (i32, i32, i32, ...) @MACRO(i32 %903, i32 %905, i32 %907, i32 %909, i32 %911, i32 %913, i32 %915, i32 %916)
  store i32* %917, i32** %4, align 8
  br label %1105

918:                                              ; preds = %875
  br label %1103

919:                                              ; preds = %3
  %920 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %921 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %920, i32 0, i32 0
  %922 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %921, i32 0, i32 0
  %923 = load i32, i32* %922, align 4
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %960

925:                                              ; preds = %919
  %926 = load i32, i32* @mc_shift_on, align 4
  %927 = icmp eq i32 %926, 1
  br i1 %927, label %928, label %945

928:                                              ; preds = %925
  %929 = load i32, i32* @DOT, align 4
  %930 = call i32 @T(i32 %929)
  %931 = load i32, i32* @DOT, align 4
  %932 = call i32 @T(i32 %931)
  %933 = load i32, i32* @MINS, align 4
  %934 = call i32 @T(i32 %933)
  %935 = load i32, i32* @MINS, align 4
  %936 = call i32 @T(i32 %935)
  %937 = load i32, i32* @DOT, align 4
  %938 = call i32 @T(i32 %937)
  %939 = load i32, i32* @DOT, align 4
  %940 = call i32 @T(i32 %939)
  %941 = load i32, i32* @SPACE, align 4
  %942 = call i32 @T(i32 %941)
  %943 = load i32, i32* @END, align 4
  %944 = call i32* (i32, i32, i32, ...) @MACRO(i32 %930, i32 %932, i32 %934, i32 %936, i32 %938, i32 %940, i32 %942, i32 %943)
  store i32* %944, i32** %4, align 8
  br label %1105

945:                                              ; preds = %925
  %946 = load i32, i32* @MINS, align 4
  %947 = call i32 @T(i32 %946)
  %948 = load i32, i32* @DOT, align 4
  %949 = call i32 @T(i32 %948)
  %950 = load i32, i32* @DOT, align 4
  %951 = call i32 @T(i32 %950)
  %952 = load i32, i32* @MINS, align 4
  %953 = call i32 @T(i32 %952)
  %954 = load i32, i32* @DOT, align 4
  %955 = call i32 @T(i32 %954)
  %956 = load i32, i32* @SPACE, align 4
  %957 = call i32 @T(i32 %956)
  %958 = load i32, i32* @END, align 4
  %959 = call i32* (i32, i32, i32, ...) @MACRO(i32 %947, i32 %949, i32 %951, i32 %953, i32 %955, i32 %957, i32 %958)
  store i32* %959, i32** %4, align 8
  br label %1105

960:                                              ; preds = %919
  br label %1103

961:                                              ; preds = %3
  %962 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %963 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %962, i32 0, i32 0
  %964 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %963, i32 0, i32 0
  %965 = load i32, i32* %964, align 4
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %967, label %1004

967:                                              ; preds = %961
  %968 = load i32, i32* @mc_shift_on, align 4
  %969 = icmp eq i32 %968, 1
  br i1 %969, label %970, label %987

970:                                              ; preds = %967
  %971 = load i32, i32* @MINS, align 4
  %972 = call i32 @T(i32 %971)
  %973 = load i32, i32* @MINS, align 4
  %974 = call i32 @T(i32 %973)
  %975 = load i32, i32* @MINS, align 4
  %976 = call i32 @T(i32 %975)
  %977 = load i32, i32* @DOT, align 4
  %978 = call i32 @T(i32 %977)
  %979 = load i32, i32* @DOT, align 4
  %980 = call i32 @T(i32 %979)
  %981 = load i32, i32* @DOT, align 4
  %982 = call i32 @T(i32 %981)
  %983 = load i32, i32* @SPACE, align 4
  %984 = call i32 @T(i32 %983)
  %985 = load i32, i32* @END, align 4
  %986 = call i32* (i32, i32, i32, ...) @MACRO(i32 %972, i32 %974, i32 %976, i32 %978, i32 %980, i32 %982, i32 %984, i32 %985)
  store i32* %986, i32** %4, align 8
  br label %1105

987:                                              ; preds = %967
  %988 = load i32, i32* @MINS, align 4
  %989 = call i32 @T(i32 %988)
  %990 = load i32, i32* @DOT, align 4
  %991 = call i32 @T(i32 %990)
  %992 = load i32, i32* @MINS, align 4
  %993 = call i32 @T(i32 %992)
  %994 = load i32, i32* @DOT, align 4
  %995 = call i32 @T(i32 %994)
  %996 = load i32, i32* @MINS, align 4
  %997 = call i32 @T(i32 %996)
  %998 = load i32, i32* @DOT, align 4
  %999 = call i32 @T(i32 %998)
  %1000 = load i32, i32* @SPACE, align 4
  %1001 = call i32 @T(i32 %1000)
  %1002 = load i32, i32* @END, align 4
  %1003 = call i32* (i32, i32, i32, ...) @MACRO(i32 %989, i32 %991, i32 %993, i32 %995, i32 %997, i32 %999, i32 %1001, i32 %1002)
  store i32* %1003, i32** %4, align 8
  br label %1105

1004:                                             ; preds = %961
  br label %1103

1005:                                             ; preds = %3
  %1006 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %1007 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1006, i32 0, i32 0
  %1008 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1007, i32 0, i32 0
  %1009 = load i32, i32* %1008, align 4
  %1010 = icmp ne i32 %1009, 0
  br i1 %1010, label %1011, label %1044

1011:                                             ; preds = %1005
  %1012 = load i32, i32* @mc_shift_on, align 4
  %1013 = icmp eq i32 %1012, 1
  br i1 %1013, label %1014, label %1029

1014:                                             ; preds = %1011
  %1015 = load i32, i32* @DOT, align 4
  %1016 = call i32 @T(i32 %1015)
  %1017 = load i32, i32* @MINS, align 4
  %1018 = call i32 @T(i32 %1017)
  %1019 = load i32, i32* @DOT, align 4
  %1020 = call i32 @T(i32 %1019)
  %1021 = load i32, i32* @MINS, align 4
  %1022 = call i32 @T(i32 %1021)
  %1023 = load i32, i32* @DOT, align 4
  %1024 = call i32 @T(i32 %1023)
  %1025 = load i32, i32* @SPACE, align 4
  %1026 = call i32 @T(i32 %1025)
  %1027 = load i32, i32* @END, align 4
  %1028 = call i32* (i32, i32, i32, ...) @MACRO(i32 %1016, i32 %1018, i32 %1020, i32 %1022, i32 %1024, i32 %1026, i32 %1027)
  store i32* %1028, i32** %4, align 8
  br label %1105

1029:                                             ; preds = %1011
  %1030 = load i32, i32* @MINS, align 4
  %1031 = call i32 @T(i32 %1030)
  %1032 = load i32, i32* @DOT, align 4
  %1033 = call i32 @T(i32 %1032)
  %1034 = load i32, i32* @DOT, align 4
  %1035 = call i32 @T(i32 %1034)
  %1036 = load i32, i32* @DOT, align 4
  %1037 = call i32 @T(i32 %1036)
  %1038 = load i32, i32* @MINS, align 4
  %1039 = call i32 @T(i32 %1038)
  %1040 = load i32, i32* @SPACE, align 4
  %1041 = call i32 @T(i32 %1040)
  %1042 = load i32, i32* @END, align 4
  %1043 = call i32* (i32, i32, i32, ...) @MACRO(i32 %1031, i32 %1033, i32 %1035, i32 %1037, i32 %1039, i32 %1041, i32 %1042)
  store i32* %1043, i32** %4, align 8
  br label %1105

1044:                                             ; preds = %1005
  br label %1103

1045:                                             ; preds = %3
  %1046 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %1047 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1046, i32 0, i32 0
  %1048 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1047, i32 0, i32 0
  %1049 = load i32, i32* %1048, align 4
  %1050 = icmp ne i32 %1049, 0
  br i1 %1050, label %1051, label %1088

1051:                                             ; preds = %1045
  %1052 = load i32, i32* @mc_shift_on, align 4
  %1053 = icmp eq i32 %1052, 1
  br i1 %1053, label %1054, label %1071

1054:                                             ; preds = %1051
  %1055 = load i32, i32* @DOT, align 4
  %1056 = call i32 @T(i32 %1055)
  %1057 = load i32, i32* @DOT, align 4
  %1058 = call i32 @T(i32 %1057)
  %1059 = load i32, i32* @MINS, align 4
  %1060 = call i32 @T(i32 %1059)
  %1061 = load i32, i32* @MINS, align 4
  %1062 = call i32 @T(i32 %1061)
  %1063 = load i32, i32* @DOT, align 4
  %1064 = call i32 @T(i32 %1063)
  %1065 = load i32, i32* @MINS, align 4
  %1066 = call i32 @T(i32 %1065)
  %1067 = load i32, i32* @SPACE, align 4
  %1068 = call i32 @T(i32 %1067)
  %1069 = load i32, i32* @END, align 4
  %1070 = call i32* (i32, i32, i32, ...) @MACRO(i32 %1056, i32 %1058, i32 %1060, i32 %1062, i32 %1064, i32 %1066, i32 %1068, i32 %1069)
  store i32* %1070, i32** %4, align 8
  br label %1105

1071:                                             ; preds = %1051
  %1072 = load i32, i32* @MINS, align 4
  %1073 = call i32 @T(i32 %1072)
  %1074 = load i32, i32* @DOT, align 4
  %1075 = call i32 @T(i32 %1074)
  %1076 = load i32, i32* @DOT, align 4
  %1077 = call i32 @T(i32 %1076)
  %1078 = load i32, i32* @DOT, align 4
  %1079 = call i32 @T(i32 %1078)
  %1080 = load i32, i32* @DOT, align 4
  %1081 = call i32 @T(i32 %1080)
  %1082 = load i32, i32* @MINS, align 4
  %1083 = call i32 @T(i32 %1082)
  %1084 = load i32, i32* @SPACE, align 4
  %1085 = call i32 @T(i32 %1084)
  %1086 = load i32, i32* @END, align 4
  %1087 = call i32* (i32, i32, i32, ...) @MACRO(i32 %1073, i32 %1075, i32 %1077, i32 %1079, i32 %1081, i32 %1083, i32 %1085, i32 %1086)
  store i32* %1087, i32** %4, align 8
  br label %1105

1088:                                             ; preds = %1045
  br label %1103

1089:                                             ; preds = %3
  %1090 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %1091 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1091, i32 0, i32 0
  %1093 = load i32, i32* %1092, align 4
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1095, label %1102

1095:                                             ; preds = %1089
  %1096 = load i32, i32* @BSLS, align 4
  %1097 = call i32 @T(i32 %1096)
  %1098 = load i32, i32* @SPACE, align 4
  %1099 = call i32 @T(i32 %1098)
  %1100 = load i32, i32* @END, align 4
  %1101 = call i32* (i32, i32, i32, ...) @MACRO(i32 %1097, i32 %1099, i32 %1100)
  store i32* %1101, i32** %4, align 8
  br label %1105

1102:                                             ; preds = %1089
  br label %1103

1103:                                             ; preds = %3, %1102, %1088, %1044, %1004, %960, %918, %874, %850, %826, %806, %782, %762, %744, %724, %706, %692, %674, %656, %636, %616, %598, %582, %566, %546, %528, %508, %492, %472, %454, %434, %420, %402, %382, %362, %346, %306, %284, %244, %222, %200, %156, %134, %92, %50
  %1104 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %1104, i32** %4, align 8
  br label %1105

1105:                                             ; preds = %1103, %1095, %1071, %1054, %1029, %1014, %987, %970, %945, %928, %901, %884, %857, %833, %813, %793, %769, %751, %731, %713, %699, %681, %663, %643, %623, %605, %589, %573, %553, %535, %515, %499, %479, %461, %441, %427, %409, %389, %369, %353, %331, %316, %291, %269, %254, %229, %207, %185, %166, %141, %119, %102, %77, %60, %35, %18
  %1106 = load i32*, i32** %4, align 8
  ret i32* %1106
}

declare dso_local i32* @MACRO(i32, i32, i32, ...) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
