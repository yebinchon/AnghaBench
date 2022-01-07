; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_gpt_cb8.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_gpt_cb8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@playing_note = common dso_local global i32 0, align 4
@voices = common dso_local global i32 0, align 4
@polyphony_rate = common dso_local global i32 0, align 4
@glissando = common dso_local global i64 0, align 8
@frequency_alt = common dso_local global i32 0, align 4
@frequencies = common dso_local global i32* null, align 8
@envelope_index = common dso_local global i32 0, align 4
@GET_CHANNEL_2_FREQ = common dso_local global i64 0, align 8
@voice_place = common dso_local global i32 0, align 4
@place = common dso_local global double 0.000000e+00, align 8
@frequency = common dso_local global i32 0, align 4
@GET_CHANNEL_1_FREQ = common dso_local global i64 0, align 8
@playing_notes = common dso_local global i32 0, align 4
@note_frequency = common dso_local global i32 0, align 4
@note_position = common dso_local global i32 0, align 4
@note_resting = common dso_local global i32 0, align 4
@note_length = common dso_local global i32 0, align 4
@current_note = common dso_local global i64 0, align 8
@notes_count = common dso_local global i64 0, align 8
@notes_repeat = common dso_local global i64 0, align 8
@notes_pointer = common dso_local global i32*** null, align 8
@note_tempo = common dso_local global i64 0, align 8
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vibrato_strength = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gpt_cb8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpt_cb8(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @playing_note, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %304

8:                                                ; preds = %1
  %9 = load i32, i32* @voices, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %303

11:                                               ; preds = %8
  store float 0.000000e+00, float* %4, align 4
  %12 = load i32, i32* @voices, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %143

14:                                               ; preds = %11
  %15 = load i32, i32* @polyphony_rate, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %119

17:                                               ; preds = %14
  %18 = load i64, i64* @glissando, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %109

20:                                               ; preds = %17
  %21 = load i32, i32* @frequency_alt, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i32, i32* @frequency_alt, align 4
  %25 = load i32*, i32** @frequencies, align 8
  %26 = load i32, i32* @voices, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %23
  %33 = load i32, i32* @frequency_alt, align 4
  %34 = load i32*, i32** @frequencies, align 8
  %35 = load i32, i32* @voices, align 4
  %36 = sub nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @frequencies, align 8
  %41 = load i32, i32* @voices, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 -440, %45
  %47 = sdiv i32 %46, 12
  %48 = sdiv i32 %47, 2
  %49 = call i32 @pow(i32 2, i32 %48)
  %50 = mul nsw i32 %39, %49
  %51 = icmp slt i32 %33, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %32
  %53 = load i32, i32* @frequency_alt, align 4
  %54 = load i32, i32* @frequency_alt, align 4
  %55 = sdiv i32 440, %54
  %56 = sdiv i32 %55, 12
  %57 = sdiv i32 %56, 2
  %58 = call i32 @pow(i32 2, i32 %57)
  %59 = mul nsw i32 %53, %58
  store i32 %59, i32* @frequency_alt, align 4
  br label %108

60:                                               ; preds = %32, %23, %20
  %61 = load i32, i32* @frequency_alt, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  %64 = load i32, i32* @frequency_alt, align 4
  %65 = load i32*, i32** @frequencies, align 8
  %66 = load i32, i32* @voices, align 4
  %67 = sub nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %64, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %63
  %73 = load i32, i32* @frequency_alt, align 4
  %74 = load i32*, i32** @frequencies, align 8
  %75 = load i32, i32* @voices, align 4
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @frequencies, align 8
  %81 = load i32, i32* @voices, align 4
  %82 = sub nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 440, %85
  %87 = sdiv i32 %86, 12
  %88 = sdiv i32 %87, 2
  %89 = call i32 @pow(i32 2, i32 %88)
  %90 = mul nsw i32 %79, %89
  %91 = icmp sgt i32 %73, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %72
  %93 = load i32, i32* @frequency_alt, align 4
  %94 = load i32, i32* @frequency_alt, align 4
  %95 = sdiv i32 -440, %94
  %96 = sdiv i32 %95, 12
  %97 = sdiv i32 %96, 2
  %98 = call i32 @pow(i32 2, i32 %97)
  %99 = mul nsw i32 %93, %98
  store i32 %99, i32* @frequency_alt, align 4
  br label %107

100:                                              ; preds = %72, %63, %60
  %101 = load i32*, i32** @frequencies, align 8
  %102 = load i32, i32* @voices, align 4
  %103 = sub nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* @frequency_alt, align 4
  br label %107

107:                                              ; preds = %100, %92
  br label %108

108:                                              ; preds = %107, %52
  br label %116

109:                                              ; preds = %17
  %110 = load i32*, i32** @frequencies, align 8
  %111 = load i32, i32* @voices, align 4
  %112 = sub nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* @frequency_alt, align 4
  br label %116

116:                                              ; preds = %109, %108
  %117 = load i32, i32* @frequency_alt, align 4
  %118 = sitofp i32 %117 to float
  store float %118, float* %4, align 4
  br label %119

119:                                              ; preds = %116, %14
  %120 = load i32, i32* @envelope_index, align 4
  %121 = icmp slt i32 %120, 65535
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @envelope_index, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @envelope_index, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load float, float* %4, align 4
  %127 = call float @voice_envelope(float %126)
  store float %127, float* %4, align 4
  %128 = load float, float* %4, align 4
  %129 = fpext float %128 to double
  %130 = fcmp olt double %129, 0x403E848000000000
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store float 0x403E851EC0000000, float* %4, align 4
  br label %132

132:                                              ; preds = %131, %125
  %133 = load i64, i64* @GET_CHANNEL_2_FREQ, align 8
  %134 = load float, float* %4, align 4
  %135 = fptosi float %134 to i64
  %136 = icmp ne i64 %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load float, float* %4, align 4
  %139 = call i32 @UPDATE_CHANNEL_2_FREQ(float %138)
  br label %142

140:                                              ; preds = %132
  %141 = call i32 (...) @RESTART_CHANNEL_2()
  br label %142

142:                                              ; preds = %140, %137
  br label %143

143:                                              ; preds = %142, %11
  %144 = load i32, i32* @polyphony_rate, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load i32, i32* @voices, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = load i32, i32* @voices, align 4
  %151 = load i32, i32* @voice_place, align 4
  %152 = srem i32 %151, %150
  store i32 %152, i32* @voice_place, align 4
  %153 = load double, double* @place, align 8
  %154 = fadd double %153, 1.000000e+00
  store double %154, double* @place, align 8
  %155 = load i32*, i32** @frequencies, align 8
  %156 = load i32, i32* @voice_place, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @polyphony_rate, align 4
  %161 = sdiv i32 %159, %160
  %162 = sitofp i32 %161 to double
  %163 = fcmp ogt double %153, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %149
  %165 = load i32, i32* @voice_place, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* @voices, align 4
  %168 = srem i32 %166, %167
  store i32 %168, i32* @voice_place, align 4
  store double 0.000000e+00, double* @place, align 8
  br label %169

169:                                              ; preds = %164, %149
  br label %170

170:                                              ; preds = %169, %146
  %171 = load i32*, i32** @frequencies, align 8
  %172 = load i32, i32* @voice_place, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sitofp i32 %175 to float
  store float %176, float* %3, align 4
  br label %279

177:                                              ; preds = %143
  %178 = load i64, i64* @glissando, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %269

180:                                              ; preds = %177
  %181 = load i32, i32* @frequency, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %220

183:                                              ; preds = %180
  %184 = load i32, i32* @frequency, align 4
  %185 = load i32*, i32** @frequencies, align 8
  %186 = load i32, i32* @voices, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %184, %190
  br i1 %191, label %192, label %220

192:                                              ; preds = %183
  %193 = load i32, i32* @frequency, align 4
  %194 = load i32*, i32** @frequencies, align 8
  %195 = load i32, i32* @voices, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** @frequencies, align 8
  %201 = load i32, i32* @voices, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 -440, %205
  %207 = sdiv i32 %206, 12
  %208 = sdiv i32 %207, 2
  %209 = call i32 @pow(i32 2, i32 %208)
  %210 = mul nsw i32 %199, %209
  %211 = icmp slt i32 %193, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %192
  %213 = load i32, i32* @frequency, align 4
  %214 = load i32, i32* @frequency, align 4
  %215 = sdiv i32 440, %214
  %216 = sdiv i32 %215, 12
  %217 = sdiv i32 %216, 2
  %218 = call i32 @pow(i32 2, i32 %217)
  %219 = mul nsw i32 %213, %218
  store i32 %219, i32* @frequency, align 4
  br label %268

220:                                              ; preds = %192, %183, %180
  %221 = load i32, i32* @frequency, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %260

223:                                              ; preds = %220
  %224 = load i32, i32* @frequency, align 4
  %225 = load i32*, i32** @frequencies, align 8
  %226 = load i32, i32* @voices, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %224, %230
  br i1 %231, label %232, label %260

232:                                              ; preds = %223
  %233 = load i32, i32* @frequency, align 4
  %234 = load i32*, i32** @frequencies, align 8
  %235 = load i32, i32* @voices, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** @frequencies, align 8
  %241 = load i32, i32* @voices, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sdiv i32 440, %245
  %247 = sdiv i32 %246, 12
  %248 = sdiv i32 %247, 2
  %249 = call i32 @pow(i32 2, i32 %248)
  %250 = mul nsw i32 %239, %249
  %251 = icmp sgt i32 %233, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %232
  %253 = load i32, i32* @frequency, align 4
  %254 = load i32, i32* @frequency, align 4
  %255 = sdiv i32 -440, %254
  %256 = sdiv i32 %255, 12
  %257 = sdiv i32 %256, 2
  %258 = call i32 @pow(i32 2, i32 %257)
  %259 = mul nsw i32 %253, %258
  store i32 %259, i32* @frequency, align 4
  br label %267

260:                                              ; preds = %232, %223, %220
  %261 = load i32*, i32** @frequencies, align 8
  %262 = load i32, i32* @voices, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* @frequency, align 4
  br label %267

267:                                              ; preds = %260, %252
  br label %268

268:                                              ; preds = %267, %212
  br label %276

269:                                              ; preds = %177
  %270 = load i32*, i32** @frequencies, align 8
  %271 = load i32, i32* @voices, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* @frequency, align 4
  br label %276

276:                                              ; preds = %269, %268
  %277 = load i32, i32* @frequency, align 4
  %278 = sitofp i32 %277 to float
  store float %278, float* %3, align 4
  br label %279

279:                                              ; preds = %276, %170
  %280 = load i32, i32* @envelope_index, align 4
  %281 = icmp slt i32 %280, 65535
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* @envelope_index, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* @envelope_index, align 4
  br label %285

285:                                              ; preds = %282, %279
  %286 = load float, float* %3, align 4
  %287 = call float @voice_envelope(float %286)
  store float %287, float* %3, align 4
  %288 = load float, float* %3, align 4
  %289 = fpext float %288 to double
  %290 = fcmp olt double %289, 0x403E848000000000
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  store float 0x403E851EC0000000, float* %3, align 4
  br label %292

292:                                              ; preds = %291, %285
  %293 = load i64, i64* @GET_CHANNEL_1_FREQ, align 8
  %294 = load float, float* %3, align 4
  %295 = fptosi float %294 to i64
  %296 = icmp ne i64 %293, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load float, float* %3, align 4
  %299 = call i32 @UPDATE_CHANNEL_1_FREQ(float %298)
  br label %302

300:                                              ; preds = %292
  %301 = call i32 (...) @RESTART_CHANNEL_1()
  br label %302

302:                                              ; preds = %300, %297
  br label %303

303:                                              ; preds = %302, %8
  br label %304

304:                                              ; preds = %303, %1
  %305 = load i32, i32* @playing_notes, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %433

307:                                              ; preds = %304
  %308 = load i32, i32* @note_frequency, align 4
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %331

310:                                              ; preds = %307
  %311 = load i32, i32* @note_frequency, align 4
  %312 = sitofp i32 %311 to float
  store float %312, float* %3, align 4
  %313 = load i32, i32* @envelope_index, align 4
  %314 = icmp slt i32 %313, 65535
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32, i32* @envelope_index, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* @envelope_index, align 4
  br label %318

318:                                              ; preds = %315, %310
  %319 = load float, float* %3, align 4
  %320 = call float @voice_envelope(float %319)
  store float %320, float* %3, align 4
  %321 = load i64, i64* @GET_CHANNEL_1_FREQ, align 8
  %322 = load float, float* %3, align 4
  %323 = fptosi float %322 to i64
  %324 = icmp ne i64 %321, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  %326 = load float, float* %3, align 4
  %327 = call i32 @UPDATE_CHANNEL_1_FREQ(float %326)
  %328 = load float, float* %3, align 4
  %329 = call i32 @UPDATE_CHANNEL_2_FREQ(float %328)
  br label %330

330:                                              ; preds = %325, %318
  br label %332

331:                                              ; preds = %307
  br label %332

332:                                              ; preds = %331, %330
  %333 = load i32, i32* @note_position, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* @note_position, align 4
  store i32 0, i32* %5, align 4
  %335 = load i64, i64* @GET_CHANNEL_1_FREQ, align 8
  %336 = icmp sgt i64 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %332
  %338 = load i32, i32* @note_resting, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* @note_position, align 4
  %342 = load i32, i32* @note_length, align 4
  %343 = mul nsw i32 %342, 8
  %344 = sub nsw i32 %343, 1
  %345 = icmp sge i32 %341, %344
  %346 = zext i1 %345 to i32
  store i32 %346, i32* %5, align 4
  br label %353

347:                                              ; preds = %337
  %348 = load i32, i32* @note_position, align 4
  %349 = load i32, i32* @note_length, align 4
  %350 = mul nsw i32 %349, 8
  %351 = icmp sge i32 %348, %350
  %352 = zext i1 %351 to i32
  store i32 %352, i32* %5, align 4
  br label %353

353:                                              ; preds = %347, %340
  br label %360

354:                                              ; preds = %332
  %355 = load i32, i32* @note_position, align 4
  %356 = load i32, i32* @note_length, align 4
  %357 = mul nsw i32 %356, 8
  %358 = icmp sge i32 %355, %357
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %5, align 4
  br label %360

360:                                              ; preds = %354, %353
  %361 = load i32, i32* %5, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %432

363:                                              ; preds = %360
  %364 = load i64, i64* @current_note, align 8
  %365 = add i64 %364, 1
  store i64 %365, i64* @current_note, align 8
  %366 = load i64, i64* @current_note, align 8
  %367 = load i64, i64* @notes_count, align 8
  %368 = icmp uge i64 %366, %367
  br i1 %368, label %369, label %377

369:                                              ; preds = %363
  %370 = load i64, i64* @notes_repeat, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  store i64 0, i64* @current_note, align 8
  br label %376

373:                                              ; preds = %369
  %374 = call i32 (...) @STOP_CHANNEL_1()
  %375 = call i32 (...) @STOP_CHANNEL_2()
  store i32 0, i32* @playing_notes, align 4
  br label %437

376:                                              ; preds = %372
  br label %377

377:                                              ; preds = %376, %363
  %378 = load i32, i32* @note_resting, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %409, label %380

380:                                              ; preds = %377
  store i32 1, i32* @note_resting, align 4
  %381 = load i64, i64* @current_note, align 8
  %382 = add i64 %381, -1
  store i64 %382, i64* @current_note, align 8
  %383 = load i32***, i32**** @notes_pointer, align 8
  %384 = load i32**, i32*** %383, align 8
  %385 = load i64, i64* @current_note, align 8
  %386 = getelementptr inbounds i32*, i32** %384, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32***, i32**** @notes_pointer, align 8
  %391 = load i32**, i32*** %390, align 8
  %392 = load i64, i64* @current_note, align 8
  %393 = add i64 %392, 1
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %389, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %380
  store i32 0, i32* @note_frequency, align 4
  store i32 1, i32* @note_length, align 4
  br label %408

400:                                              ; preds = %380
  %401 = load i32***, i32**** @notes_pointer, align 8
  %402 = load i32**, i32*** %401, align 8
  %403 = load i64, i64* @current_note, align 8
  %404 = getelementptr inbounds i32*, i32** %402, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* @note_frequency, align 4
  store i32 1, i32* @note_length, align 4
  br label %408

408:                                              ; preds = %400, %399
  br label %431

409:                                              ; preds = %377
  store i32 0, i32* @note_resting, align 4
  store i32 0, i32* @envelope_index, align 4
  %410 = load i32***, i32**** @notes_pointer, align 8
  %411 = load i32**, i32*** %410, align 8
  %412 = load i64, i64* @current_note, align 8
  %413 = getelementptr inbounds i32*, i32** %411, i64 %412
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  %416 = load i32, i32* %415, align 4
  store i32 %416, i32* @note_frequency, align 4
  %417 = load i32***, i32**** @notes_pointer, align 8
  %418 = load i32**, i32*** %417, align 8
  %419 = load i64, i64* @current_note, align 8
  %420 = getelementptr inbounds i32*, i32** %418, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  %423 = load i32, i32* %422, align 4
  %424 = sdiv i32 %423, 4
  %425 = sitofp i32 %424 to float
  %426 = load i64, i64* @note_tempo, align 8
  %427 = sitofp i64 %426 to float
  %428 = fdiv float %427, 1.000000e+02
  %429 = fmul float %425, %428
  %430 = fptosi float %429 to i32
  store i32 %430, i32* @note_length, align 4
  br label %431

431:                                              ; preds = %409, %408
  store i32 0, i32* @note_position, align 4
  br label %432

432:                                              ; preds = %431, %360
  br label %433

433:                                              ; preds = %432, %304
  %434 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %433
  store i32 0, i32* @playing_notes, align 4
  store i32 0, i32* @playing_note, align 4
  br label %437

437:                                              ; preds = %373, %436, %433
  ret void
}

declare dso_local i32 @pow(i32, i32) #1

declare dso_local float @voice_envelope(float) #1

declare dso_local i32 @UPDATE_CHANNEL_2_FREQ(float) #1

declare dso_local i32 @RESTART_CHANNEL_2(...) #1

declare dso_local i32 @UPDATE_CHANNEL_1_FREQ(float) #1

declare dso_local i32 @RESTART_CHANNEL_1(...) #1

declare dso_local i32 @STOP_CHANNEL_1(...) #1

declare dso_local i32 @STOP_CHANNEL_2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
